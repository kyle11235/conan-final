pipeline {
  agent {
    node {
      label 'java-docker-slave'
    }

  }
  stages {
    stage('build module = d') {
      steps {
        sh 'cd d && ./build.sh'
      }
    }

    stage('build module = c') {
      parallel {
        stage('build module = c') {
          steps {
            sh 'cd c && ./build.sh'
          }
        }

        stage('build module = b') {
          steps {
            sh 'cd b && ./build.sh'
          }
        }

      }
    }

    stage('build app = a') {
      steps {
        sh 'cd a && ./build.sh'
      }
    }

  }
}