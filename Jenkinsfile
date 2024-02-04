def isDirectoryWithName(dirName) {
    // List the contents of the current directory
    def contents = sh(script: 'ls', returnStdout: true).trim()

    // Check if the directory exists in the list
    return contents.split('\n').contains(dirName)
}

def fileExists(filePath) {
    def file = new File(filePath)
    file.exists()
}

pipeline {
    agent any

    parameters {
        string(name: 'TF_VAR_FILE', defaultValue: 'dev.tfvars', description: 'Path to Terraform variable file')
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
                    def repoDir = "Terraform-Automation"

                    // Check if the directory exists
                    if (isDirectoryWithName(repoDir)) {
                        echo "Directory '$repoDir' exists. Performing git pull."
                        sh "cd $repoDir && git pull origin main"
                    } else {
                        echo "Directory '$repoDir' does not exist. Performing git clone."
                        sh "git clone ${params.GIT_REPO} $repoDir"
                    }
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
