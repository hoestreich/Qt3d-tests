import Qt3D 2.0
import Qt3D.Render 2.0

import QtQuick 2.1 as QQ2

Entity {
    id: sceneRoot

    property vector3d pos: Qt.vector3d( 5.0, 4.0, 5.0 )

    // Render from the mainCamera
    components: [
        FrameGraph {
            activeFrameGraph: SortedForwardRenderer {
                id: renderer
                camera: mainCamera
            }
        }
    ]

    BasicCamera {
        id: mainCamera
        position: sceneRoot.pos
    }

    Configuration  {
        controlledCamera: mainCamera
    }

    NormalDiffuseSpecularMapMaterial {
        id: ndsmm
        ambient: Qt.rgba( 0.2, 0.2, 0.2, 1.0 )
        diffuse:  "shaders/diffus_black.webp"
        specular: "shaders/diffus_black.webp"
        normal:   "shaders/diffus_black.webp"
        textureScale: 10.0
        shininess: 80.0
    }

    Workpiece {
        id: cube
        objfile: "obj/cube.obj"
        material: ndsmm
    }


}
