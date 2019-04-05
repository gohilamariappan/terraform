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
         sh 'terraform init' &&'terraform plan -out=plan' && 'terraform apply -var aws_access_key_id='$Acceskeyid' -var aws_secret_access_key='$secretkey' -auto-approve plan'

        }
}
