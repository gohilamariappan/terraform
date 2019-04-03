#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')

        {
         sh 'sudo terraform init $JENKINS_PATH/workspace/ee'
        }
}
