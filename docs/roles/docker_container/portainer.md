# Portainer

Creates and starts a portainer container listening on `{{ inventory_hostname }}/portainer`.
If `ssl_enabled` is set to `true` the connection is ssl terminated.

## Portainer variables

| name                     | purpose                                     | default value | remark                             |
| ------------------------ | ------------------------------------------- | ------------- | ---------------------------------- |
| portainer_admin_password | The administrator password for portainer    |               | automatically generated if not set |
| portainer_edition        | The edition of portainer (ce/ee) to be used | portainer-ce  |                                    |
| portainer_version        | The version of portainer to be used         | latest        |                                    |
