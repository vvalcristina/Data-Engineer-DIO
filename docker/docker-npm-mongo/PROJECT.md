## Project Docker

Vamos utilizar o [docker-compose] e nosso container vai possuir as imagens do Mongo DB e de Node.js.

![Captura de tela de 2021-07-29 21-04-56](https://user-images.githubusercontent.com/52939036/127580507-2e5a9abd-e2a8-4694-af4e-10a8d01653e2.png)

### Instruções de uso:

* Certifique-se que tem o docker instalado na máquina.

* Para subir o ambiente docker:

```bash
    docker-compose up -d
```

* Para buildar o projeto:

```bash
    docker-compose up --build -d
```

* Para adicionar um usuário:

```bash
    curl -X POST \
        http://ip-aplicacao-porta/create \
        -H 'cache-control: no-cache' \
        -H 'content-type: application/json' \
        -H 'postman-token: 795b8ccd-0390-d84b-c473-a1c74eb043ac' \
        -d '{
        "name": "Darth Vader"
        }'
```

[docker-compose]: https://docs.docker.com/compose/compose-file/