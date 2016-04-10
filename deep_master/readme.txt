Things to do:
YouTube Video: https://www.youtube.com/watch?v=NLclMKYomJ4

Setup AWS:
    -> aws configure

Setup Git:
    - Generate an SSH key for Git
    -> ssh-keygen -N yellowknife -f ~/.ssh/id_rsa
    - Set SSH for GIT, add the SSH key (.ssh/id_rsa.pub) into GitHub
    - Grab the source:
        -> git clone <<repo_ssh_url>>

Copy DeepMarkit_Private.pem to local .ssh folder
    -> vi ~/.ssh/DeepMarkit_Private.pem
    - Paste in the key
    -> chmod 600 ~/.ssh/DeepMarkit_Private.pem
    -> chown vagrant:vagrant ~/.ssh/DeepMarkit_Private.pem
