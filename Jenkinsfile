pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    mvn clean install
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
                        '''
                    }
                }
                stage('Test2') {
                    agent any
                    steps {
                        sh '''
                            echo "This is Test stage 2"
                        '''
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                 sh '''
                            echo "This is deploy stage 2"
                        '''
            }
            }
        }
    }
}
