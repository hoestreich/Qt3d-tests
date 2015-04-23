TEMPLATE = app

QT += 3dcore 3drenderer 3dinput 3dquick qml quick opengl

SOURCES += *.cpp

OTHER_FILES += \
    *.qml \

RESOURCES += \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

DISTFILES += \
    Skeleton.qml \
    Switch1.qml \
    HighlightItem.qml \
    ContentView.qml \
    obj/1_LeftTop.obj \
    obj/2_RightTop.obj \
    obj/7_PlainBack.obj \
    obj/8_PlainFront.obj \
    obj/X_Bottom.obj \
    SideMenuWorkpiece.qml \
    SideMenuIDCircle.qml \
    SideMenuEntryField.qml \
    SideMenuNumberInput.qml \
    SideMenuShapeSelection.qml \
    SideMenuMaterialSelection.qml \
    SideMenuMaterialDetail.qml
