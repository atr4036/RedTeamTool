# RedTeamTool
The goal of this tool is to create a persistant SSH conenction to a victims machine. To do this the program will generate an SSH key pair if one does not already exist for your machine. It will then copy the public key to the victims ~/.ssh/authorized_keys file so that you now have persistant access on that machine. It will then use chattr +i to make the authorized_keys and sshd_config files immutable, making sure that the root user cant delete them unless they know how to remove
the immutable flag.

Future applications will include the use of sshpass and a list of connections to make that way  the username and password only have to be typed once. SSH pass allows you to type an SSH key in plaintext and use it for SSH.
