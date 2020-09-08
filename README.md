# SemanticVersioning

Trying out <a href="https://github.com/jgitver/jgitver">JgitVer</a>, a maven plugin which uses git tags and other meta-information to calculate version numbers. To do this in a reproduceable manner the basic workflow of:
* creating a git repo
* pushing a Java project with Jenkinsfile and JgitVer config to it 
* and letting a Jenkins Server pull and build it automatically

was modelled using multiple Docker-Files and a Docker-Compose file.

## This Project can be usefull if you want to see an example of

### How to create a bare git repository

The Git Repo Container is a plain debian with git installed. The Repository is made available using the git protocoll and the git deamon. For more information on the subject I recommend https://git-scm.com/book/en/v2

### How to preconfigure a Jenkins Container in a basic way 

This is mainly done using install-plugins.sh to install plugins and by copying a lot of config XML at the right places.

### How to configure JgitVer

In the .mvn folder the configuration for JgitVer is done. The actuall incrementing of the version numbers through the tags is done in the Jenkisfile by parsing the last available tag. 

## Disclaimer

Since this was only a small test to get the hang of JgitVer, some things would need to be improved, if actually someone would want to use it.

Among this would be:

* using a shared libary in Jenkins instead of putting everything in the Jenkinsfile itself https://www.jenkins.io/doc/book/pipeline/shared-libraries/
* using Groovy instead of shell commands in the Jenkins file
* enabling security (If you start the Jenkins Server you will see that all Security was deactivated)
* using something else insteasd of the old "tail -f /dev/null" trick, so that the workspace container stays actually up
...

