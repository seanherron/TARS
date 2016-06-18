Install Numix:
  pkg.installed:
    - name: murrine-themes

  git.latest:
    - name: https://github.com/numixproject/numix-gtk-theme.git
    - target: /usr/share/themes/Numix
    - force_clone: True
    - require:
      - pkg: Install Git

Install Numix Holo:
  git.latest:
    - name: https://github.com/dar5hak/Numix-Holo.git
    - target: /usr/share/themes/Numix-Holo
    - force_clone: True
    - require:
      - pkg: Install Git

Install Xfce Theme Manager:
  pkgrepo.managed:
    - ppa: rebuntu16/other-stuff
  pkg.installed:
    - name: xfce-theme-manager

Ensure Appropriate Icon Folder for Numix:
  file.directory:
    - name: /usr/local/share/icons
    - makedirs: True  

Install Numix Icons:
  git.latest:
    - name: https://github.com/numixproject/numix-icon-theme.git
    - target: /usr/local/share/icons/numix-icon-theme

Numix Icon Theme:
  file.symlink:
    - name: /usr/local/share/icons/Numix
    - target: /usr/local/share/icons/numix-icon-theme/Numix

Numix Light Icon Theme:
  file.symlink:
    - name: /usr/local/share/icons/Numix-Light
    - target: /usr/local/share/icons/numix-icon-theme/Numix-Light

Install Numix Circle Icons:
  git.latest:
    - name: https://github.com/numixproject/numix-icon-theme-circle.git
    - target: /usr/local/share/icons/numix-icon-theme-circle
    - force_clone: True
    - require:
      - pkg: Install Git

Numix Circle Icon Theme:
  file.symlink:
    - name: /usr/local/share/icons/Numix-Circle
    - target: /usr/local/share/icons/numix-icon-theme-circle/Numix-Circle

Numix Circle Light Icon Theme:
  file.symlink:
    - name: /usr/local/share/icons/Numix-Circle-Light
    - target: /usr/local/share/icons/numix-icon-theme-circle/Numix-Circle-Light


