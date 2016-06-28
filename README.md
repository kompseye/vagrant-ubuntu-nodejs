Welcome to the vagrant-ubuntu-nodejs wiki!

# Overview

# Install
* [vagrant] ()
* [virtualbox] ()

# Steps
* Clone this repo. Goto vagrant subdirectory.
 * `git clone https://github.com/kompseye/vagrant-ubuntu-nodejs.git`
 * `cd vagrant-ubuntu-tc`
 * `cd vagrant`
 * `vagrant up`
* SSH to locally running ubuntu!
        vagrant ssh
        <password is vagrant>
* nginx is already running at port 80
 * edit your /etc/hosts file
 * add: 192.168.33.10   vagrant-test.local.com
* to see nginx served app:: http://vagrant-test.local.com
* to see nginx default landing page: http://192.168.33.10
* to see manually run node.js app: 
 * `cd node`
 * `node main.js`
 * then goto browser: http://localhost:3000

# Links
* https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
* https://github.com/osteel/vagrant-blog-tutorial

