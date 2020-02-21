# User Documentation

----

├── ansible : folder ansible playbook  
│   ├── <b>[ansible.cfg](https://github.com/ausard/EP_tsk/blob/master/ansible/ansible.cfg)</b> : configuration file fo ansible in this folder  
│   ├── inventory  
│   │   └── <b>[hosts](https://github.com/ausard/EP_tsk/blob/master/ansible/inventory/hosts)</b> : file with our hosts  
│   ├── jenkins : folder with role for install jenkins  
│   │   ├── config  
│   │   │   └── <b>[config.xml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/config/config.xml)</b> : initial config for Jenkins  
│   │   ├── jobs  
│   │   │   └── <b>[job.xml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/jobs/job.xml)</b> : Job with pipeline in Jenkins  
│   │   └── tasks  
│   │       ├── <b>[main.yml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/tasks/main.yml)</b> : main playbook for role Jenkins  
│   │       ├── <b>[jenkins-jobs.yml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/tasks/jenkins-jobs.yml)</b> : playbook for install Jenkins plugins and enabled jobs  
│   │       ├── <b>[setup-Debian.yml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/tasks/setup-Debian.yml)</b> : install Jenkins in Debian  
│   │       └── <b>[setup-RedHat.yml](https://github.com/ausard/EP_tsk/blob/master/ansible/jenkins/tasks/setup-RedHat.yml)</b> : install Jenkins in RedHat  
│   └── <b>[playbook.yml](https://github.com/ausard/EP_tsk/blob/master/ansible/playbook.yml)</b> : main playbook workflow  
├── <b>[Jenkinsfile](https://github.com/ausard/EP_tsk/blob/master/Jenkinsfile)</b> : Groovy pipeline for Jenkins job  
├── <b>[Makefile](https://github.com/ausard/EP_tsk/blob/master/Makefile)</b> : main file for application management on Linux  
├── <b>[jenkins.bat](https://github.com/ausard/EP_tsk/blob/master/jenkins.bat)</b> : main file for application management on Windows  
├── scripts  
│   └── <b>[System_select.sh](https://github.com/ausard/EP_tsk/blob/master/scripts/System_select.sh)</b> : script select version OS for VM  
├── <b>[Vagrantfile](https://github.com/ausard/EP_tsk/blob/master/Vagrantfile)</b> : describe the type of machine required for a project  

----   
