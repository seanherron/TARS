Network Manager Configuration:
  file.managed:
    - name: /etc/NetworkManager/NetworkManager.conf
    - source: salt://networkmanager/files/NetworkManager.conf
    - watch_in:
      - service: Network Manager Service
  
