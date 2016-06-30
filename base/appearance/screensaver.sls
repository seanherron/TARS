Install xscreensaver:
  pkg.latest:
    - pkgs:
      - xscreensaver
      - xscreensaver-gl-extra
      - xscreensaver-data-extra
      - xscreensaver-screensaver-bsod

Install GLX:
  pkg.latest:
    - name: rss-glx

Screensaver Directory:
  file.directory:
    - name: /home/{{ pillar['user'] }}/.screensavers
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}

Install Apple Screensaver:
  pkgrepo.managed:
    - ppa: mc3man/mpv-tests

  pkg.installed:
    - name: mpv

  file.managed:
    - name: /home/{{ pillar['user'] }}/.screensavers/get_apple.py
    - source: salt://appearance/files/get_apple.py
    - mode: 755
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}

  cron.present:
    - identifier: get_apple_screensaver
    - name: /home/{{ pillar['user'] }}/.screensavers/get_apple.py /home/{{ pillar['user'] }}/.screensavers
    - hour: 2
    - minute: 16
