# PowerdnsAdmin

## PowerdnsAdmin variables

| name                                 | purpose                                | default value | remark |
| ------------------------------------ | -------------------------------------- | ------------- | ------ |
| powerdns_admin_cpu_shares            | The number of cpu shares allowd to use | 512           |        |
| powerdns_admin_mariadb_dbname        | The mariadb database name              | pdnsadb       |        |
| powerdns_admin_mariadb_root_password | The mariadb root password              |               |        |
| powerdns_admin_mariadb_user          | The mariadb user name                  | pdnsa         |        |
| powerdns_admin_mariadb_user_password | The mariadb user password              |               |        |
| powerdns_admin_mem_limit             | The memory limit allowed to use        | 200m          |        |
| powerdns_admin_pids_limits           | The allowed number of pids             | 10            |        |
| powerdns_admin_traefik_router_rules  | Traefik router rules (Host...)         |               |        |

### Example configuration

```yaml
powerdns_admin_traefik_router_rules:
  - dns.testerion.ch
```
