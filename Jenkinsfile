#!groovy

node('master')
{
stage('checkout')

        {
         git checkout
        }
stage('Deploy')

        {
        sh "terraform init"
        }
}
