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

This environment was run and validated on Ubuntu and Centos distributions

## How to make

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

## End :raised_hands:
