pipeline {
    agent any

    environment {
        USERNAME="khayalghosh"
        REPO="docker.io/khayalghosh"
        IMAGE_NAME="java-app"
        TAG="1.0"
        REGISTRY_SECRET="MTEzMjA0a2ljYWQ="
    }

    stages {
        stage('Build') {
            steps {         
                            sh 'docker login $REPO -u $USERNAME -p $(echo "$REGISTRY_SECRET" | base64 --decode)'
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
