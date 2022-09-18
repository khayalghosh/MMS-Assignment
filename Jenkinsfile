pipeline {
    agent any

    environment {
        AZURE_SUBSCRIPTION_ID='c2c132c7-4db7-48a8-b6da-7d3160f0821b'
        RESOURCE_GROUP='MMS-Assignment'
        REPO="mmsacr01.azureacr.io"
        IMAGE_NAME="java-app"
        TAG="1.0"
    }

    stages {
        stage('Build') {
            steps {
                            sh 'az account set -s $AZURE_SUBSCRIPTION_ID'
                            sh 'az acr login --name $REPO --expose-token'
                            sh 'docker build -t $REPO/$IMAGE_NAME:$TAG . '
                            sh 'docker push $REPO/$IMAGE_NAME:$TAG'
                }
            }
        stage('Cleanup'){
            steps {
                            sh 'docker rmi $REPO/$IMAGE_NAME:$TAG'

        }
        }
    }
}
