pipeline {
    agent any
    environment {
        SERVER_IP = getServerIp()
    }

    stages {
        stage('SSH and Deploy') {
            steps {
                script {
                    sshagent(['6722bc5a-bece-40c1-a8ce-33c4930852c9	']) {
                        sh '''
                        ssh -tt -o StrictHostKeyChecking=no ec2-user@$SERVER_IP << EOF
                        pwd
                        whoami
                        curl ifconfig.io
                        exit
                        EOF
                        '''
                    }
                }
            }
        }
    }
}

def getServerIp() {
    return "3.140.241.132";
}