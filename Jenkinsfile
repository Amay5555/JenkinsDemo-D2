pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Amay5555/JenkinsDemo-D2']])
            }
        }
        stage('Build'){
            steps{
                script{
                    sh 'docker build -t reactapp .'
                }
                
            }
        }
        stage('Run Tests') {
            steps {
                
                    sh 'docker run --rm reactapp npm test -- --watchAll=false'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker stop reactapp || true'
                    sh 'docker rm reactapp || true'
                    sh 'docker run -d --name reactapp -p 3000:3000 reactapp'
                }
            }
        }
    }
}
