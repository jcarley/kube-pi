
This tutorial assumes the use of Ubuntu 18.04. Thats why I provide the
docker-compose file.  No desktop environment is necessary to run the
commands.

Usage:

```
$ docker-compose run --rm shell
```

```
$ cd /ops/kube-cluster
$ ./setuphosts.sh
$ ansible-playbook -i hosts /ops/kube-cluster/initial.yml
$ ansible-playbook -i hosts /ops/kube-cluster/docker.yml
$ ansible-playbook -i hosts /ops/kube-cluster/kube-dependencies.yml
$ ansible-playbook -i hosts /ops/kube-cluster/master.yml
$ ansible-playbook -i hosts /ops/kube-cluster/workers.yml
```

Verify the cluster.  This may take awhile.
```
ssh ubuntu@master
kubectl get nodes -o wide
```

Reference

-https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04


Had to run this to clean up the nodes of docker.  It took me ssh'ing into each
node and running the following command.
sudo rm -f /tmp/docker-install.sh && sudo aptitude remove docker docker.io containerd runc -y && sudo aptitude remove docker-ce -y
