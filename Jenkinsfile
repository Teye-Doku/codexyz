pipeline{
    agent any

    stages {
        stage('Checkout  Stage') {
            steps {
                echo 'This is the docker stage'
            }
        }
        stage(' Testing Stage') {
            steps {
                echo 'this is the testing stage $BUILD_NUMBER'
            }
        }
        stage('Build Image Stage'){
            steps {
                sh 'ls'
            }
        }
    }
}