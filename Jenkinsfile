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
         sh 'terraform plan'
         sh 'terraform apply'       
        }
}
