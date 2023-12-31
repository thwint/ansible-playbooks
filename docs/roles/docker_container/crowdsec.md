# Crowdsec

Setup and configue Crowdsec and Crowdsec traefik bouncer.

## Variables

| name                     | purpose                                                | default value | remark                               |
| ------------------------ | ------------------------------------------------------ | ------------- | ------------------------------------ |
| crowdsec_bouncer_api_key | The API key to communicate with the crowdsec container |               | `cscli bouncers add bouncer-traefik` |
| crowdsec_collections     | A list of enabled collections                          |               |                                      |
| crowdsec_enabled         | Whether crowdsec is enabled or not                     | false         |                                      |
| crowdsec_enroll_token    | The enrollment token to register a new engine          |               |                                      |

### Example configuration

```yaml
crowdsec_enabled: true
crowdsec_collections:
  - crowdsecurity/sshd
  - crowdsecurity/linux
  - crowdsecurity/traefik
  - crowdsecurity/http-cve
  - crowdsecurity/whitelist-good-actors
crowdsec_bouncer_api_key: <generated key>
crowdsec_enroll_token: <key taken from crowdsec.net>

```
