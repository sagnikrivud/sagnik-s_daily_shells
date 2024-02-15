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
$ /Permission.sh <File/Folder-name> <permission_code>
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
> Renew SSL certificate using this file, please follow the instruction in.

```sh
$ chmod +x SSLRenew.sh
```
```sh
$ ./SSLRenew.sh <www.whatYourDomain.com>
```

