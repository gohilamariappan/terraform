#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
         sh 'terraform init' && 'terraform plan -out=plan ' && 'terraform apply -var aws_access_key_id='$Acceskeyid' ,aws_secret_access_key='$secretkey' -auto-approve plan'

        }
}
