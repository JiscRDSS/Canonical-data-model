#!/bin/bash
set -e
set -x

echo "Deleting any previous generated files"
rm -rf markdown
rm -rf export_pdf
echo "Deleted"

echo "Creating directories"
mkdir markdown
mkdir export_pdf
echo "Created"

echo "Generating logical model markdown and PDF"
mdgen render -m Data-Model/logical-model.mdj -t main-template.ejs -o "markdown/logical-model/<%=element.name%>.md" -s @UMLClass
mdgen render -m Data-Model/logical-model.mdj -t blank-template.ejs -o "missing/logical-model/<%=element.name%>.txt" -s @UMLModel
mdgen pdf -m Data-Model/logical-model.mdj -o export_pdf/logical-model.pdf -s @Diagram -z A4 -l landscape -n yes
echo "Generated"

echo "Generating concept model markdown and PDF"
mdgen render -m Data-Model/Background/concept-model.mdj -t main-template.ejs -o "markdown/concept-model/<%=element.name%>.md" -s @UMLClass
mdgen pdf -m Data-Model/Background/concept-model.mdj -o export_pdf/concept-model.pdf -s @Diagram -z A4 -l landscape -n yes
echo "Generated"

echo "Running pre-commit to make sure any extra lines are removed"
# pre-commit changes files, but also returns an error code
set +e
pre-commit run --all-files --verbose
set -e

echo "Decrypting GitHub deploy key"
ENCRYPTED_KEY="${encrypted_82dc70be18ec_key}"
ENCRYPTED_IV="${encrypted_82dc70be18ec_iv}"
openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in github_deploy_key.enc -out /tmp/github_deploy_key -d
chmod 600 /tmp/github_deploy_key
echo "Decrypted"

echo "Telling git to use the GitHub deploy key"
export GIT_SSH_COMMAND="ssh -i /tmp/github_deploy_key"
git remote set-url origin git@github.com:$TRAVIS_REPO_SLUG.git
echo "GIT_SSH_COMMAND: $GIT_SSH_COMMAND"
echo "Remote URL: $(git config remote.origin.url)"

echo "TRAVIS_BRANCH: $TRAVIS_BRANCH"
echo "TRAVIS_PULL_REQUEST: $TRAVIS_PULL_REQUEST"
echo "TRAVIS_COMMIT_MESSAGE: $TRAVIS_COMMIT_MESSAGE"
if [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ] && [[ "$TRAVIS_COMMIT_MESSAGE" != *"[skip generated files push]"* ]]
then
  echo "On master and docs out of date: will push to GitHub (will not be using --dry-run)"
  DRY_RUN_IF_NOT_MASTER=""
else
  echo "Not on master or docs in date: will not push to GitHub (will be using --dry-run)"
  DRY_RUN_IF_NOT_MASTER="--dry-run"
fi

git add -A .
git status
git commit -m "Generation of Markdown and Diagram pdf files upon update. [skip generated files push]"
git push $DRY_RUN_IF_NOT_MASTER origin HEAD:master
