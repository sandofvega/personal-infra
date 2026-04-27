# Personal Infrastructure

#### Terraform Init

```bash
terraform init -backend-config=config.s3.tfbackend
```

#### Install Ansible requirements

```bash
ansible-galaxy install -r ansible/requirements.yml
```

#### Run Ansible Playbook (in local)

```bash
ansible-playbook -i ansible/inventory.ini ansible/playbooks/initial-setup.yml --vault-password-file ansible/.vault_pass --check -K
```