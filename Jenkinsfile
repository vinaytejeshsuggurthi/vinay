pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/vinaytejeshsuggurthi/vinay.git'

            
            }
        }

     stage('git path') {
         steps {

               sh 'cd vinay' }
}
  stage('git folder') {
      steps {
     
              sh 'ls' }
}
                
        stage('terraform init') {
            steps {
            
             
            dir ('vinay') {
 
                sh 'sudo terraform init'   }
        }
}
        stage('terraform plan') {
            steps {
                dir ('vinay') {
                sh 'sudo terraform plan' 
            }
        }
}
        stage('terraform apply') {
            steps {
                  
             dir ('vinay') {
                sh 'sudo terraform apply -auto-approve'
                       }
            }
        }

        
    }
}

