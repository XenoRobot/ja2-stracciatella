set(CMAKE_SYSTEM_NAME Windows)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(LOCAL_SDL_LIB "dependencies/lib-SDL2-2.0.8-VC" CACHE STRING "" FORCE)
set(LOCAL_FLTK_LIB ON CACHE BOOL "" FORCE)
set(LOCAL_BOOST_LIB ON CACHE BOOL "" FORCE)
set(LOCAL_GTEST_LIB ON CACHE BOOL "" FORCE)

if(NOT "${CMAKE_GENERATOR}" MATCHES "(Win64|IA64)")
    set(LIBSTRACCIATELLA_TARGET "i686-pc-windows-msvc" CACHE STRING "" FORCE)
else()
    set(LIBSTRACCIATELLA_TARGET "x86_64-pc-windows-msvc" CACHE STRING "" FORCE)
endif()

add_definitions("-DBOOST_ALL_NO_LIB")
