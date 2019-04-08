#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy')
  
        {
		withCredentials([
    string(credentialsId: 'IAM_ACCESS_KEY', Variable: 'AWS_ACCESS_KEY_ID'),
    string(credentialsId: 'IAM_SECRET_KEY' , Variable: 'AWS_SECRET_ACCESS_KEY')
]){
    sh 'echo $AWS_ACCESS_KEY_ID'
    sh 'echo $AWS_SECRET_ACCESS_KEY'

}
        }
}

