## Install

    #. deps
    sudo aptitude install ttf-ubuntu-font-family hddtemp curl lm-sensors conky-all
    #. main
    cd ~
    git clone https://github.com/marlboromoo/dot_file.git
    for file in .conkyrc .conky; do
        mv $file{,.bak}
        ln -s dot_file/$file ./
    done


