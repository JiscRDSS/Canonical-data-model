#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

# Save some useful information
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

# Create a new empty branch if gh-pages doesn't exist yet (should only happen on first deply)
git clone $REPO out
cd out
git checkout $TRAVIS_BRANCH || git checkout --orphan $TRAVIS_BRANCH


# Clean out existing produced Markdown
rm -rf markdown
rm -rf export_pdf
mkdir markdown
mkdir export_pdf

# Run our compile script
mdgen render -m Data-Model/Diagrams/alpha-model/logical-model.mdj -t main-template.ejs -o "markdown/logical-model/<%=element.name%>.md" -s @UMLClass
mdgen pdf -m Data-Model/Diagrams/alpha-model/logical-model.mdj -o export_pdf/logical-model.pdf -s @Diagram -z A4 -l landscape -n yes
mdgen render -m Data-Model/Diagrams/Concept-model/concept-model.mdj -t main-template.ejs -o "markdown/concept-model/<%=element.name%>.md" -s @UMLClass
mdgen pdf -m Data-Model/Diagrams/Concept-model/concept-model.mdj -o export_pdf/concept-model.pdf -s @Diagram -z A4 -l landscape -n yes

# Now let's go have some fun with the cloned repo
git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

# Commit the "changes", i.e. the new version.
# The delta will show diffs between new and old versions.
git add -A .
git commit -m "Generation of Markdown and Diagram pdf files upon build."

# Get the deploy key by using Travis's stored variables to decrypt deploy_key.enc
ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in ../github_deploy_key.enc -out ../deploy_key -d
chmod 600 ../deploy_key
eval `ssh-agent -s`
ssh-add deploy_key

# Now that we're all set up, we can push.
git push $SSH_REPO $TRAVIS_BRANCH