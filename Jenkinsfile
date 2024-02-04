pipeline {
    agent any

    parameters {
        string(name: 'TF_VAR_FILE', defaultValue: 'path/to/your/variable/file.tfvars', description: 'Path to Terraform variable file')
        string(name: 'GIT_REPO', defaultValue: 'https://github.com/amol-bhilegaonkar/Terraform-Automation.git', description: 'Git repository URL')
    }

    stages {
        stage('Print Statement') {
            steps {
                script {
                    echo 'I am the best'
                }
            }
        }
        stage('Git clone') {
            steps {
                script {
                    sh "git clone ${params.GIT_REPO}"
                }
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    dir("your-repo-directory") {
                        // Change to the cloned repository directory
                        sh "terraform init"
                    }
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    dir("your-repo-directory") {
                        // Change to the cloned repository directory
                        sh "terraform plan -var-file=${params.TF_VAR_FILE} -out=tfplan"
                    }
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    dir("your-repo-directory") {
                        // Change to the cloned repository directory
                        sh "terraform apply -var-file=${params.TF_VAR_FILE} tfplan"
                    }
                }
            }
        }
        stage('Terraform Version') {
            steps {
                script {
                    sh "terraform -v"
                }
            }
        }
    }
}
