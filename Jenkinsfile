pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }

    
    stages{
        stage("AWS credentials"){
            steps{
                withCredentials([usernamePassword(accessKeyVariable:'AWS_SECRET_KEY_ID', secretKeyVariable: 'AWS_SECRET_KEY_SECRET')]) {
                }

            }
        }
        stage('Terraform init'){
            steps{
                sh "terraform init"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform1.2', type: 'terraform'
    return tfHome
}