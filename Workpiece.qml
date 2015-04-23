import Qt3D 2.0
import Qt3D.Render 2.0

Entity {
    id: root

    property alias x: translation.dx
    property alias y: translation.dy
    property alias z: translation.dz
    property alias scale: scaleTransform.scale3D
    property alias theta: thetaRotation.angle
    property alias phi: phiRotation.angle
    property Material material
    property string objfile: "obj/cube.obj"

    material: DiffuseMapMaterial {
        id: material
        diffuse: "shaders/mdfplatte.png"
        specular: Qt.rgba( 0.2, 0.2, 0.2, 1.0 )
        shininess: 2.0
    }

    components: [ transform, top, root.material]

    Transform {
        id: transform
        Translate { id: translation }
        Scale { id: scaleTransform }
        Rotate{ id: thetaRotation; axis: Qt.vector3d( 1.0, 0.0, 0.0 ) }
        Rotate{ id: phiRotation;   axis: Qt.vector3d( 0.0, 1.0, 0.0 ) }
    }

    Mesh {
        id: top
        source: objfile
    }

}

