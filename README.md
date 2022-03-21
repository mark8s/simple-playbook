### simple-playbook

#### How To Use
##### install infra
```shell
ansible-playbook -i inventory/gcp role/up-infra.yml
```

##### install code
First,you need copy gitlab_data.tar to /tmp dir, then execute next command.
```shell
ansible-playbook -i inventory/gcp role/up-code.yml
```

##### install dns
First,you need copy bind_conf.tar to /tmp dir, then execute next command.
```shell
ansible-playbook -i inventory/gcp role/up-dns.yml
```

##### install bizdb

```shell
ansible-playbook -i /inventory/gcp role/up-bizdb.yml
```


