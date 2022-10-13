#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/nick/Project_8_aardbeisorteermachine/src/rosserial/rosserial_vex_cortex"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nick/Project_8_aardbeisorteermachine/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nick/Project_8_aardbeisorteermachine/install/lib/python2.7/dist-packages:/home/nick/Project_8_aardbeisorteermachine/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nick/Project_8_aardbeisorteermachine/build" \
    "/usr/bin/python2" \
    "/home/nick/Project_8_aardbeisorteermachine/src/rosserial/rosserial_vex_cortex/setup.py" \
     \
    build --build-base "/home/nick/Project_8_aardbeisorteermachine/build/rosserial/rosserial_vex_cortex" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/nick/Project_8_aardbeisorteermachine/install" --install-scripts="/home/nick/Project_8_aardbeisorteermachine/install/bin"
