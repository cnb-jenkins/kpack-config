node("master") {
  withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]) {
    cleanWs()
    checkout scm
    sh 'make update-builder'
    cleanWs()
  }
}
