Install SSH Service:
  pkg.latest:
    - name: ssh

Install fail2ban:
  pkg.latest:
    - name: fail2ban
