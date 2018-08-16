#!groovy

node{
    sh 'git rev-parse HEAD>GIT_COMMIT'
    def shortCommit = readFile('GIT_COMMIT').take(6)
    println(shortCommit)
}
