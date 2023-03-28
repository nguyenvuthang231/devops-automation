pipeline {
    agent any
    tools{
        maven 'maven_3_5_0'
    }
    stages{
        stage('Build Maven'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t devops .'
                }
            }
        }
    
        stage('Push image admin to Hub'){
            steps{
                script{
                   sh 'docker login -u thangn231 -p dckr_pat_iBMcx-OShdybtCbizeda3uQ4ktE '
                   sh 'docker tag devops thangn231/devops:latest'
                   sh 'docker push thangn231/devops:latest'
                }
            } 
        } 
    }
    post {
        always {
          sh 'docker logout'
        }
    }
}
