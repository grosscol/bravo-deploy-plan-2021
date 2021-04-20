---
author: Colin A. Gross
title: BRAVO Development
date: 2021-04-20
---

# Current Deploy

## Ansible Playbook 

```sh
∫ workspace/ansible_bravo ⮞ ansible-playbook playbook.yml
```

## Config per Host
Defined in an inventory.
```yml
---
bravo:
  hosts:
    bdev:
      ansible_host: bdev
      ansible_user: bravo-user
  vars:
    code_dir: /opt/bravo-ansible
    inst_dir: /var/bravo-ansible
    api_port: 10088 
    ui_port: 10099
    data_dir: /var/bravo/data
```

## Discrete Tasks
Defined in a playbook.
```yml
- hosts: bravo
  become: no
  tags:
    - code
  gather_facts: no
  tasks:
    - name: Checkout API code
      ansible.builtin.git:
        clone: yes
        depth: 1
        dest: "{{code_dir}}/api"
        repo: https://github.com/statgen/bravo_api.git

    - name: Checkout UI code
      ansible.builtin.git:
        clone: yes
        depth: 1
        dest: "{{code_dir}}/ui"
        repo: https://github.com/statgen/bravo_ui.git
```


## Summary Report
On stdout
<pre>
PLAY [bravo] ***********************************************
TASK [Checkout API code] ***********************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Checkout UI code] ************************************
<font color="#4E9A06">ok: [bdev]</font>
PLAY [bravo] ***********************************************
TASK [Create API instance dir] *****************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create UI instance dir] ******************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create API venv] *************************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create UI venv] **************************************
<font color="#4E9A06">ok: [bdev]</font>
PLAY [bravo] ***********************************************
TASK [Create API startup script] ***************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create API config] ***********************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create UI startup script] ****************************
<font color="#4E9A06">ok: [bdev]</font>
TASK [Create UI config] ************************************
<font color="#4E9A06">ok: [bdev]</font>
PLAY RECAP *************************************************
<font color="#4E9A06">bdev</font>: <font color="#4E9A06">ok=10  </font> changed=0    unreachable=0    failed=0    skipped=0
rescued=0    ignored=0</pre>

## Access Dev Server 
SSH Port Forwarding + Web Browser
```sh
ssh -L 10099:localhost:10099 username@bravo-dev-host
```

