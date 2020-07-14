pipeline {
    agent any
    stages {
        stage('Polling code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'cc6557ce-a67b-4357-9bc4-c013d41766eb', url: 'https://github.com/robinjit1995/platform-enablement-technical-test.git/']]])
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') { 
            steps {
                sh 'mvn test' 
            }
        }
        stage('Deploy'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'a301d8bf-9dc9-4bb1-a940-3f5907499b26', path: '', url: 'http://3.25.99.241:8090/')], contextPath: 'index', onFailure: false, war: '**/*.war'
            }
        }
    }
}
