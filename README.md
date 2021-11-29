# Setup for scpt

In order to check in scpt into git and to be able to diff. Install the `git-ascr-filter` in /usr/local/bin so that 
the script is compile and decompiled as you check in and out the scpt


References:

https://stackoverflow.com/questions/7641806/how-would-you-put-an-applescript-script-under-version-control
https://github.com/chauncey-garrett/scripts


```bash
cd <projects dir>
git clone https://github.com/chauncey-garrett/scripts.git apple-scripts
cd apple-scripts
ln -s <projects dir>/apple-scripts/git-ascr-filter.sh /usr/local/bin/git-ascr-filter
```