##Instalar explorador de imagem
#https://github.com/wagoodman/dive
wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb
sudo apt install ./dive_0.9.2_linux_amd64.deb

# docker run:  utilizado para criar um container
docker run --name newcontainer hello-world
docker run --name hello -d busybox sleep 3600
docker run --name site -d -p 80:80 nginx

# docker ps: Lista os container em execução, para listar os que não estão precisamos colocar o parâmetro -a
docker ps -a

#docker info: Exibe um sumuário dos nossos container, como também especificações do nosso docker
docker info

#docker exec: adiciona um processo a mais no container
#Vamos criar uma pasta dentro do container
docker exec hello mkdir teste

# Acessamos o container com o servico SH
docker exec -it hello sh

#docker stop e docker start
#Paramos nosso container
docker stop hello
#Iniciamos nosso container
docker start hello

#docker logs: coletamos o output do nosso container, ótimo para debugar uma aplicação
docker logs site

#docker pull
docker pull hello-world

#Docker commit
docker commit --author="Valeria Silva" --message="Imagem com commit" hello hello

#Docker tag
#Preparando para docker hub
docker tag hello vvalcristina/hello:1.0
#Trocando um nome de um repositorio
docker tag hello-world ola-mundo

#docker login e docker logout: logar no repositório local, ou público. Por padrão logamos no Docker HUB
docker login <usuário>

#docker push: vamos versionar nosso repositório/imagem ao docker hub
docker push vvalcristina/hello:1.0

#docker search: procura por uma imagem no repositório
docker search <consulta>

#Docker rm: Remove um container previamente parado
docker rm newcontainer

#para remover um container em execução é nesessário o parâmetro -f
docker rm -f site

#docker rmi: remove um repositório/imagem local, se algum container estiver parado que utiliza essa imagem deverá passar o parâmetro -f
docker rmi hello-world

#docker export, import: exporta o container mergeando as suas camadas
docker export hello > export.tar

#importa o arquivo gerado, criando uma imagem do container a partir dela
cat export.tar | docker import - hello-export:latest

#docker save,load
#Exporta a imagem em um arquivo
docker save vvalcristina/hello:1.0 > save.tar
#Importa o arquivo gerado
docker load < save.tar
