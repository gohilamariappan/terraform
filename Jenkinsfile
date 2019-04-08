#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
		withCredentials([
    string(credentialsId: 'IAM_ACCESS_KEY', Variable: 'Accesskeyid'),
    string(credentialsId: 'IAM_SECRET_KEY' , Variable: 'secretkey')
]){
         set +e
         sh 'terraform init' 
			
	//sh'terraform plan -var aws_access_key_id='${Access}' -var aws_secret_access_key='${Secret}' -out=plan' 
		//sh 'terraform apply  -var aws_access_key_id='${Access}' -var aws_secret_access_key='${Secret}' -auto-approve plan'
	sh label: '', script: '''	terraform plan -var aws_access_key_id=\'${Accesskeyid}\' -var aws_secret_access_key=\'${secretkey}\' -out=plan 
	'''
	sh label: '', script: '''	terraform apply  -var aws_access_key_id=\'${Accesskeyid}\' -var aws_secret_access_key=\'${secretkey}\' -auto-approve plan
	'''

}
        }
}

