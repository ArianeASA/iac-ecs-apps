
[![Terraform APPLY Order APP](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_order.yml/badge.svg?branch=master)](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_order.yml)
[![Terraform APPLY Payments APP](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_payments.yml/badge.svg?branch=master)](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_payments.yml)
[![Terraform APPLY Production APP](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_production.yml/badge.svg?branch=master)](https://github.com/ArianeASA/iac-ecs-apps/actions/workflows/terraform_apply_production.yml)
# iac-ecs-app
Repository to deploy ECS applications using Terraform

## Archicture

![Arquitetura](https://github.com/ArianeASA/iac-ecs-apps/assets/84243254/07d85ed0-c641-4933-8ca8-cd52746ca2ce)



## Padrão Saga Coreografado

Escolhemos o padrão Saga Coreografado por ser simples e escalável. Isso significa que cada microserviço sabe o que fazer sem precisar de um controle central, o que torna mais fácil de implementar e menos complexo. Além disso, cada serviço pode ser aumentado ou diminuído sem afetar os outros, o que ajuda a tornar o sistema mais robusto.
A coreografia não precisa de um controle central, então não tem um único ponto onde algo pode dar errado, o que ajuda a manter o sistema mais confiável e disponível. Isso é muito importante em arquiteturas que usam microserviços, onde uma falha em um serviço pode causar problemas grandes.
Por essas razões, o padrão Saga Coreografado foi a nossa escolha para o Sistema FIAP-FOOD, por ser eficiente, escalável e resistente, sem precisar de um controle central que pudesse ser um único ponto de falha.

## Repositorios

Order: https://github.com/guigon95/order-fiap-food

Payment: https://github.com/guigon95/payment-fiap-food

Production: https://github.com/guigon95/production-fiap-food

Infra em terraform: https://github.com/ArianeASA/iac-ecs-apps

Auth : https://github.com/ArianeASA/auth-fiap-food
