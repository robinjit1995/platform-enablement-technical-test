Application Details

The repository contains simple JAVASCRIPT application, that allows only username=”Robinjit” to login with no password. It has two functionalities where ApplicationHealth.jsp assists a health endpoint which returns an appropriate response code and ApplicationMetadata.jsp that returns metadata about the application hosting and is accompanied by junit testing.

The application code is available at: https://github.com/robinjit1995/platform-enablement-technical-test/

Application is accessible at: http://3.25.99.241:8090/index/ and can be accessed with username: Robinjit. And the Jenkins pipeline can be accessed at : http://3.25.99.241:8080/job/Myob-assignment/

Deployment Details

The infrastructure is hosted on ec2 instance using AMI image:Amazon Linux 2 AMI (HVM), SSD Volume Type - ami-0a58e22c727337c51 (64-bit x86) / ami-0bc71ebe2a221089c (64-bit Arm) and below are the infrastructure requirements.

Java: 1.8.0_141
Maven: 3.5.2
Tomcat: Apache Tomcat 9.0.37
Jenkins: Jenkins 2.244
Eclipse: Version: 2020-06 (4.16.0)
Git: git version 2.23.3.

The application deployment is working via Jenkins pipeline and pipeline as code is available in Jenkinsfile that has 4 stages and builds application on each commit.

1.	Polling the SCM(checksout the application code from git repository)
2.	Build(maven packages the artefact in *.war format)
3.	Test(runs the test cases across the Java code)
4.	Deploying to the tomcat container(the *.war file is deployed to tomcat application server)


