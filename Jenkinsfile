#!groovy

pipeline {
    agent {
        docker {
            image 'maven:3.5.3-jdk-7-alpine' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}
