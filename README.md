
# Smart Social Media, LLC

## Vagrant

### 0. Install ruby
### 1. Install Vagrant
Download and install [vagrant](http://www.vagrantup.com/).

### 2. Install a hypervisor
#### a. Install Virtualbox
Download and install [Virtualbox](https://www.virtualbox.org/).
#### b. Install VMWare (Fusion/Workstation)
Download and install VMWare and install the vagrant vmware plugin and license.

### 3. Install Librarian-chef and cookbooks
You must install [librarian-chef](https://github.com/applicationsonline/librarian-chef):

```bash
gem install librarian-chef

cd chef-repo && librarian-chef install && cd ../
```

### 4. Run virtual machine
```bash
 vagrant up
 ```
 