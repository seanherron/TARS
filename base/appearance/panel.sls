Set gtk custom colors:
  file.managed:
    - name: /home/{{ pillar['user'] }}/.gtkrc-2.0
    - source: salt://appearance/files/gtkrc-2.0
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}

