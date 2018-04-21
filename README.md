![alt text](https://github.com/phcaguiar/passei-direto-challenge/blob/master/img/logo_passeidireto.svg)


## The Challenge

The project consists of preparing the environment provisioning to run an API used for creating and
annotation query.

## Tech

  * [Nodejs](https://nodejs.org/en/)
  * [Mysql](https://www.mysql.com/)
  * [Nginx](https://nginx.org/en/)
  * [Ansible](https://www.ansible.com/)
  * [Docker](https://www.docker.com/)
## Requirements

  * Install git 
  * Install make

This environment was run and validated on Ubuntu distribution

## How to make

Note: Before executing the creation of the environment it is necessary to inform the passwords of the "notes-api" and "root" mysql users in the "passei-direto-challenge/docker-compose/mysql/Dockerfile" file. These passwords must be entered into the ARG MYSQL_PASSWORD and ARG MYSQL_ROOT_PASSWORD variables respectively. This has been configured this way so there is no hardcoded in the repository.

STEP 1 - Clone The Repo

  ```
     $ sudo git clone https://github.com/phcaguiar/passei-direto-challenge.git
  ```

STEP 2 - Prepare the environment

  ```
     $ make config
  ```

STEP 3 - Create the environment

  ```
     $ make deploy
  ```

Access
 
http://localhost/notes
  
## API Functional Test 

To test the operation of the API, I performed the following commands in powershell:

Post Method

  ```
     PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes' -Method Post -Body 'API Test'
  ```

Get method

  ```
     PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes' -Method Get | ConvertFrom-Json
  ```

Delete method

  ```
     PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes/1' -Method Delete
  ```

## API Avaliation

* Post Method - To perform this method it was necessary to pass some text value to the API, because in case of null value, we would receive the message "texto inválido". Note: It was also not possible to send special characters like "?, Ç, &" and so on.

* Get Method - This was just to fetch some specific content.

* Delete method - To perform this method it was necessary only to pay attention to the valid id in the API, because in case of invalid id, we would receive the message "id inválido".

## End :raised_hands:
