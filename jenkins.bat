
@echo off
echo Enter the number of a release for Vagrant:
echo 1) Ubuntu Server 18.04
echo 2) Ubuntu Server 16.04
echo 3) CentOS 7
echo  Or enter the number for other manage command:
echo 4) Reload Virtual machine
echo 5) Retry provision Vagrant if error in ansible playbook or ect.
echo 6) Destroy Virtual machine
echo 7) Stop Virtual machine


SET /P _input= Please enter an input: 

if %_input%==1 (
    GOTO ubuntu18
    ) else (
        if %_input%==2 (
            GOTO ubuntu16
            ) else (
            if %_input%==3 (
            GOTO centos7
             ) else (
            GOTO manage
            )        
        )
    )
exit 0
:ubuntu18
echo ubuntu/bionic64> scripts\release.tmp
GOTO up

:ubuntu16
echo ubuntu/xenial64> scripts\release.tmp
GOTO up

:centos7
echo centos/7> scripts\release.tmp

:up
SET /p VAGRANT_RELEASE=< scripts\release.tmp
vagrant up
exit 0

:manage
SET /p VAGRANT_RELEASE=< scripts\release.tmp

if %_input%==4 (
    GOTO reload
    ) else (
        if %_input%==5 (
            GOTO retry
            ) else (
            if %_input%==6 (
            GOTO destroy
             ) else (

                if %_input%==7 (
            GOTO stop
             ) else (
                 
                 exit 0
            )
            )        
        )
    )
:reload
vagrant reload
exit 0
:retry
vagrant provision
exit 0
:stop
vagrant halt
exit 0
:destroy
vagrant destroy -f
