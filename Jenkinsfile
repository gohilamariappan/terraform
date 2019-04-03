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
        }
}
