### simple-playbook

#### install gcp （include infra、code、dns、bizdb）
First,you need copy gitlab_data.tar 、 bind_conf.tar、mongodb to /roles/lib dir

##### install all
```shell
ansible-playbook -i inventory/gcp deploy-gcp.yml
```

##### install infra alone
```shell
ansible-playbook -i inventory/gcp role/up-infra.yml
```

##### install code alone
```shell
ansible-playbook -i inventory/gcp role/up-code.yml
```

##### install dns alone
```shell
ansible-playbook -i inventory/gcp role/up-dns.yml
```

##### install bizdb alone

```shell
ansible-playbook -i /inventory/gcp role/up-bizdb.yml
```

#### new user
```shell
useradd test
passwd test 
chmod u-w /etc/sudoers

visudo ,in the end add next command 
test ALL=(ALL) NOPASSWD: ALL

```

