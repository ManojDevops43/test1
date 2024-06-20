pipeline
{
    agent {
        label 'slave'
    }

    stages {
        stage('Build') {
            steps {
                sh '''
                    echo "This is a build stage"
                    sleep 5
                '''
            }
        }

        stage('Parallel Test') {
            parallel{
                stage('Test1') {
                    agent{
                        label 'slave'
                    steps {
                            sh '''
                    echo "This is Test stage 1"
                    sleep 5
                '''
            }
                    }
                }
                stage('Test2') {
                    agent{
                        label 'slave'
                    steps {
                            sh '''
                    echo "This is Test stage 2"
                    sleep 5
                '''
            }
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

