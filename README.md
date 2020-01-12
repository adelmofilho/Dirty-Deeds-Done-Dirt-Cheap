# Dirty-Deeds-Done-Dirt-Cheap

Projeto de provisionamento e gerenciamento de instâncias da [DigitalOcean](https://www.digitalocean.com/) através de ferramentas de Infra As A Code (IaaC).

## Como utilizar

1. Crie um API token na plataforma da [DigitalOcean](https://cloud.digitalocean.com/account/api/tokens) e salve-o.

2. Clone e acesse o diretório raiz do projeto.

```
git clone https://github.com/adelmofilho/Dirty-Deeds-Done-Dirt-Cheap.git

cd Dirty-Deeds-Done-Dirt-Cheap/
```

3. Execute o shell script `setup.sh` para criar uma chave ssh (exclusiva do projeto) e o arquivo `keys.tfvars`, onde você deve inserir o API token criado.

```
sh setup.sh

vim terraform/env/keys.tfvars (insira o API token nesse arquivo)
```

4. Altere as variáveis de interesse no arquivo `project.tfvars`.

```
vim terraform/env/project.tfvars
```

5. Crie sua nova instância executando o shell script `create.sh`.

```
sh create.sh
```

6. Acesse sua nova instância via ssh, execurando o shell script `connect.sh`.


```
sh connect.sh
```

7. Caso deseje destruir a instância e a chave ssh salva no DigitalOcean, execute o shell script `destroy.sh`

```
sh destroy.sh
```