pipeline {
	agent any 	
	stages {
		stage('Checkout') {
			steps {
				echo 'Checkout completed in feature1'
			}
		}
		stage('Static-test') {
			steps {
				echo 'Running static tests on code in feature1'
			}
		}
		stage('Build') {
			steps {
				sh 'echo "Building the code in feature1"'
			}
		}
		stage('Deploy') {
		    when {
                branch 'feature1'
            }
			steps {
				echo 'Deploying into environment in feature1'
			}
		}
	}
}
