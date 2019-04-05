#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
         sh 'terraform init'
         sh'terraform plan -out=plan'
         sh 'terraform apply -aws_access_key_id=$Acceskeyid -aws_secret_access_key=$secretkey plan'

        }
}
