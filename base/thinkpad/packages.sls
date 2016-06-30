Power Manager Packages:
  pkg.latest:
    - pkgs:
      - tlp
      - tlp-smapi-dkms
      - apci-call-dkms
    - onlyif: dmidecode | grep 'ThinkPad'
