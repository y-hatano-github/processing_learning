# Processing learning repository
## What is this?
This repository is for self-study of Processing.

## Processing + WSL2 + VsCode
### WSL2
- Install Processing
    ```
    cd /opt
    sudo wget https://github.com/processing/processing4/releases/download/processing-1286-4.0.1/processing-4.0.1-linux-x64.tgz
    tar xzvf processing-4.0.1-linux-x64.tgz
    cd processing-4.0.1/
    ./install.sh
    ```
- Install `x11-apps`
    ```
    sudo apt install x11-apps
    ```
- Set environment variable `DISPLAY` as follows:   
    ```
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0 
    ```

### Vscode
- Add addon `Processing Language` to vscode
- Create `tasks.json` ([sample 1](.vscode/tasks.json), [sample 2](./triangle_rotation/.vscode/tasks.json))

### Windows
- Install VcXsrv(Xlaunch)  
    https://sourceforge.net/projects/vcxsrv/

### Run code
- Launch `Xlaunch` on Windows
- Launch Vscode on WSL2
- Select pde file on Vscode
- Ctrl + Shift + b