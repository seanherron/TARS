Install Remmina:
  pkgrepo.managed:
    - ppa: remmina-ppa-team/remmina-next
  
  pkg.installed:
    - pkgs:
      - remmina
      - remmina-plugin-rdp
      - libfreerdp-plugins-standard
