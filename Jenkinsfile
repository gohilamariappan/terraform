#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
         sh 'terraform init -input=false '
         sh'terraform plan -out=plan -input=false'
         sh 'terraform apply -var aws_access_key_id='$Acceskeyid' ,aws_secret_access_key='$secretkey' -input=false plan'

        }
}
