#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
         set +e
         sh 'terraform init' &&'terraform plan -out=plan' && 'terraform apply  -var aws_access_key_id='${IAM_ACCESS_KEY}' -var aws_secret_access_key='${IAM_SECRET_KEY}' -auto-approve plan'

        }
}
