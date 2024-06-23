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
                    mv /var/lib/jenkins/workspace/pipeline2/target/hello-1.0.war /usr/tomcat/tomcat10/webapps
                '''
            }
        }
    }
}
