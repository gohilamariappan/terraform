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
    string(credentialsId: 'IAM_ACCESS_KEY', Variable: 'Access'),
    string(credentialsId: 'IAM_SECRET_KEY' , Variable: 'Secret')
]){
         set +e
         sh 'terraform init' 
			
	sh'terraform plan -var aws_access_key_id='${Access}' -var aws_secret_access_key='${Secret}' -out=plan' 
	sh 'terraform apply  -var aws_access_key_id='${Access}' -var aws_secret_access_key='${Secret}' -auto-approve plan'
}
        }
}

