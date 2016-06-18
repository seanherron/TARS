Set Desktop Backgrounds:
  file.recurse:
    - source: salt://appearance/files/desktop_backgrounds
    - name: /home/{{ pillar['user'] }}/.desktop_backgrounds
    - makedirs: True
