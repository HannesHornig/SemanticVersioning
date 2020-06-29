FROM debian
RUN apt -y update
RUN apt -y upgrade
RUN apt -y install git 
RUN apt -y install tree
RUN apt -y install vim 
RUN mkdir semanticVersioning.git
RUN cd semanticVersioning.git \
	&& git init --bare 
ENTRYPOINT ["git","daemon","--base-path=.","--export-all","--enable=receive-pack","--reuseaddr","--informative-errors","--verbose"]
