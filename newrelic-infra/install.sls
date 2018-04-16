base:
  pkgrepo.managed:
    - name: deb https://download.newrelic.com/infrastructure_agent/linux/apt {{ grains.get('oscodename') }} main
    - dist: {{ grains.get('oscodename') }}
    - file: /etc/apt/sources.list.d/newrelic.list
    - gpgcheck: 1
    - architectures: amd64
    - key_url: https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg

install-agent:
  pkg.installed:
    - name: newrelic-infra
    - version: 1.0.790
