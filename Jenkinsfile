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
                 script {
                    def tomcatDir = '/usr/tomcat/tomcat10' // Adjust path as per your Tomcat installation
                    def warFile = sh(returnStdout: true, script: 'ls target/*.war').trim()

                    sh "sudo cp ${warFile} ${tomcatDir}/webapps/"
                }
                
                // Restart Tomcat to deploy the application (if necessary)
                sh 'sudo systemctl restart tomcat'
            }
            }
        }
    }
}
