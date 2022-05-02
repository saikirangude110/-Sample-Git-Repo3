pipeline {
    agent { label 'Jenkins_Node1' }
	
	environment {
		PROJECT_ID = 'Demo1'
                CLUSTER_NAME = 'autopilot-cluster-1'
                LOCATION = 'us-central1'
                CREDENTIALS_ID = 'kubernetes'		
	}
	
    stages {
	    stage('Scm Checkout') {
		    steps {
			    git 'https://github.com/saikirangude110/Sample-Git-Repo3.git'
		    }
	    }
	    
	    stage('Build') {
		    steps {
                echo "Packaging Code..."
			    sh 'mvn clean package'
		    }
	    }
	    
	    stage('Test') {
		    steps {
			    echo "Testing..."
			    sh 'mvn test'
		    }
	    }
	    
	    stage('Build Docker Image') {
		    steps {
			    sh 'whoami'
			    script {
				    myimage = docker.build("ameintu/devops:${env.BUILD_ID}")
			    }
		    }
	    }
    }
}
	    
