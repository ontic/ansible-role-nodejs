# Documentation

## Example

```
nodejs_version: '8.x'
nodejs_packages:
  - name: 'imagemagick'
nodejs_npm_global_user: 'web'
nodejs_npm_global_group: 'web'
nodejs_npm_global_config_prefix: '/usr/local/lib/npm'
nodejs_npm_global_config_unsafe_perm: 'false'
nodejs_npm_global_packages:
  - name: 'node-sass'
  - name: 'jslint'
nodejs_npm_packages:
  - name: 'paper-jsdom'
    user: 'web'
    path: '~/application'
```

## Role Variables

Available variables are listed below, along with default values (see [defaults/main.yml](/defaults/main.yml)):

```
nodejs_version: '8.x'
```

The Node.js version to install. `8.x` is the default and should work on the latest versions of
Debian/Ubuntu and RHEL/CentOS.

```
nodejs_packages:
```

A list of the Node.js packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.
This can be helpful when NPM packages depend on system packages.

```
nodejs_npm_global_user:
```

The user for whom the NPM packages will be installed globally by. When omitted this defaults to `ansible_user`.

```
nodejs_npm_global_group:
```

The group for whom the NPM packages will be installed globally by. When omitted this defaults to `nodejs_npm_global_user`.

```
nodejs_npm_global_config_prefix: '/usr/local/lib/npm'
```

The global NPM package installation directory. This should be writable by the `nodejs_npm_global_user` and or `nodejs_npm_global_group`.

```
nodejs_npm_global_config_unsafe_perm: 'false'
```

When set to `true` switching the UID/GID when running package scripts is suppressed. If set explicitly to
`false`, then installing Node.js packages globally as a non-root user will fail.

```
nodejs_npm_global_packages:
```

A list of the Node.js packages to install globally. Each package supports all parameters from the
[npm](http://docs.ansible.com/ansible/npm_module.html) module, with the exception of the `global`
parameter being hard-coded to `yes`

```
nodejs_npm_packages:
```

A list of the Node.js packages to install. Each package supports all parameters from the
[npm](http://docs.ansible.com/ansible/npm_module.html) module. An additional parameter `user` must be
specified, which determines what user is responsible for executing the installation of a package.