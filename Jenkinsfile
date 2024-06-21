pipeline {
    agent {
        label 'slave2'
    }
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
                    agent {
                        label 'slave2'
                    }
                    steps {
                        sh '''
                            echo "This is Test stage 1"
                            sleep 5
                        '''
                    }
                }
                stage('Test2') {
                    agent {
                        label 'slave2'
                    }
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
                    echo "This is Deploy Stage"
                    sleep 5
                '''
            }
        }
    }
}
