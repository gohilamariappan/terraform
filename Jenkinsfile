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
    string(credentialsId: 'IAM_ACCESS_KEY', Variable: 'Accesskeyid'),
    string(credentialsId: 'IAM_SECRET_KEY' , Variable: 'secretkey')
]){
         echo "$Accesskeyid"

}
        }
}

