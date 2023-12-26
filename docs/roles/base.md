# Base role

Role to install and configure a freshly installed Ubuntu server.

Short process description:

1. Configure locales
2. Configure timezone
3. Install common packages
4. Create and configure users
5. Configure aliases

## Configuration

| name                 | purpose                                      | default value | remark                                      |
| -------------------- | -------------------------------------------- | ------------- | ------------------------------------------- |
| default_locale       | The default locale to be used                | en_US.UTF-8   |                                             |
| locales              | The locales to be configured                 |               |                                             |
| timezone             | The timezone to be used                      | Europe/Zurich | Globally used whenever timezone is required |
| users                | List of users to be created                  | n/a           |                                             |
| users[x].create_user | Whether the user should be created or not    |               |                                             |
| users[x].homedir     | The home directory                           |               |                                             |
| users[x].public_keys | Public keys to be added to `authorized_keys` |               |                                             |
| users[x].use_docker  | Whether the user is allowed to use docker    |               |                                             |
| users[x].use_sudo    | Whether the user is allowed to use sudo      |               |                                             |
| users[x].username    | The username                                 |               |                                             |

### Example configuration

Locales:

```yaml
locales:
  - en_US.UTF-8
  - de_CH.UTF-8
```

Users:

```yaml
users:
  - username: tom
    homedir: "/home/tom"
    use_sudo: true
    use_docker: true
    create_user: true
    public_keys:
      - "{{ lookup('file', 'files/ssh/id_ed25519_tom_home.pub') }}"
      - "{{ lookup('file', 'files/ssh/id_ed25519_tom_s21.pub') }}"
      - "{{ lookup('file', 'files/ssh/id_ed25519_tom_semaphore.pub') }}"
```
