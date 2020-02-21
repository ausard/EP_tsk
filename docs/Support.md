
## Troubleshooting Guide

Problems can occur when installing Jenkins plugins if you have a poor internet connection.  
This causes "Connection failure: timed out" errors. It is recommended that you repeat this action again.  

<img src="https://github.com/ausard/EP_tsk/blob/master/docs/images/connection_failure.png">  
<img src="https://github.com/ausard/EP_tsk/blob/master/docs/images/CSRF.png">  

----
### Please retry Install Jenkins

##### Linux:
```
make retry
```

##### Windows:
```
.\jenkins.bat
```
and select 5) Retry provision Vagrant if error in ansible playbook or ect.

----
### Reload VM

##### Linux:
```
make reload
```

##### Windows:
```
.\jenkins.bat
```
and select 4) Reload Virtual machine

----
### Stop  the virtual machine:

##### Linux:
```
make stop
```

##### Windows:
```
.\jenkins.bat
```
and select 7) Stop Virtual machine

----
### Finishing work with a virtual machine:

##### Linux:
```
make delete
```

##### Windows:
```
.\jenkins.bat
```
and select 6) Destroy Virtual machine

