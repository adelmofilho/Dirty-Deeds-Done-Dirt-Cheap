<p align="center"><img src="https://vignette.wikia.nocookie.net/jjba/images/4/4d/D4c_sbr69.png/revision/latest?cb=20160323142852" align="center" height=220/>
</p>

<h2 align="center">Dirty Deeds Done Dirt Cheap</h2>

<p align="center">
<a href="http://www.repostatus.org/#active"><img alt="Project Status: Active – The project has reached a stable, usable state and is being actively developed." src="https://www.repostatus.org/badges/latest/active.svg"></a>
<a href="https://www.gnu.org/licenses/gpl-3.0"><img alt="License" src="https://img.shields.io/badge/License-GPLv3-blue.svg"></a>

<br>

Projeto de provisionamento e gerenciamento de instâncias da DigitalOcean através de ferramentas de Infra as a Code

## Features Implementadas

- [x] Criação de instância (droplet) com acesso via ssh

- [x] Provisionamento de softwares de segurança (fail2ban, ufw)

- [x] Provisionamento de docker

<br>

## Pré-requisitos

O projeto foi desenhado para uso em uma máquina linux com os seguintes softwares instalados:

- Terraform v0.12.18, ou superior;
- Ansible 2.5.1, ou superior;
- git version 2.17.1, ou superior;

Instruções para instalação desses softwares podem ser encontradas [AQUI](https://learn.hashicorp.com/terraform/getting-started/install.html), [AQUI](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) e [AQUI](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

Além disso, crie um conta na Digital Ocean. Caso deseje, use meu [link](https://m.do.co/c/2e5764a6d681).

## Utilização

**Passo 1**: Crie um API token na [DigitalOcean](https://cloud.digitalocean.com/account/api/tokens) e salve-o.

**Passo 2**: Clone e acesse o diretório raiz do projeto.

```
git clone https://github.com/adelmofilho/Dirty-Deeds-Done-Dirt-Cheap.git

cd Dirty-Deeds-Done-Dirt-Cheap/
```

**Passo 3**: Execute o shell script `setup.sh` para criar uma chave ssh (exclusiva do projeto) e o arquivo `keys.tfvars`, onde você deve inserir o API token criado.

```
sh setup.sh

vim terraform/env/keys.tfvars
```

**Passo 4**: Altere as variáveis de interesse no arquivo `project.tfvars`.

```
vim terraform/env/project.tfvars
```

**Passo 5**: Crie sua nova instância executando o shell script `create.sh`.

```
sh create.sh
```

Durante a criação da instância você será questionado a conectar à instância para executar os playbook em ansible

> Are you sure you want to continue connecting (yes/no)?

Responda com `yes` e siga apertando `enter`.

Nos futuros releases isso não será mais necessário.

**Passo 6**: Acesse sua nova instância via ssh, execurando o shell script `connect.sh`.


```
sh connect.sh
```

**Passo 7**: Caso deseje **destruir** a instância e a chave ssh salva no DigitalOcean, execute o shell script `destroy.sh`

```
sh destroy.sh
```

<br>

## FAQ

**Por quê utilizar a DigitalOcean e não outros provedores de cloud como AWS, GCP, Azure?**

```
Menor Preço.
```
