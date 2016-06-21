Install emacs and support libraries:
  pkg.latest:
    - pkgs:
      - emacs

Clone prelude for emacs:
  git.latest:
    - name: https://github.com/bbatsov/prelude.git
    - target: /home/{{ pillar['user'] }}/.emacs.d
    - user: {{ pillar['user'] }}

Clone deft for emacs:
  git.latest:
    - name: git://jblevins.org/git/deft.git
    - target: /home/{{ pillar['user'] }}/.emacs.d/vendor/deft
    - user: {{ pillar['user'] }}
    - require:
      - git: Clone prelude for emacs

Personal Emacs config:
  file.managed:
    - name: /home/{{ pillar['user'] }}/.emacs.d/init.el
    - user: {{ pillar['user'] }}
    - source: salt://emacs/files/init.el
    - template: jinja
    - require:
      - git: Clone prelude for emacs
