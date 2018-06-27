# DevOps Workshop

## Prerequisites

```
git clone https://github.com/Yaowei-Du/devops-workshop.git
make prepare
```

## Jenkins

### Deployment

```
make run
```

### Website

Jenkins Url:

```
open localhost:18081
```

## Wordpress(sample project)

### Deployment

```
ansible-playbook -i inventories/test wordpress.yml
```

### Website

Wordpress Url:

```
open localhost:18080
```

## Contacts

If you have any questions or ideas, please send email to:

    d.yaowei@gmail.com
