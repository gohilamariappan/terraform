#!groovy

node('master')
{
stage('checkout')

        {
          //code checkout from git
	  checkout scm
        }
 stage('Deploy')
  
        {withCredentials([string(credentialsId: 'IAM_ACCESS_KEY', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'IAM_SECRET_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
    
	sh'set +x'
      sh label: '', script: '''	terraform plan  -var aws_access_key_id=\'${AWS_ACCESS_KEY_ID}\' -var aws_secret_access_key=\'${AWS_SECRET_ACCESS_KEY}\' -input=false -out=plan
	'''
	sh label: '', script: '''	terraform apply  -var aws_access_key_id=\'${AWS_ACCESS_KEY_ID}\' -var aws_secret_access_key=\'${AWS_SECRET_ACCESS_KEY}\' -auto-approve plan
	'''

}
        }
}

