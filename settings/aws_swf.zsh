function aws-swf-list-workflows {
    aws swf list-open-workflow-executions --domain dev-gcoller --start-time-filter 'oldestDate=0'
}

function aws-swf-terminate-workflow {
    aws swf terminate-workflow-execution --domain dev-gcoller --workflow-id $1
}
