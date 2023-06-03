#include "mesh.h"

Mesh::Mesh(const std::string objPath) {
    std::vector<tinyobj::shape_t> shapes;
    std::vector<tinyobj::material_t> materials;
    std::string err;

    bool success = tinyobj::LoadObj(shapes, materials, err, std::string(SOURCE_DIR + objPath).c_str());
}