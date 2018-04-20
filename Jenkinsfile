pipeline {
    agent { dockerfile true }
    stages {
        stage("build") {
            steps {
                sh "make"
            }
        }

        stage("test") {
            steps {
                sh "make test"
            }
        }
    }
    
    post {
        always {
            emailext attachLog: true,
                     subject: "Jenkins: ${currentBuild.currentResult} ${env.JOB_NAME} #${currentBuild.number}",
                     body: """\
                           The build of the repository ${env.JOB_NAME} #${currentBuild.number} ends up with status ${currentBuild.currentResult}. You can find build log in the attachments.
                           For more details see ${env.BUILD_URL}.
                           Yours sincerely
                           Jenkins""".stripIndent(),
                     recipientProviders:  [culprits(), developers()]
        }
    }
}
