export MAVEN_OPTS=-Xmx512m
alias mci='mvn -U clean install'
alias mvn-dependency-sources='mvn dependency:sources'
alias mvn-dependency-tree='mvn dependency:tree'
alias mci-skip-tests='mvn -U clean install -Dmaven.test.skip=true'
alias mvn-repoman='mvn -U -s $HOME/.m2/repoman-settings.xml -Dmaven.repo.local=$HOME/.m2/repoman-repository'
alias mvn-repoman-mci='mvn-repoman clean install dependency:sources'

export FLASH_DEBUG_HOME=/Applications/Flash\ Player\ Debugger.app/Contents/MacOS/Flash\ Player\ Debugger

#function mvnflex {
#  mvn2 $1 $2 $3 $4 $5 $6 $7 $8 $9 -DflashPlayer.command=$FLASH_DEBUG_HOME
#}

function mvn-test {
  mvn test
  mvim `grep -l 'FAILURE' ./target/surefire-reports/*.txt`
}
