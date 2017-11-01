restart-service:
  service.running:
    - name: newrelic-infra
    - enable: True
    - reload: True
    - watch:
      - file: create-config