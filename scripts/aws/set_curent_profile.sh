#!/bin/bash

# This script needs to be called in the syntax: . ./path-to-script
# The first dot is needed so it runs in the same shell as it is called in and not a subshell. That gives issues to the sourcing commands

# Prerequisites: aws cli must be installed

# Reserved var for prompt
PS3="Select your profile please: "

# get local list of aws profiles
PROFILE_NAMES=(eval "aws configure list-profiles")

# build menu options
menu_options=()
while IFS= read -r line; do
    menu_options+=( "$line" )
done < <( $PROFILE_NAMES)

select profile in "${menu_options[@]}" Quit
do
    echo "setting $profile as the current profile"

    # create/set file content
    echo "#!/bin/bash" >> temp.sh
    echo "export AWS_PROFILE=$profile" >> temp.sh
    echo "export AWS_DEFAULT_PROFILE=$profile" >> temp.sh

    # apply changes
    source ./temp.sh

    # clean up
    rm ./temp.sh

    echo "current profile changed to $AWS_PROFILE"
    echo "done"
    break
done
