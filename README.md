# [Odoo](https://www.odoo.com "Odoo's Homepage") Install Script

This script is based on the install script from André Schenkels (https://github.com/aschenkels-ictstudio/openerp-install-scripts)
but goes a bit further and has been improved. This script will also give you the ability to define an xmlrpc_port in the .conf file that is generated under /etc/
This script can be safely used in a multi-odoo code base server because the default Odoo port is changed BEFORE the Odoo is started.

## Installation procedure

##### 1. Download the script:
```
sudo wget https://raw.githubusercontent.com/epierre3/InstallScript/12.0/odoo_install.sh
```
##### 2. Modify the parameters as you wish.
sudo nano odoo_install.sh

There are a few things you can configure, this is the most used list:<br/>
```OE_USER``` will be the username for the system user.<br/>
```INSTALL_WKHTMLTOPDF``` set to ```False``` if you do not want to install Wkhtmltopdf, if you want to install it you should set it to ```True```.<br/>
```OE_PORT``` is the port where Odoo should run on, for example 8069.<br/>
```OE_VERSION``` is the Odoo version to install, for example ```12.0``` for Odoo V12.<br/>
```IS_ENTERPRISE``` will install the Enterprise version on top of ```12.0``` if you set it to ```True```, set it to ```False``` if you want the community version of Odoo 12.<br/>
```OE_SUPERADMIN``` is the master password for this Odoo installation.<br/>

##### 3. Make the script executable
```
sudo chmod +x odoo_install.sh
```
##### 4. Execute the script:
```
sudo ./odoo_install.sh
```

## Optional

##### 5. Webserver as Proxy:
```
Download script
sudo wget https://raw.githubusercontent.com/epierre3/InstallScript/12.0/nginx_install.sh

Make the script executable
sudo chmod +x nginx_install.sh

Execute the script:
sudo ./nginx_install.sh
```
##### 6. Secure your webserver:
```
Download script
sudo wget https://raw.githubusercontent.com/epierre3/InstallScript/12.0/certbot_install.sh

Make the script executable
sudo chmod +x certbot_install.sh

Execute the script:
sudo ./certbot_install.sh
```
##### 7. Set-Up and Enable firewall:
```
Download script
sudo wget https://raw.githubusercontent.com/epierre3/InstallScript/12.0/firewall_install.sh

Make the script executable
sudo chmod +x firewall_install.sh

Execute the script:
sudo ./firewall_install.sh
