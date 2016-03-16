FROM saisasank001/tomcatlatest
MAINTAINER saisasank
COPY dist/git_demo.war /maven/git_demo.war

EXPOSE 8080
