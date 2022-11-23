pipeline {
    agent any

    parameters {
        choice(Process: 'PLATFORM_FILTER', choices: ['destroy', 'apply'], description: 'Choose destroy or apply infra')
    }
  
    stage('Verificacion SCM') {
      checkout scm
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