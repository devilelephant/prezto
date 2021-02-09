alias nebula-utils-docker="docker run --rm -it \
-v ~/.ssh:/root/.ssh/ \
-v ~/.aws:/root/.aws/ \
-v ~/.nebula_utils:/root/.nebula_utils/ \
--entrypoint=/bin/bash \
chewyinc-docker.jfrog.io/plat/nebula-utils:latest \
-l"

alias nebula-utils="docker run --rm -it \
-v ~/.aws:/root/.aws/ \
-v ~/.nebula_utils:/root/.nebula_utils/ \
chewyinc-docker.jfrog.io/plat/nebula-utils:latest"

export AWS_DEFAULT_REGION=us-east-1
export AWS_PROFILE=development-nebula

#okta password pasted here, sigh
alias aws-login="echo 'copied okta pwd to clipboard'; echo pFL9fG-rupFKt-ghJsut | tr -d '\n' | pbcopy; nebula-utils"
alias awssbx="aws --profile sandbox-nebula --region us-east-1"
alias awsdev="aws --profile development-nebula --region us-east-1"
alias awsqat="aws --profile qa-nebula --region us-east-1"
alias awsstg="aws --profile staging-nebula --region us-east-1"
alias awsprd="aws --profile production-nebula --region us-east-1"
alias oktapwd=pFL9fG-rupFKt-ghJsut
