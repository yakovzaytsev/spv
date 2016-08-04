# spv

1. build

    - get ECL

            git clone git@gitlab.com:embeddable-common-lisp/ecl.git
            cd ecl
            ./configure --prefix=/usr/local
            make
            sudo make install

    - install Quicklisp

            wget https://beta.quicklisp.org/quicklisp.lisp
            ecl -load quicklisp.lisp
        
        then in ECL
        
            > (quicklisp-quickstart:install)


        and

            > (ql:add-to-init-file)


    - build JavaScript from Lisp

            ecl -load loadit.lisp

2. Run 

    Start separate instance of Chrome

        path-to-google-chrome --allow-file-access-from-files file://`pwd`/demo.html --user-data-dir=/tmp


