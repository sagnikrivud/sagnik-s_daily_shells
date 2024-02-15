<!-- # File Setup -->

<!-- [![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid) -->

[![My LinkedIn Profile](https://media.licdn.com/dms/image/C5603AQEC8ch_Z-bmpg/profile-displayphoto-shrink_200_200/0/1589660737782?e=2147483647&v=beta&t=bkzNsi69jrmxF804_L0f7GsGYKj8_BP_mDu4pF9wg20)](https://in.linkedin.com/in/sagnik-dey-483423a9)

 ✨Sagnik's Magic ✨

## File Contents 

- Git Operation shell script
- File permission shell script
- MongoDb Backup script
- Mysql DB backup from Host script
- Load SSH key for Server after ssh_pub key generate.
- Review Javascript file.
- Renew SSL certification.
- File syncing between 2 directories.
- Application Backup in zip folder.
- MSSQL DB backup from Azure RDB host.
- Postgre SQL Db backup.


## Installation

[Git Operation (Git.sh)](https://github.com)

```sh
$ chmod +x Git.sh
```

```sh
$ ./Git.sh "commit-message" <pull_branch_name> <push_branch_name>
```

[Mongodb Cluster backup (MongoBackup.sh)](https://www.mongodb.com/cloud/atlas/register)
> Create .env file and a DB folder in the root directory where all backup files will be stored, and add the value like this MONGODB_URI=""
```sh
$ chmod +x MongoBackup.sh
```
```sh
$ ./MongoBackup.sh
```
[Mysql RDS backup (AWS RDS) (MysqlBackup.sh)](https://aws.amazon.com/free/database/?gclid=Cj0KCQiA5rGuBhCnARIsAN11vgS3_Cg_4Rkay0s8YevvXhPwc5pDA_p16aTlJ-a0R4h-E6mmbmc0WigaApJrEALw_wcB&trk=a049d6a3-611f-4ee9-9d3b-e88a4b66272f&sc_channel=ps&ef_id=Cj0KCQiA5rGuBhCnARIsAN11vgS3_Cg_4Rkay0s8YevvXhPwc5pDA_p16aTlJ-a0R4h-E6mmbmc0WigaApJrEALw_wcB:G:s&s_kwcid=AL!4422!3!659622174426!e!!g!!amazon%20mysql%20rds!11542049405!107751951770)

> Create .env file and a DB folder in the root directory where all backup files will be stored, and add the value like this
> DB_HOST=your-rds-endpoint.region.rds.amazonaws.com
> DB_PORT=your-rds-port
> DB_USER=your-username
> DB_PASSWORD=your-password
> DB_NAME=your-database-nam

```sh
$ chmod +x MysqlBackup.sh
```
```sh
$ ./MysqlBackup.sh
```

[Linux file/folder permission (Permission.sh)](https://www.guru99.com/file-permissions.html)
> Permission.sh file can be use for to set or update permission of any file or folder in Linux enviorment, please follow the rule

```sh
$ chmod +x Permission.sh
```
```sh
$ ./Permission.sh <File/Folder-name> <permission_code>
```
[SSh Key load (SSHKeyLoad.sh)](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
> SSH key generate and load the key at server for uninterrupted Git pull/push operation

```sh
$ chmod +x SSHKeyLoad.sh
```
```sh
$ ./SSHKeyLoad.sh user-email@domain.com
```

[SSL Renew for Server (SSLRenew.sh)](https://www.name.com/support/articles/205190858-renewing-an-ssl-certificate)
> Renew SSL certificate using this file, please follow the instruction in, also can set in cron.

```sh
$ chmod +x SSLRenew.sh
```
```sh
$ ./SSLRenew.sh <www.whatYourDomain.com>
```
> Set cron in cron tab.
```sh
$ 0 0 * * * /path/to/SSLRenew.sh <www.whatYourDomain.com>
```

[File syncing between 2 directories (FileSync.sh)](https://www.baeldung.com/linux/synchronize-linux-directories)
```sh
$ chmod +x FileSync.sh
```
```sh
$ ./FileSync.sh </path/to/source_directory> </path/to/destination_directory>
```

[Take Application backup (ApplicationBackup.sh)](https://iq.opengenus.org/automated-backup-in-linux-using-shell-scripting-and-crontab-scheduler/)

> Take a backup of entire project application and stored in a zip file.

```sh
$ chmod +x ApplicationBackup.sh
```
```sh
$ ./ApplicationBackup.sh </path/to/project_application> </path/to/backup_directory>
```

[MSSQL Server DB backup from Azure DB host (MSSQLServerDBBackup.sh)](https://azure.microsoft.com/en-in/products/azure-sql/database)
> This script will take credentials from .env file, please create same and keep the DB credentials as following
SERVER_NAME=host_server_name.database.windows.net
DATABASE_NAME=database_name
USERNAME=username
PASSWORD=password

```sh
$ npm install dotenv-cli
```
```sh
$ chmode  +x MSSQLServerDBBackup.sh
```
```sh
$ ./MSSQLServerDBBackup.sh
```

[PM2 Engine for start Node Server (PM2.sh)](https://pm2.keymetrics.io/)
> This script is to both install setup of PM2 and run the Node server after deployment of Node js application at server instance
```sh
$ chmod +x PM2.sh
```
```sh
$ ./PM2.sh <app_name> </path/to/nodejs_app>
```
[Postgre SQL Backup from Host (PgSQLBackup.sh)](https://www.cloudclusters.io/cloud/postgresql/?utm_source=google.com&utm_medium=ads&utm_term=postgresql%20cloud&gclid=Cj0KCQiA5rGuBhCnARIsAN11vgRDqZMniZBtVF8ChSDxJ6J1Vu1r7o2wqTM_NPGHJ-m8739VoKHv-dgaAhsAEALw_wcB)

> make a .env file and keep this details as there DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=your_database_name
DB_HOST=postgre-sql-domain.net

```sh
$ chmod +x PgSQLBackup.sh
```
```sh
$ ./PgSQLBackup.sh
```

---
## 💻 Tech Stack
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=plastic&logo=css3&logoColor=white) ![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=plastic&logo=php&logoColor=white) ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=plastic&logo=html5&logoColor=white) ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=plastic&logo=javascript&logoColor=%23F7DF1E) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=plastic&logo=amazon-aws&logoColor=white) ![Vue.js](https://img.shields.io/badge/vuejs-%2335495e.svg?style=plastic&logo=vuedotjs&logoColor=%234FC08D) ![Vuetify](https://img.shields.io/badge/Vuetify-1867C0?style=plastic&logo=vuetify&logoColor=AEDDFF) ![NPM](https://img.shields.io/badge/NPM-%23000000.svg?style=plastic&logo=npm&logoColor=white) ![jQuery](https://img.shields.io/badge/jquery-%230769AD.svg?style=plastic&logo=jquery&logoColor=white) ![Express.js](https://img.shields.io/badge/express.js-%23404d59.svg?style=plastic&logo=express&logoColor=%2361DAFB) ![Laravel](https://img.shields.io/badge/laravel-%23FF2D20.svg?style=plastic&logo=laravel&logoColor=white) ![NuxtJS](https://img.shields.io/badge/Nuxt-black?style=plastic&logo=nuxt.js&logoColor=white) ![Socket.io](https://img.shields.io/badge/Socket.io-black?style=plastic&logo=socket.io&badgeColor=010101) ![Apache](https://img.shields.io/badge/apache-%23D42029.svg?style=plastic&logo=apache&logoColor=white) ![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=plastic&logo=mariadb&logoColor=white) ![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=plastic&logo=mongodb&logoColor=white) ![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=plastic&logo=mysql&logoColor=white) ![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=plastic&logo=sqlite&logoColor=white) ![Inkscape](https://img.shields.io/badge/Inkscape-e0e0e0?style=plastic&logo=inkscape&logoColor=080A13) ![Jira](https://img.shields.io/badge/jira-%230A0FFF.svg?style=plastic&logo=jira&logoColor=white) ![Vagrant](https://img.shields.io/badge/vagrant-%231563FF.svg?style=plastic&logo=vagrant&logoColor=white)
![Shell](https://img.shields.io/badge/shell-%231563FF.svg?style=plastic&logo=shell&logoColor=white) ![Cakephp](https://img.shields.io/badge/cakephp-%231563FF.svg?style=plastic&logo=cakephp&logoColor=white) ![Arduino](https://img.shields.io/badge/arduino-%231563FF.svg?style=plastic&logo=arduino&logoColor=white)
