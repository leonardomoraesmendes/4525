# 4525
## Ansible

#### Arquivos alterados
Na aula de Ansible foram alterados os arquivos/diretorios
- hosts
- ansible.cfg
- playbooks/
- roles/

Lembrando que os arquivos que diferem das video-aulas sao
- roles/puppet/tasks/main.yml


#### Estrutura de Pastas 
```
├── ansible.cfg
├── hosts
├── playbooks
│   ├── automation.yml
│   ├── devops.yml
│   ├── devops.yum
│   └── docker.yml
└── roles
    ├── docker
    │   ├── defaults
    │   │   └── main.yml
    │   ├── files
    │   ├── handlers
    │   │   └── main.yml
    │   ├── meta
    │   │   └── main.yml
    │   ├── README.md
    │   ├── tasks
    │   │   └── main.yml
    │   ├── templates
    │   ├── tests
    │   │   ├── inventory
    │   │   └── test.yml
    │   └── vars
    │       └── main.yml
    ├── gitlab
    │   ├── defaults
    │   │   └── main.yml
    │   ├── files
    │   ├── handlers
    │   │   └── main.yml
    │   ├── meta
    │   │   └── main.yml
    │   ├── README.md
    │   ├── tasks
    │   │   └── main.yml
    │   ├── templates
    │   ├── tests
    │   │   ├── inventory
    │   │   └── test.yml
    │   └── vars
    │       └── main.yml
    ├── jenkins
    │   ├── defaults
    │   │   └── main.yml
    │   ├── files
    │   ├── handlers
    │   │   └── main.yml
    │   ├── meta
    │   │   └── main.yml
    │   ├── README.md
    │   ├── tasks
    │   │   └── main.yml
    │   ├── templates
    │   ├── tests
    │   │   ├── inventory
    │   │   └── test.yml
    │   └── vars
    │       └── main.yml
    ├── puppet
    │   ├── defaults
    │   │   └── main.yml
    │   ├── files
    │   ├── handlers
    │   │   └── main.yml
    │   ├── meta
    │   │   └── main.yml
    │   ├── README.md
    │   ├── tasks
    │   │   └── main.yml
    │   ├── templates
    │   ├── tests
    │   │   ├── inventory
    │   │   └── test.yml
    │   └── vars
    │       └── main.yml
    └── rundeck
        ├── defaults
        │   └── main.yml
        ├── files
        ├── handlers
        │   └── main.yml
        ├── meta
        │   └── main.yml
        ├── README.md
        ├── tasks
        │   └── main.yml
        ├── templates
        ├── tests
        │   ├── inventory
        │   └── test.yml
        └── vars
            └── main.yml

```


## Puppet
É importante lembrar que quando é instalado o puppet Server para ele ininiciar corretamente temos que adicionar no arquivo /etc/hosts o nome puppet para responder no endereço 127.0.0.1

```
head -1 /etc/hosts
127.0.0.1	localhost puppet

```

#### Arquivos alterados

- /etc/puppetlabs/puppet/autosign.conf
- /etc/puppetlabs/code/environments/production/manifests/site.pp
- /etc/puppetlabs/code/environments/production/modules/web/


#### Estrutura da Pasta

```

/etc/puppetlabs/
├── code
│   ├── environments
│   │   └── production
│   │       ├── data
│   │       ├── environment.conf
│   │       ├── hiera.yaml
│   │       ├── manifests
│   │       │   └── site.pp
│   │       └── modules
│   │           └── web
│   │               ├── appveyor.yml
│   │               ├── CHANGELOG.md
│   │               ├── data
│   │               │   └── common.yaml
│   │               ├── examples
│   │               ├── files
│   │               │   └── web.conf
│   │               ├── Gemfile
│   │               ├── Gemfile.lock
│   │               ├── hiera.yaml
│   │               ├── manifests
│   │               │   └── init.pp
│   │               ├── metadata.json
│   │               ├── Rakefile
│   │               ├── README.md
│   │               ├── spec
│   │               │   ├── default_facts.yml
│   │               │   └── spec_helper.rb
│   │               ├── tasks
│   │               └── templates
│   └── modules
├── puppet
│   ├── auth.conf
│   ├── autosign.conf
│   ├── hiera.yaml
│   ├── puppet.conf
│   └── ssl
│       ├── ca
│       │   ├── ca_crl.pem
│       │   ├── ca_crt.pem
│       │   ├── ca_key.pem
│       │   ├── ca_pub.pem
│       │   ├── infra_crl.pem
│       │   ├── infra_inventory.txt
│       │   ├── infra_serials
│       │   ├── inventory.txt
│       │   ├── requests
│       │   ├── serial
│       │   └── signed
│       │       ├── 2277e2d5f5d1.dexter.com.br.pem
│       │       ├── 49b1aefa041b.dexter.com.br.pem
│       │       ├── 550ef7ff2a4c.dexter.com.br.pem
│       │       ├── 6acccf227123.dexter.com.br.pem
│       │       ├── 6b64f8ecfa99.dexter.com.br.pem
│       │       ├── 6eb4022fe6a2.dexter.com.br.pem
│       │       ├── 75ed3aee4534.dexter.com.br.pem
│       │       ├── a55bc83de383.dexter.com.br.pem
│       │       ├── devops.dexter.com.br.pem
│       │       └── f77d94195c18.dexter.com.br.pem
│       ├── certificate_requests
│       ├── certs
│       │   ├── ca.pem
│       │   └── devops.dexter.com.br.pem
│       ├── crl.pem
│       ├── private
│       ├── private_keys
│       │   └── devops.dexter.com.br.pem
│       └── public_keys
│           └── devops.dexter.com.br.pem
├── puppetserver
│   ├── conf.d
│   │   ├── auth.conf
│   │   ├── ca.conf
│   │   ├── global.conf
│   │   ├── metrics.conf
│   │   ├── puppetserver.conf
│   │   ├── web-routes.conf
│   │   └── webserver.conf
│   ├── logback.xml
│   ├── request-logging.xml
│   └── services.d
│       └── ca.cfg
└── pxp-agent
    └── modules
```
