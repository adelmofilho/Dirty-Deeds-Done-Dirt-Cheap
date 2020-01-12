# Dirty Deeds Done Dirt Cheap <img src="https://vignette.wikia.nocookie.net/jjba/images/4/4d/D4c_sbr69.png/revision/latest?cb=20160323142852" align="right" height=140/>

Projeto de provisionamento e gerenciamento de instâncias da [DigitalOcean](https://www.digitalocean.com/) através de ferramentas de Infra as a Code.

<br>

## Descrição



<br>

## Como utilizar

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

**Por quê utilizar a DigitalOcean e não outros provedores como AWS, GCP, Azure?**

```

```