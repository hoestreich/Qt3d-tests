/*
#include <Qt3DCore/window.h>
#include <Qt3DRenderer/qrenderaspect.h>
#include <Qt3DInput/QInputAspect>
#include <Qt3DQuick/QQmlAspectEngine>
*/

#include <QQuickView>
#include <QApplication>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQuickView view1;
    QSurfaceFormat format;
    format.setMajorVersion(3);
    format.setMinorVersion(3);
    format.setProfile(QSurfaceFormat::CoreProfile);

    view1.setFormat(format);

    view1.setResizeMode(QQuickView::SizeRootObjectToView);
    view1.setSource(QUrl("qrc:/Skeleton.qml"));
    view1.setColor(QColor(Qt::transparent));

    view1.show();

    return app.exec();

}
