#!/bin/bash

cat > ../miniwin.cpp <<EOF

$(cat LICENSE)

// VERSION: $(cat VERSION)


#if defined(_WIN32)

// Windows ////////////////////////////////////////////////////////////////////////////

$(cat miniwin-windows.cc)

///////////////////////////////////////////////////////////////////////////////////////

#elif defined(_linux)

// Linux //////////////////////////////////////////////////////////////////////////////

$(cat miniwin-linux.cc)

///////////////////////////////////////////////////////////////////////////////////////

#else

#error "MiniWin no funciona en esta plataforma"

#endif

EOF

cat > ../miniwin.h <<EOF

$(cat LICENSE)

// VERSION: $(cat VERSION)

$(cat miniwin.h)

EOF

cp ../miniwin.h   ../HolaMiniWin/miniwin.h
cp ../miniwin.cpp ../HolaMiniWin/miniwin.cpp


