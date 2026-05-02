Projeto: Pipeline CI/CD com Terraform e AWS
"Este projeto automatiza o provisionamento de infraestrutura na AWS (VPC, EC2, S3) e realiza o deploy contínuo de uma aplicação via GitHub Actions."

🛠️ Tecnologias Utilizadas
Terraform: Infraestrutura como Código (IaC).

AWS: Cloud provider (EC2, VPC, S3, ECR).

GitHub Actions: Automação do pipeline de deploy.

Docker: Conteinerização da aplicação.

SSH (Action): Para acesso remoto seguro.

🏗️ Arquitetura da Rede
O projeto configura uma infraestrutura completa e segura:

VPC customizada com Subnet Pública.

Internet Gateway e Route Table para acesso externo.

Security Groups configurados para permitir acesso SSH (Porta 22) apenas para deploy.

📋 Como rodar o projeto
Pré-requisitos: Ter o Terraform instalado e credenciais da AWS configuradas.

Inicialização:

Bash
terraform init
Deploy da Infra:

Bash
terraform apply -auto-approve
🧠 Desafios Superados (O que eu aprendi)

Gerenciamento de Estado: Lidando com errored.tfstate e sincronismo de estado do Terraform.

Ciclo de Vida do S3: Configuração de force_destroy para automação completa de buckets com dados.

Troubleshooting de Rede: Depuração de erros de timeout no SSH através da configuração correta de gateways e rotas.
