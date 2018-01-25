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
