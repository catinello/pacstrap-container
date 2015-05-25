pacstrap-container
===

Simple way to create arch-linux systemd containers with removed spare packages.

##Installation:##

    # git clone https://github.com/catinello/pacstrap-container.git
    # cd pacstrap-container; make && make PREFIX=/usr install

##Requirements:##

    # pacman -S systemd pacman arch-install-scripts

##Usage:##

    pacstrap-container (create|delete) [OPTIONS] NAME
    Description:
      (COMMANDS):
    	create		create a new container
    	delete		delete a container
      [OPTIONS]:
    	create
    		-b	enable container startup on boot
    		-v 	vanilla minimal linux os
    	delete
    		--
      NAME:
    	systemd container/machine name

##Examples:##

Creating a simple arch systemd container:

    # pacstrap-container create MyContainer
    creating -> installing -> cleanup -> modify -> done

After that you're able to start the systemd machine and login as root (no password):

    # machinectl start MyContainer
    # machinectl login MyContainer

Deleting a systemd container:

    # pacstrap-container delete MyContainer
    Machine MyContainer successfully deleted.

##Logging:##

    # journalctl -t pacstrap-container -fa

##License:##

[&copy; Antonino Catinello][HOME] - [MIT-License][MIT]

[MIT]:https://github.com/catinello/pacstrap-container/blob/master/LICENSE
[HOME]:http://antonino.catinello.eu
