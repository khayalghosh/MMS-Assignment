docker.image('maven:3.3.3-jdk-8').inside {
  git 'https://github.com/khayalghosh/MMS-Assignment.git'
  sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
  sh 'mvn -B clean install'
}
