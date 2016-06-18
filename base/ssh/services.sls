Ensure SSH Running:
  service.running:
    - name: ssh
    - enable: True
    - require:
      - pkg: Install SSH Service

