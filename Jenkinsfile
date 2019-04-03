#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  dir ('ee') 
        {
         sh ('sudo terraform init')
        }
}
