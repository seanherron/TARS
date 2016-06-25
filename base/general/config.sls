Set Keyboard Defaults:
  file.managed:
    - name: /etc/default/keyboard
    - source: salt://general/files/keyboard

Ensure Projects Directory present:
  file.directory:
    - name: /home/{{ pillar['user'] }}/Projects
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}

Ensure Notes Directory present:
  file.directory:
    - name: /home/{{ pillar['user'] }}/notes
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}
