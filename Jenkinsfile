pipeline {
  agent any

  parameters {
        choice(name: 'process', choices: ['destroy', 'apply'], description: 'Choose destroy or apply infra')
    }
  stages{
    stage('Verificacion SCM') {
        steps{
            checkout scm
        }
    }

    stage('Init') {
      steps {
        sh 'terraform init'
      }
    }
    
    stage('Validacion') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Plan') {
      steps {
        sh 'terraform plan'
      }
    }

    stage('Apply') {
      steps {
        sh 'terraform apply -auto-approve -no-color'
      }
    }
  }
  
}