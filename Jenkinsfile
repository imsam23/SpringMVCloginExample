#!groovy

pipeline {
    agent {
        docker {
            image 'maven:3.5.3' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean install package' 
            }
        }
    }
}