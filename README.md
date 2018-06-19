Role Name
=========

Role to install bats-core from source.

Requirements
------------

git module requirements (as of writing git>=1.7.1)

#### Run without git requirement on target

If the target doesn't have git requirements, but the ansible controller does you can use clone_locally=true
to clone to the controller and then copy to the host.

Role Variables
--------------

#### Optional

- clone_locally: defaults to false, when set to true will clone to controller instead of target host 
- clone_dir: This is the directory which bats-core will be cloned to
- local_clone_dir: This is the directory bats-core will be cloned to if git isn't on the target

Dependencies
------------

N/A

Example Playbook
----------------

Run against a host that has git module requirements:

    - hosts: servers
      roles:
         - { role: Brian-Williams.bats-core }


Or install git module requirements on ansible controller:

    - hosts: servers
      roles:
         - { role: Brian-Williams.bats-core, clone_locally: true }

License
-------

MIT
