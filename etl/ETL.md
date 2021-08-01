# Fundamentos de ETL com Python

## ETL

![Captura de tela de 2021-08-01 13-11-37](https://user-images.githubusercontent.com/52939036/127777881-26d470e1-1987-48d5-8a43-f23799c014ff.png)

![Captura de tela de 2021-08-01 13-12-57](https://user-images.githubusercontent.com/52939036/127777910-5482f6b0-cd73-41e2-812e-e772278fd1f4.png)

![Captura de tela de 2021-08-01 13-13-49](https://user-images.githubusercontent.com/52939036/127777965-f953bae9-acfe-46f1-a482-a4ec48bb65f8.png)

### Ferramentas e pacotes para Python

* [Aiflow](http://airflow.apache.org/)
* [Luigi](https://luigi.readthedocs.io/en/stable)
* [Bonobo](https://www.bonobo-project.org/)
* [Bubbles](http://bubbles.databrewery.org/)
* [Petl](https://petl.readthedocs.io/en/stable/): não foi projetado para trabalhar com pipelines grandes.
* [Pandas](https://pandas.pydata.org/)


### Projeto

O projeto utilizará dados abertos do [Centro de Investigação e Prevenção de Acidentes Aeronáutico (CENIPA)](https://dados.gov.br/dataset/ocorrencias-aeronauticas-da-aviacao-civil-brasileira).

Constam nesta base de dados as ocorrências aeronáuticas notificadas ao CENIPA nos últimos 10 anos e que ocorreram em solo brasileiro. Dentre as informações disponíveis estão os dados sobre as aeronaves envolvidas, fatalidades, local, data, horário dos eventos e informações taxonômicas típicas das investigações de acidentes (AIG). São resguardadas a privacidade de pessoas físicas/jurídicas envolvidas conforme previsto pela Lei de Acesso à Informação (Lei n° 12.527, de 18 de novembro de 2011).

**Modelo de Dados**

Nosso modelo de dados segue uma modelagem estrela:

![modelo_dados](https://user-images.githubusercontent.com/52939036/127779683-825a4152-635c-447a-a717-65d055483838.png)

Nesse projeto especificamente, vamos trabalhar com a tabela fato do modelo de dados, a tabela de Ocorrências. Para melhor entendimento, devemos previamente saber algumas informações:

* codigo_ocorrencia1: código referente ao tipo da ocorrência.
* codigo_ocorrencia2: código referente ao tipo de aeronave envolvida no acidente.
* codigo_ocorrencia3: fator contribuinte da ocorrência.
* codigo_ocorrencia4: referência a recomendação oferida pelo CENIPA, em virtude dessa ocorrência.