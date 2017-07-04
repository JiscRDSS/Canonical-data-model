pipeline {

	agent {
	    docker 'node:8.1'
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
			    sh 'apt-get install libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential g++'
				sh 'npm install'
				sh 'npm install -g canvas'
				sh 'npm install -g mdgen'
			}
		}
		stage('run') {
		    steps {
                dir('~/build/JiscRDSS/rdss-canonical-data-model') {
                    sh 'mdgen render -m Data-Model/Diagrams/alpha-model/logical-model.mdj -t blank-template.ejs -o "missing/logical-model/<%=element.name%>.txt" -s @UMLModel'
                }
			}
		}
	}
}