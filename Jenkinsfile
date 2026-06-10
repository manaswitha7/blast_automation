pipeline {

 agent any

 stages {

  stage('Terraform') {
   steps {
    sh 'terraform apply -auto-approve'
   }
  }

  stage('Ansible') {
   steps {
    sh 'ansible-playbook -i inventory playbook.yml'
   }
  }

  stage('Test BLAST') {
   steps {
    sh 'docker exec blast_server blastn -version'
   }
  }

 }
}