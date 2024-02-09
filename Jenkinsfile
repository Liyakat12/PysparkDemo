pipeline {
  agent {dockerfile {
  args "-u jenkins"}
  }
  stages {
    stage('build') {
        environment {
        HOME="."
        }
        steps {
          sh 'mvn --version'
          }
   }
    stage("prepare") {
      steps {
        script{
        sh "pipenv install --dev"
        }
      }
    }
    stage("test"){
      steps{
        sh "pipenv run pytest"
      }
    }
    stage("prepare artifact"){
      steps{
        sh "make build"
      }
    }
    
  }
}
