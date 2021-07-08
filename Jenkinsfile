node("master") {
  withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]) {
    cleanWs()
    checkout scm
    sh 'curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x kubectl'
    sh './kubectl get pods -n kpack'
    sh './kubectl apply -f kpack-resources.yml'
  }
}
