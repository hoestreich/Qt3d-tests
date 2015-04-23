import Qt3D 2.0
import Qt3D.Render 2.0

Camera {
//    id: mainCamera
//    projectionType: CameraLens.PerspectiveProjection
//    fieldOfView: 22.5
//    aspectRatio: 16 / 9
//    nearPlane:   0.01
//    farPlane:    1000.0
//    viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
//    upVector:   Qt.vector3d( 0.0, 1.0, 0.0 )

    id: maincamera
    projectionType: CameraLens.PerspectiveProjection
    fieldOfView: 45
    aspectRatio: 16/9
    nearPlane : 0.1
    farPlane : 1000.0
    position: Qt.vector3d( 0.0, 0.0, -40.0 )
    upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
    viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
}
