pipeline {
    agent { label 'Jenkins_Node1' }
	
	environment {
		PROJECT_ID = 'jenkins-296812'
                CLUSTER_NAME = 'k8s-cluster'
                LOCATION = 'us-central1-c'
                CREDENTIALS_ID = 'kubernetes'		
	}
	
    stages {
	    stage('Scm Checkout') {
		    steps {
			    git 'https://github.com/saikirangude110/Sample-Git-Repo2.git'
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
	}
}
	    
