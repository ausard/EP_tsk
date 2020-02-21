#!groovy
pipeline { 
   agent any   
   options{
      //Time display
      timestamps()
   }
   stages {
      stage('Git clone project') {
         steps {
            //Delete Workspace before build project
            cleanWs()
            // Get code from a GitHub repository
             git 'https://github.com/ausard/Sudoku.git'
            //  git 'https://github.com/ausard/db_demo.git'
         }
      }
      stage('Test project'){
         steps{
            sh label: 'Maven Test project ', script: "mvn clean test"
         }
      }
      stage ('Analysis') {
         steps {
            // code testing stage with Checkstyle and PMD maven reporting plugins
            sh 'mvn checkstyle:checkstyle'
            sh 'mvn pmd:pmd'            
         }
         post{
             success{
                echo "====++++ALWAYS++++===="
               //pmd canComputeNew: false, defaultEncoding: '', healthy: '', pattern: 'target/pmd.xml', unHealthy: ''
               //checkstyle canComputeNew: false, defaultEncoding: '', healthy: '', pattern: 'target/checkstyle-result.xml', unHealthy: ''
             }            
         }
      }
      stage('Build project'){
         steps{
            sh label: 'Maven build project ', script: "mvn package"
         }
         post{
            success{
               archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
         }
      }      
   }
   post {
      always {
         echo "====++++ALWAYS++++===="
         // The report should be provided via the Jenkins dashboard generate by Jenkins plugins
         recordIssues enabledForFailure: true, tool: checkStyle(pattern: 'target/checkstyle-result.xml')
         recordIssues enabledForFailure: true, tool: pmdParser(pattern: 'target/pmd.xml')
      }
      success{ 
         // junit 'target/surefire-reports/*.xml'                     
         echo "====++++Success++++===="
      }     
   }
}
