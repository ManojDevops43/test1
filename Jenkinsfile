pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo -S mv /var/lib/jenkins/workspace/pipeline2/target/hello-1.0.war /usr/tomcat/tomcat10/webapps/'
            }
        }
    }
}
