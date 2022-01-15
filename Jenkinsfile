//def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'sharkscreds']]

pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }

    stages{
         stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'sharkscreds', region: 'us-east-2') {
                    }
                }
            }
            stage('Create S3 bucket with ansible'){
                steps{
                    sh "ansible-playbook s3backend.yml"
                }
            }
            stage('Terraform init'){
                steps{
                    sh "terraform init -backend-config=access_key=AKIAXAORCYL6KVBPTKH6 -backend-config=secret_key=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"
                }
            }
        }
    }

def getTerraformPath(){
    def tfHome = tool name: 'terraform1.2', type: 'terraform'
    return tfHome
}

