# linux-dns-403
This Bash script allows users to easily configure DNS settings on a Linux server by selecting from various DNS providers. It also includes features for backing up and restoring DNS settings and automatically handling symbolic links for `/etc/resolv.conf`.

## Features:
- **Simple DNS configuration**: Easily switch between different DNS providers.
- **Backup and restore**: Automatically backs up the current `/etc/resolv.conf` and allows restoring the default DNS configuration.

## Supported DNS Providers:
1. **[403 Online](https://403.online)** - `10.202.10.202`, `10.202.10.102`
2. **[Radar Game](https://radar.game)** - `10.202.10.10`, `10.202.10.11`
3. **[Pishgaman](https://pishgaman.net)** - `5.202.100.100`, `5.202.100.101`
4. **[Shecan](https://shecan.ir)** - `178.22.122.100`, `185.51.200.2`
5. **[Begzar](https://begzar.ir)** - `185.55.226.26`, `185.55.225.25`
6. **[Electro](https://electrotm.org/)** - `78.157.42.100`, `78.157.42.101`
7. **Restart to default** - Restore the original `resolv.conf` from the backup (if available).

## Prerequisites:
- The script must be run as **root** or with **sudo**.
- Ensure Bash is installed (common on most Linux systems).

## Installation and Usage:

### Quick Install Using `curl`:
You can install and run the script with a single command using `curl`:

```bash
sudo curl -sSL https://raw.githubusercontent.com/ham1dev/linux-dns-403/main/dns-changer.sh | bash
```
### Quick Install Using wget:
Alternatively, use wget to achieve the same result:

```bash
sudo wget -qO- https://raw.githubusercontent.com/ham1dev/linux-dns-403/main/dns-changer.sh | bash
```

