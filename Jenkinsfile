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
            def warFilePath = '/var/lib/jenkins/workspace/pipeline2/target/hello-1.0.war'
            def tomcatWebappsPath = '/usr/tomcat/tomcat10/webapps'

            // Copy the WAR file to the Tomcat webapps directory
            sh "sudo cp ${warFilePath} ${tomcatWebappsPath}"
            }
            }
        }
    }
}

