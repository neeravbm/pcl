# Qt5

# See: http://qt-project.org/doc/qt-5.0/qtdoc/cmake-manual.html
# See: http://qt-project.org/doc/qt-5.0/qtdoc/modules.html

# Qt5 Modules
set(qt5_modules

# Essentials
    #Qt5Core
	Core
    #Qt5Gui
	Gui
    # Qt5Multimedia
    # Qt5Network
    # Qt5Qml
    # Qt5Quick
    # Qt5SQL
    # Qt5Test
    # Qt5WebKit
    # Qt5WebKitWidgets
    #Qt5Widgets
	Widgets

# Add-ons
    # Qt5ActiveQt
    #Qt5Concurrent
	Concurrent
    # Qt5DBus
    # Qt5GraphicalEffects
    # Qt5ImageFormats
    #Qt5OpenGL
	OpenGL
    # Qt5PrintSupport
    # Qt5Declarative
    # Qt5Script
    # Qt5ScriptTools
    # Qt5Svg
    # Qt5Xml
    # Qt5XmlPatterns
)

foreach(qt5_module ${qt5_modules})
    find_package(Qt5 COMPONENTS ${qt5_module} QUIET)
    if(Qt5${qt5_module}_FOUND AND Qt5${qt5_module}_INCLUDE_DIRS)
        include_directories(${Qt5${qt5_module}_INCLUDE_DIRS})
        add_definitions(${Qt5${qt5_module}_DEFINITIONS})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${Qt5${qt5_module}_EXECUTABLE_COMPILE_FLAGS}")
        list(APPEND QT_LIBRARIES Qt5::${qt5_module})
    endif(Qt5${qt5_module}_FOUND AND Qt5${qt5_module}_INCLUDE_DIRS)
endforeach()

# Prepare qt4-style cmake variables and macros.
if(Qt5Core_FOUND)

    set(QT5_FOUND TRUE CACHE INTERNAL "")

    # FIXME: CMake's automoc seems to break macosx parallel builds.
    # set(CMAKE_AUTOMOC ON)
    # set(CMAKE_INCLUDE_CURRENT_DIR ON)

    set(QT_QTOPENGL_INCLUDE_DIR Qt5OpenGL_INCLUDE_DIRS)

    # Replace qt4 macros.
    macro(qt4_wrap_cpp)
        qt5_wrap_cpp(${ARGN})
    endmacro()
    macro(qt4_add_resources)
        qt5_add_resources(${ARGN})
    endmacro()
    if(Qt5Widgets_FOUND)
        macro(qt4_wrap_ui)
            qt5_wrap_ui(${ARGN})
        endmacro()
    endif()

    set(QT_USE_FILE ${CMAKE_CURRENT_BINARY_DIR}/use-qt5.cmake CACHE PATH "" FORCE)
    file(WRITE ${QT_USE_FILE} "#")

    # Trick the remainder of the build system.
    set(QT4_FOUND TRUE)
endif()
