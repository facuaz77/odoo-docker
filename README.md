## First Step
Build the Odoo image
```sh
docker build -t your_image_name:15.0 . 
```
## Second Step
When you configured your odoo.conf and your directories in the yaml (/mnt/extra-addons), up your container

```sh
docker-compose up
```
## Third Step
Enjoy! You've built Odoo with Docker. Don't forget to customize your addons however you like. In my case, I put them in custom-addons/ , where I can enter the Odoo enterprise version I'm using and the repository I'm working with. Another option is to create a .vscode with the path that takes you to the addons you want to integrate.

docker-compose.yaml below line 35
---------Example--------------
/home/user/your_projects/odoo-docker/custom-addons/enterprise-15.0:/mnt/enterprise:cached 

## Note
Linux users uncomment that lines in docker-compose.yaml
```sh
user: "${UID}:${GID}" # for linux users
```