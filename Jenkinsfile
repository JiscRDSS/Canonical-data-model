pipeline {

	agent {
	    dockerfile {
	        filename 'Dockerfile' args '-v /.cache/ -v /.bower/ -v /.config/configstore/'
        }
    }
	triggers {
	    cron('59 23 * * *')
    }
	stages {
		stage('fetch code') {
			steps {
				echo "Cleaning up"
				deleteDir()
				echo "Cloning source"
				git credentialsId: 'git', url: 'git@github.com:JiscRDSS/rdss-canonical-data-model.git'
			}
		}
		stage('build') {
			steps {
                dir('~/build/JiscRDSS/rdss-canonical-data-model') {
                    sh 'mdgen render -m Data-Model/Diagrams/alpha-model/logical-model.mdj -t blank-template.ejs -o "missing/logical-model/<%=element.name%>.txt" -s @UMLModel'
                }
			}
		}
	}
}