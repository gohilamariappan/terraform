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
    Secrettext(credentialsId: IAM_ACCESS_KEY, Variable: 'Access'),
    Secrettext(credentialsId: IAM_SECRET_KEY , Variable: 'Secret')
]){
         set +e
         sh 'terraform init' &&'terraform plan -out=plan' && 'terraform apply  -var aws_access_key_id='${Access}' -var aws_secret_access_key='${Secret}' -auto-approve plan'
}
        }
}

