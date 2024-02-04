pipeline {
    agent any

    stages {
        stage('Print Statement') {
            steps {
                script {
                    echo 'I am the best'
                }
            }
        }
        stage('terraform version') {
            steps {
                script {
                    sh "terraform -v"
                }
            }
        }
    }
}
