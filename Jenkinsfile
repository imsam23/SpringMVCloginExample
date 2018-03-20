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
    }
}
