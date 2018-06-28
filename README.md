# DevOps Workshop

## Prerequisites

```shell
git clone https://github.com/Yaowei-Du/devops-workshop.git
make prepare
```

## Jenkins

### Deployment

```shell
make run
```

### Website

Jenkins Url:

```shell
open localhost:18081
```

## Wordpress(sample project)

### Deployment

Copy the `git-crypt.key` to `.git-crypt.key`.

```shell
cp git-crypt.key .git-crypt.key
```

> Hint: Do not store the key in Version Control in a real project.

```shell
ansible-playbook -i inventories/test wordpress.yml
```

### Website

Wordpress Url:

```shell
open localhost:18080
```

## Contacts

If you have any questions or ideas, please send email to:

    d.yaowei@gmail.com
