
# Metalware example plugin

This repository contains an example plugin for use with [Alces
Metalware](https://github.com/alces-software/metalware). This plugin is
functionally useless, but should document all significant features available
within Metalware plugins.

## Usage

To use this (or any) plugin:

```bash
# Clone this repository within `/var/lib/metalware/plugins/` - the name of the
# directory under this path that the plugin is cloned to is the name the plugin
# will be known by within Metalware (in this case 'example').
git clone https://github.com/alces-software/metalware-plugin-example.git /var/lib/metalware/plugins/example

# Configure the Metalware domain, groups, and nodes as usual. For every
# activated plugin, a new question will be asked for whether the plugin should
# be enabled at that level.
metal configure domain
metal configure group some_group
metal configure node some_node
```

If a plugin is enabled at a particular level:
- any plugin `configure` questions for that level will also be asked during
  configuration;
- a namespace for that plugin will be available for nodes it is enabled for
  under `node.plugins`, providing access to the merged plugin config for that
  node, details of the retrieved plugin files, the plugin name etc.
