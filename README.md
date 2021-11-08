# gitlab-runner
Gitlab runner in docker container simple example

```shell
chmod u+x register.sh
./register.sh my_registration_token
```
This creates a config.toml file which should be mounted into container.  
It also register the runner so it should be visible and available in gitlab.  

### Configuration of host
Enable ssh access between runner and deploy host to run a CI/CD job
```shell
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub deploy@192.160.0.101
```
