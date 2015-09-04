# new-ubuntu-config
Bash and makefiles for ubuntu new configurations (server and desktop)

## Ubuntu Server Configuration

A standard configuration makefiles for your server (or desktop).

[Digital ocean](https://www.digitalocean.com/?refcode=b86bf62163aa) provides
cheap cloud servers (you can start as low as 5$ per month).

As I am beginer in cloud server, but often have to reinstall my own Ubuntu
distribution, I decided to automate as much as possible with bash files. 

### Initial config 

I would defintively recommand to read and digest the following tutorials

+ [How To Connect To Your Droplet with SSH](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh)
+ [Initial Server Setup with Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04) 
+ [Additional Recommended Steps for New Ubuntu 14.04 Servers](https://www.digitalocean.com/community/tutorials/additional-recommended-steps-for-new-ubuntu-14-04-servers)

### Advantage for data analysis

As a bonus, you'll get the following bonus: 
+ my emacs configuration
+ A script for upgrading `R` (or `R-cran`) with your usual `apt-get` command.
+ For `python`, the  scipy kit (IPython, pandas, numpy, etc.) and scitkit.
+ Clojure and clojurescript (with lein).

### Nothing fancy

This has no intention to bring something new, it is much for educational purpose
and a good memo for myself or anyone who encounter the same challenge as me.

## Notes

+ Timezone is set as Zürich (GMT+1).

# License

Unlicense. See [here](http://choosealicense.com/licenses/) what it means.
