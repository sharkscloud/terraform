pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }

    stages{
        stage('Create S3 bucket with ansible'){
            steps{
                sh "ansible-playbook s3backend.yml"
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
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}