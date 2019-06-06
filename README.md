# Installation

1. Open up Terminal, and clone this repository: 
    
    ```
    git clone https://github.com/joshsalvi/iterm2config.git ~/iterm2config`
    ```


2. Once the repository is cloned, run the installer:
    
    ```
    cd ~
    ./iterm2config/install.sh
    ```

    This will install iTerm2 from the command line (which you can later update), along with the appropriate theming and plugins. 

    At the end of this procedure, the program will open up iTerm2 from the CLI.


3. Copy the file `com.googlecode.iterm2.plist` from this repository to a location of your choice.

    ```
    cp ~/iterm2config/com.googlecode.iterm2.plist ~/com.googlecode.iterm2.plist
    ```


4. Open up `iTerm2 > Preferences > General`. Check the box labeled *Load preferences from a custom folder or URL* and navigate to the `com.googlecode.iterm2.plist` file you just created in the previous step. This will load some custom preferences. You can always modify the color settings under `iTerm2 > Preferences > Profiles` at your discretion. 

5. You can then install iTerm2 shell integration after opening iTerm2 with the commands below:
    
    ```
    curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
    curl -L https://iterm2.com/misc/install_shell_integration.sh | zsh
    ```
