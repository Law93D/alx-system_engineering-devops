0x0B. SSH

Task 0: Use a Private Key
This task involves creating a Bash script to connect to a server using SSH with a private key. The script utilizes the ssh command with appropriate flags to establish a connection without password authentication.

Task 1: Create an SSH Key Pair
In this task, a Bash script is created to generate an RSA key pair. The private key is protected by a passphrase. Upon execution, the script generates the key pair and saves them in the specified directory.

Task 2: Client Configuration File
The task involves configuring the SSH client's configuration file (~/.ssh/config) to use a specific private key and disable password authentication. This configuration file ensures seamless authentication while connecting to SSH servers.

Task 3: Let Me In!
In this task, the provided SSH public key is added to the authorized_keys file on the server. This allows the user to connect to the server using the specified public key.

Task 4: Client Configuration File (w/ Puppet)
Puppet is used in this task to automate the configuration of the SSH client's configuration file. The Puppet manifest file sets up the client to use a specific private key and disable password authentication.
