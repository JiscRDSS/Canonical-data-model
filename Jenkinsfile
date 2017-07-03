pipeline {

	agent { docker 'node:8.1' }
	triggers { cron('59 23 * * *') }
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
				sh 'npm install'
				sh 'npm install -g canvas'
				sh 'npm install -g mdgen'
			}
		}
		stage('run') {
			dir('') {
			    sh './checkForMissingDoc.sh'
			}
		}
	}
}