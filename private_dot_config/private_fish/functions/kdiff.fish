function kdiff
    if test (count $argv) -lt 2
        echo "Usage: kdiff <context_id> <deployment-path> [additional-kubectl-args...]"
        echo "Example: kdiff eu-01 deployments/iocmq"
        return 1
    end

    set context_id $argv[1]
    set deployment_path $argv[2]
    set extra_args $argv[3..]

    kubectl --context="$context_id" diff -k "$deployment_path/deployment_id/$context_id" $extra_args | colordiff
end
