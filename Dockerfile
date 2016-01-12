FROM saisasank001/tomcatlatest
MAINTAINER saisasank
COPY dist/git_demo.war /maven

EXPOSE 8080
