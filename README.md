TARS
====

TARS is the desktop configuration of Sean Herron. It's designed to suit my needs and set up everything just the way I like it. TARS is designed to run on Xubuntu 16.04, other distros/versions may not work.

## Important Notes

- Clone TARS in to ~/.tars on your computer
- Run TARS with `sudo ~/.tars/tars.sh`
- Right now, it sets `sean` as the username on a lot of things. I have a TODO to fix this and make it generic to any user.
- I suggest running `tars.sh` on a cron job
- After initial installation, you may need to run the following:

```
xfconf-query -c xsettings -p /Net/ThemeName -s "Numix-Holo"
xfconf-query -c xfwm4 -p /general/theme -s "Numix-Holo"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Numix-Circle"
```

- You should also set your desktop background folder to ~/.desktop_backgrounds in order to benefit from the photos I've selected.

Enjoy!
