Install Claws Mail:
  pkg.latest:
    - name: claws-mail

Install Claws Mail Addons:
  pkg.latest:
    - pkgs:
      - claws-mail-tools
      - claws-mail-plugins
      - claws-mail-themes
