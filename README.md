# Дипломный практикум в Yandex.Cloud

Текст задания доступен по [ссылке](https://github.com/netology-code/devops-diplom-yandexcloud/blob/main/README.md).

## Выполнение

### Шаг 1 - создание bucket 

Перед инициализацией проекта укажем в `TF_CLI_CONFIG_FILE` путь до переменной .terraformrc: `export TF_CLI_CONFIG_FILE=/path/to/.terraformrc`. В сам файл закинем  следующее содержимое:  

```bash
provider_installation {
  network_mirror {
    url = "https://terraform-mirror.yandexcloud.net/"
    include = ["registry.terraform.io/*/*"]
  }
  direct {
    exclude = ["registry.terraform.io/*/*"]
  }
```
Далее создаем tf файлы для конфигурации сервисного аккаунта, провайдера, static key и bucket для хранения конфигурации. Нам далее будут необходимы значения `access_key` и `secret_key`. добавим их в `output.tf`. Помещаем файлы tf в директорию [stage 1](infrastructure/stage_1). 
Оттуда выполняем команду `terraform init`. Получаем на выходе:

```bash
Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

access_key = "YCA...blah..."
secret_key = <sensitive>
```

### Шаг 2 - инициализация сети и создание s3 backend
