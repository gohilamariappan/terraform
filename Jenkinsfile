#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
         sh 'terraform init -var=$Acceskeyid -var=$secretkey'
         sh 'terraform plan -out=plan'
         sh 'terraform apply plan'       
        }
}
