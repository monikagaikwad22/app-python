pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/monikagaikwad22/app-python.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t monikagaikwad22/app-python:latest .'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -d -p 5000:5000 monikagaikwad22/app-python:latest'
            }
        }
    }
}
