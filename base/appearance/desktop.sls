Set Desktop Backgrounds:
  file.recurse:
    - source: salt://appearance/files/desktop_backgrounds
    - name: /home/sean/.desktop_backgrounds
    - makedirs: True
