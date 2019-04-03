export CLOUDFORMER_SOURCE_PATH=/Workspace/system/cloudformer

#Set font weight variables for convenience
export bold=`tput bold`
export normal=`tput sgr0`

# function switch-creds2() {
#   if [ ${1} ]; then
#     export CURRENT_AWS_ENV="${1}"
#     export AWS_CREDENTIAL_FILE="$HOME/.aws/${1}"
#     export AWS_ACCESS_KEY_ID=`cat ${AWS_CREDENTIAL_FILE} | grep AWSAccessKeyId= | awk -F= '{print $2}'`
#     export AWS_SECRET_ACCESS_KEY=`cat ${AWS_CREDENTIAL_FILE} | grep AWSSecretKey= | awk -F= '{print $2}'`
#     export AWS_SECRET_KEY=$AWS_SECRET_ACCESS_KEY #Java SDK
#     export CURRENT_AWS_ACCOUNT_ID=`cat ${AWS_CREDENTIAL_FILE} | grep AWSAccountId= | awk -F= '{print $2}'`
#     export AWS_DEFAULT_REGION="us-east-1"
#     echo "Switched to ${bold}[${1}]${normal} credentials"
#   else
#     echo "Need an environment identifier"
#   fi
# }
# 
# function which-creds2 {
#   echo "Currently using ${bold}[${CURRENT_AWS_ENV}]${normal} credentials"
# }
