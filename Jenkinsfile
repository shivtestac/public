pipeline {
    agent any
    stages {
       
        stage('Git Pull') {
            steps {
                git branch: 'main', credentialsId: '898a5c95-c51d-4b73-bd31-0e20b1572558', url: 'https://github.com/shivtestac/public.git'
            }
        }
    }
}     
