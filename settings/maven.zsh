export MAVEN_OPTS=-Xmx512m
alias mci='mvn -U clean install'
alias mvn-dependency-sources='mvn dependency:sources'
alias mvn-dependency-tree='mvn dependency:tree'
alias mvn-skip-tests='mvn -U -DskipTests '
alias mst='mvn -U -DskipTests '
#alias mvn-lambda='mvn -U -f pom-lambda.xml install -Dmaven.test.skip=true'
