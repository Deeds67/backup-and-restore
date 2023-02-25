# Backup and restore

This repo serves as a personal utility to backup and restore linux configs, as well as automate the installation of necessary software when spinning up a clean linux env

## How to use

### Install

```bash
make install
```

To see the list of installed packages, check `install.sh`

### Backup:

```bash
make backup
```

This will create multiple config files, which can be restored by following the next section:

### Restore:

```bash
make restore
```
