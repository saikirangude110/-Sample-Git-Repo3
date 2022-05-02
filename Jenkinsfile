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
	    
	    stage('Cleaning Old Build History') {
		    steps {
                echo "Packaging Code..."
			    sh 'mvn clean'
		    }
	    }
        
        stage('Testing') {
		    steps {
			    echo "Testing..."
			    sh 'mvn test'
		    }
	    }
        
        stage('Generating Artifact') {
		    steps {
                echo "Packaging Code..."
			    sh 'mvn package'
		    }
	    }
	    
        stage ("Copying the above Artifact to the Dockerfile location") {
            steps {
                sh 'sudo cp workspace/Testing/Pipeline1/target/trucks.war /opt/dockerfiles'
            }
        }

        stage ("Creating Docker Image by using the above Artifact and Pushing it to DockerHub Repo") {
            steps {
                sh '''
                sudo docker build -t hello-world:v4.0 .
                sudo docker tag hello-world:v4.0 saikirangude12/hello-world:v4.0
                sudo docker push saikirangude12/hello-world:v4.0
                '''
            }
        }
    }
}
