cmake_minimum_required(VERSION 3.16)

project(3_1rectangle VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(app3_1rectangle
    main.cpp
)


qt_add_qml_module(app3_1rectangle
    URI 3_1rectangle
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES resource.qrc
)

qt_add_resources(app3_1rectangle
    PREFIX "/"
    FILES   image/QtLogo.png
            image/img.gif
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app3_1rectangle PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app3_1rectangle
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app3_1rectangle
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app3_1rectangle
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
