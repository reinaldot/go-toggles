1) Para rodar no Minikube:

minikube start

2) Execute esse comando para mudar o contexto do terminal para o docker do minikube:

eval $(minikube docker-env)

3) Na raiz da aplicação faça o build da imagem no docker do minikube:

docker build -t name:version .

4) Suba o configmap no K8s:

kubectl apply -f deployments/configMaps.yaml

5) Suba o deployment no K8s do minikube:

kubectl apply -f deployments/deployments.yaml

6) Exponha a aplicação no container para o cluster, sendo o parâmetro port a porta exposta na aplicação:

kubectl expose deployment app --type=NodePort --port=8080

7) Crie um tunel do cluster do Minikube para a maquina, onde app é o nome do deployment que está rodando:

minikube service app --url

8) Abra o link gerado no browser
