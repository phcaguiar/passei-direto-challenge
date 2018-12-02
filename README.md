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

```
$ sudo apt-get install git -y
```  

  * Install make

```
$ sudo apt-get install make -y
```

This environment was run and validated on Ubuntu distribution

## How to make

Note: Before creating the environment it is necessary to pass some environment variables:

  * MYSQL_PASSWORD - Variable defined for MYSQL user password that will be used by the Node API
  * MYSQL_ROOT_PASSWORD - Variable set for MYSQL root password
  * MYSQL_PORT - Variable set to MYSQL port
  * NODEJS_API_PORT - Variable defined for the Node API port
  * NGINX_LISTEN_PORT - Variable set for Nginx proxy port

### STEP 1 - Clone the repo

```
$ sudo git clone https://github.com/phcaguiar/passei-direto-challenge.git
```

### STEP 2 - Enter the environment variables:

```
$ export MYSQL_PASSWORD=INSERT SOME PASSWORD
```

```
$ export MYSQL_ROOT_PASSWORD=INSERT SOME PASSWORD
```

```
$ export MYSQL_PORT=INSERT SOME PORT
```

```
$ export NODEJS_API_PORT=INSERT SOME PORT
```

```
$ export NGINX_LISTEN_PORT=INSERT SOME PORT
```

### STEP 3 - Prepare the environment

```
$ make config
```

  * STEP 4 - Create the environment

```
$ make deploy
```

## Access

http://localhost/notes

## API Functional Test 

To test the operation of the API, I performed the following commands in powershell:

  * Post Method

```
PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes' -Method Post -Body 'API Test'
```

  * Get method

```
PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes' -Method Get | ConvertFrom-Json
```

  * Delete method

```
PS C:\> Invoke-WebRequest -Uri 'http://localhost/notes/1' -Method Delete
```

## API Avaliation

  * Post Method - To perform this method it was necessary to pass some text value to the API, because in case of null value, we would receive the message "texto inválido". Note: It was also not possible to send special characters like "?, Ç, &" and so on.

  * Get Method - This was just to fetch some specific content.

  * Delete method - To perform this method it was necessary only to pay attention to the valid id in the API, because in case of invalid id, we would receive the message "id inválido".

## End :raised_hands: