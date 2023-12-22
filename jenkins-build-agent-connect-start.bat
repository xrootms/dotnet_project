


@echo off
set JENKINS_MASTER_URL=http://192.168.13.189:9191/
set AGENT_NAME=Ceroc-Dev-Server
set SECRET=128a541b2b46a584b1940f9a60a95cc9fd8b04a528c7d0a6d0c0efb97177cbba

start "Jenkins Agents" java -jar agent.jar -jnlpUrl %JENKINS_MASTER_URL%/computer/%AGENT_NAME%/slave-agent.jnlp -secret %SECRET% -workDir "C:\jenkins-dev"

exit