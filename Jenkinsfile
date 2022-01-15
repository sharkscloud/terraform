def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'sharkscreds']]

pipeline {
    agent any 
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        }

    stages{
        stage("Create S3 bucket"){
            steps{
                script{
                    createS3Bucket('sharks-test-terraform12345')
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

def createS3Bucket(bucketName){
    sh returnStatus: true, script: 'aws s3 mb ${bucketName} --region=us-east2'
}