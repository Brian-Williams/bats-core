Role Name
=========

Role to install bats-core from source.

Requirements
------------

#### Optional
ansible's git module requirements (as of writing git>=1.7.1)

Note: If git is not on the target it will attempt to clone to the ansible controller
and then copy over to the target. 

Role Variables
--------------

#### Optional

clone_dir: This is the directory which bats-core will be cloned to
local_clone_dir: This is the directory bats-core will be cloned to if git isn't on the target

Dependencies
------------

N/A

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: Brian-Williams.bats-core }

License
-------

MIT
