pipeline {
  agent any

  parameters {
        choice(name: 'process', choices: ['destroy', 'apply'], description: 'Choose destroy or apply infra')
    }

  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
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