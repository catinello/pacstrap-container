pacstrap-container
===

Arch-linux systemd containers.

##Installation:##

    # git clone https://github.com/catinello/pacstrap-container.git
    # cd pacstrap-container; make && make PREFIX=/usr install

##Requirements:##

    # pacman -S systemd pacman sed arch-install-scripts
    creating -> installing -> cleanup -> modify -> done

##Examples:##

Creating a simple arch systemd container:

    # pacstrap-container create MyContainer

After that you're able to start the systemd machine and login as root (no password):

    # machinectl start MyContainer
    # machinectl login MyContainer

##Logging:##

    # journalctl -t pacstrap-container -fa

##License:##

[&copy; Antonino Catinello][HOME] - [MIT-License][MIT]

[MIT]:https://github.com/catinello/pacstrap-container/blob/master/LICENSE
[HOME]:http://antonino.catinello.eu
