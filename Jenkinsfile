pipeline {
    agent any
    stages {
        stage("deploy"){
            steps {
                sshagent(['Nodejs']) {
                    sh "ssh ubuntu@13.233.6.4 /home/ubuntu/hello.sh"
                }
            }
        }  
    }
}
