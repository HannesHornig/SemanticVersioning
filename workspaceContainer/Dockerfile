FROM debian
RUN apt -y update
RUN apt -y upgrade
RUN apt -y install git 
RUN apt -y install tree
RUN apt -y install vim 
RUN apt -y install maven
RUN mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
RUN cd my-app &&\
	git init &&\
    git remote add origin git://gitRepo/semanticVersioning.git &&\
    git config --global user.email "you@example.com"
ENTRYPOINT ["tail","-f","/dev/null"]
