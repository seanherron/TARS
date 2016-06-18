SSHD Config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/files/sshd_config
    - watch_in:
      - service: Ensure SSH Running

SSH Key Directory:
  file.directory:
    - name: /home/{{ pillar['user'] }}/.ssh
    - mode: 700
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}

SSH Authorized Keys:
  file.touch:
    - name: /home/{{ pillar['user'] }}/.ssh/authorized_keys
    - mode: 400
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}
