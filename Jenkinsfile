pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                     echo "This is build stage"
                '''
            }
        }
        stage('Parallel Test') {
            parallel {
                stage('Test1') {
                    agent any
                    steps {
                        sh '''
                            echo "This is Test stage 1"
                            sleep 5
                        '''
                    }
                }
                stage('Test2') {
                    agent any
                    steps {
                        sh '''
                            echo "This is Test stage 2"
                            sleep 5
                        '''
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    echo "This is deploy stage"
                    sleep 5
                '''
            }
        }
    }
}
