# [MySQL Docker Boilerplate](https://github.com/jaimemendozadev/mysql-docker.git)

A ready to go 🚀 MySQL database that runs on Docker 🐳. Perfect for local development so you can mimick making API calls to a managed-like database environment!   


## Table of contents

- Getting Started
- Credits


## Getting Started

Open up your terminal and clone the repo locally to your computer by running the following command at the target destination: `$ git clone https://github.com/jaimemendozadev/mysql-docker.git`

Create all the database tables inside the `/tables` folder. 

Warning ☠️: If a table has `Foreign Key` references -- for example, a `Comment Table` has references to a `User Table` and a `BlogPost Table` -- the child table <strong>MUST BE CREATED AFTER</strong> creating the parent tables.

You can create one single `tables.sql` file that creates the tables in the correct order or have separate `orderNum-fileName.sql` files that are numbered in order.

Once you're done creating the Table Schemas, in your Terminal, create the Docker 🐳 image from the `Dockerfile` in the repo with the following command: `$ docker build -t nameOfYourImage .`

<strong>Don't forget the `.` period.</strong>


After the image finishes building, run the following command to start the MySQL database:

`$ docker container run -d -p 3060:3060 --name nameOfYourContainer -e MYSQL_ROOT_PASSWORD=yourSecretPassword nameOfYourImage`

You can verify that the MySQL is running by using the Docker `exec` command to log into the database:

`$ docker container exec -it nameOfYourImage bash`

You'll be redirected to the `/root` of the container and just log into MySQL:

```
root@z867q665k9b4: mysql -uroot -p

Enter password:

yourSecretPassword
```


## Credits
Many thanks 👏 to 👉 [this guy's](https://github.com/lvthillo) article on [Medium](https://medium.com/better-programming/customize-your-mysql-database-in-docker-723ffd59d8fb) as the inspiration for this repo.


## Created By

**Jaime Mendoza**
[https://github.com/jaimemendozadev](https://github.com/jaimemendozadev)