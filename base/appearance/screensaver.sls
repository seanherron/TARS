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

  cmd.run:
    - name: /usr/bin/rss-glx_install
    - runas: {{ pillar['user'] }}
