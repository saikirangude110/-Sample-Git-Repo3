pipeline {
    agent { label 'Jenkins_Node1' }
	
	environment {
		registry = "saikirangude12/hello-world"
		PROJECT_ID = 'jenkins-296812'
                CLUSTER_NAME = 'k8s-cluster'
                LOCATION = 'us-central1-c'
                CREDENTIALS_ID = 'kubernetes'		
	           }
	
    stages {
	    stage('Scm Checkout1') {
		    steps {
			    git 'https://github.com/saikirangude110/Sample-Git-Repo2.git'
		 }
	    }
	    
	    stage('Cleaning Old Build History') {
		    steps {
                echo "Packaging Code..."
		        sh 'mvn clean'
	         }
	    }
               
        stage('Generating Artifact') {
	        steps {
                echo "Packaging Code..."
	            sh 'mvn package'
	         }
            }
	    
	stage('Building image') {
        steps {
		script {
		dockerImage = docker.build registry + ":latest" Dockerfile
	}
	}
     }
}
}
