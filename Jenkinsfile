pipeline {
    agent {
        label 'slave2'
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                     echo "This is Bulid stage"
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
                    mv boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/tomcat/tomcat10/webapps
                    sleep 5
                '''
            }
        }
    }
}
