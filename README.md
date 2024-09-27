# linux-dns-403
![linux-dns-403](https://github.com/user-attachments/assets/27cf7f4b-341f-43c1-93c3-65f78a4b8800)
A Linux tool for easily changing DNS settings to bypass restrictions and improve access.

## Supported DNS Providers:
1. **[403 Online](https://403.online)** - `10.202.10.202`, `10.202.10.102`
2. **[Radar Game](https://radar.game)** - `10.202.10.10`, `10.202.10.11`
3. **[Pishgaman](https://pishgaman.net)** - `5.202.100.100`, `5.202.100.101`
4. **[Shecan](https://shecan.ir)** - `178.22.122.100`, `185.51.200.2`
5. **[Begzar](https://begzar.ir)** - `185.55.226.26`, `185.55.225.25`
6. **[Electro](https://electrotm.org/)** - `78.157.42.100`, `78.157.42.101`
7. **Restart to default** - Restore the original `resolv.conf` from the backup (if available).


## Usage

### Option 1: Run the script directly

1. Download the script:
    ```bash
    wget https://raw.githubusercontent.com/ham1dev/linux-dns-403/main/dns403.sh
    ```

2. Make the script executable:
    ```bash
    chmod +x dns403.sh
    ```

3. Run the script:
    ```bash
    sudo ./dns403.sh
    ```

### Option 2: Install the script

1. Download the script:
    ```bash
    git clone https://github.com/ham1dev/linux-dns-403.git
    cd linux-dns-403
    ```
2. Make the script executable:
    ```bash
    chmod +x install.sh
    ```    
    
3. Run the installation script:
    ```bash
    sudo ./install.sh
    ```

