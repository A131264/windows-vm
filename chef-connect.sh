ip=$(cat vm-output.txt | grep Private_IP | cut -d '=' -f2 | awk '{$1=$1};1')

ssh -t 'root@10.228.10.7' 'cd chef-repo && knife bootstrap windows winrm '$ip' -N '$ip' -r 'role[test]' -x '$username' -P '$password' -y '

