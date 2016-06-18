Install Chromium:
  pkg.latest:
    - name: chromium-browser

Install Chrome:
  pkg.installed:
    - sources:
      - google-chrome-stable: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

Install Lastpass:
  cmd.run:
    - name: |
        sudo curl -o /tmp/lplinux.tar.bz2 -L https://lastpass.com/lplinux.tar.bz2
        cd /tmp
        sudo tar xjvf lplinux.tar.bz2
        cd /tmp/lplinux
        sudo chown -R sean /tmp/lplinux
        ./install_lastpass.sh
    - runas: sean
    - unless: test -d /home/sean/.lastpass
