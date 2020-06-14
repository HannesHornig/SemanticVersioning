FROM debian
RUN apt -y update 
RUN apt -y upgrade
RUN apt -y install git
RUN apt -y install maven 
RUN apt -y install tree
RUN apt -y install vim 
RUN mkdir semanticVersioning
RUN cd semanticVersioning \
	&& git init \
	&& mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
ENTRYPOINT ["tail","-f", "/dev/null"]
