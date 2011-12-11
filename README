Checkip is simple script that checks to see if your external IP address changed and if so sends an email with the new IP address. It requires sendemail.

Source:	http://caspian.dotconf.net/menu/Software/SendEmail
AUR: 		https://aur.archlinux.org/packages.php?ID=7335

* Be sure to edit /etc/checkip.conf to reflect your email address and server before running the script.
* Be sure to add an entry to your users crontab to have the script run at some regular interval.

Edit your users crontab by typing: crontab -e

Examples:
Once per hour:      0 * * * *			/usr/bin/checkip &> /dev/null
Every four hours:   0 */4 * * *		/usr/bin/checkip &> /dev/null 
