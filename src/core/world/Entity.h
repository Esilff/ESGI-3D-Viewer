#ifndef ENTITY_H
#define ENTITY_H

#include "../rendering/mesh.h"
#include "../rendering/shader.h"

class Entity{
    Mesh m_mesh;
    Shader m_shader;
public:
    Entity();
    Entity(const Mesh &mesh, const Shader &shader);
    void update();
};


#endif //ENTITY_H
