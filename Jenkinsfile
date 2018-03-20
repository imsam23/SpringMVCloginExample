#!groovy

pipeline {
    agent none
    stages {
        stage('Build') { 
                   agent {
                     docker {
                         image 'maven:3.5.3' 
                            }
                         }
                 steps {
                     sh 'mvn -B -DskipTests clean install package' 
                       }
            }
        stage('Docker-Build') {
            agent any
            steps {
                sh 'docker build -t tomcat:v1 .'
                  }
          }
        stage('Docker-Push') {
            agent any
            steps {
                withCredentials([usernamePassword(credentialsId: '72274943-50a0-4f1f-83e9-b2bb96708a7d', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                sh 'docker push tomcat:v1'
        }
      }
    }
}
