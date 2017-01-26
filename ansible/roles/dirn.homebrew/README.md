Homebrew
========

[![Build Status](https://travis-ci.org/dirn/ansible-homebrew.svg?branch=master)](https://travis-ci.org/dirn/ansible-homebrew)

An Ansible role to install and update Homebrew (or Linuxbrew).

Requirements
------------

Only Ansible is required.

Role Variables
--------------

Several variables are available to configure the role.

To set where homebrew will be installed:

    homebrew_root: /usr/local

To control which libraries will be installed by Homebrew:

    homebrew_libraries: []

To control which cask libraries will be installed by Homebrew:

    homebrew_casks: []
    homebrew_casks_with_sudo: []

To keep Homebrew up-to-date:

    homebrew_update: true

To keep all of the libraries installed by Homebrew up-to-date:

    homebrew_upgrade_all: true

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
        - role: dirn.homebrew
          homebrew_root: /opt/homebrew
          homebrew_libraries:
            - git
            - vim
            - zsh
          homebrew_casks:
            - 1password
            - alfred
            - iterm2
          homebrew_casks_with_sudo:
            - seil
          homebrew_update: true
          homebrew_upgrade_all: false

License
-------

MIT

Author Information
------------------

This role was created by [Andy Dirnberger](https://github.com/dirn).
