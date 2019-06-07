
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
$ ansible-playbook -i hosts /ops/kube-cluster/kube-dependencies.yml
$ ansible-playbook -i hosts /ops/kube-cluster/master.yml
```

Reference

-https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04
