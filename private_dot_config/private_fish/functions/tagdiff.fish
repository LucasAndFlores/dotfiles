function tagdiff
    if test (count $argv) -lt 1
        echo "Usage: just use the tag you want to see the difference in all deployment_ids, for example retail-v3-mgmt-api"
        echo "Example: tagdiff retail-v3-mgmt-api"
        return 1
    end

    for dir in */
        if test -d $dir
            echo "Entering directory: $dir"
            pushd $dir
            kubectl kustomize . | grep "$argv[1]:"
            popd
            echo "Leaving directory: $dir"
        end
    end
end
