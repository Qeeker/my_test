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
}
