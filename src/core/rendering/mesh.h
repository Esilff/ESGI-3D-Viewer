#ifndef MESH_H
#define MESH_H

#include <vector>
#include <cstdint>
#include "../math/math.h"
#include <tiny_obj_loader.h>
#include <glad/glad.h>

struct Vertex {
    Vector position;
    Vector normal;
    Vector2 texcoords;
};

struct Mesh {
    std::vector<Vertex> vertices;
    std::vector<uint32_t> indices;

    Mesh(const std::string& objPath) {
        loadObj(objPath);
    }

    void loadObj(const std::string& objPath) {
        tinyobj::attrib_t attrib;
        std::vector<tinyobj::shape_t> shapes;
        std::vector<tinyobj::material_t> materials;
        std::string warn, err;

        if (!tinyobj::LoadObj(&attrib, &shapes, &materials, &warn, &err, objPath.c_str())) {
            throw std::runtime_error(warn + err);
        }

        for (const auto& shape : shapes) {
            for (const auto& index : shape.mesh.indices) {
                Vertex vertex = {};

                vertex.position = {
                        attrib.vertices[3 * index.vertex_index + 0],
                        attrib.vertices[3 * index.vertex_index + 1],
                        attrib.vertices[3 * index.vertex_index + 2]
                };

                vertex.normal = {
                        attrib.normals[3 * index.normal_index + 0],
                        attrib.normals[3 * index.normal_index + 1],
                        attrib.normals[3 * index.normal_index + 2]
                };

                vertex.texcoords = {
                        attrib.texcoords[2 * index.texcoord_index + 0],
                        attrib.texcoords[2 * index.texcoord_index + 1]
                };

                vertices.push_back(vertex);
                indices.push_back(indices.size());
            }
        }
    }

    void draw() {
        glDrawArrays(GL_TRIANGLES, 0, vertices.size())
    }
};


/*#include <vector>
#include <glad/glad.h>
#include <iostream>

enum VertexInfo {
    XY,
    XYZ,
    RGB,
    RGBA,
    UV
};

class Mesh {
    std::string m_name;
    std::vector<float> m_vertices;
    std::vector<unsigned int> m_indices;
    std::vector<float> m_uv;
    std::vector<float> m_normal;
    std::vector<VertexInfo> m_vertexFormat;
    int m_drawCount = 0;
    int m_vertexSize = 0;
    unsigned int m_vbo;
    unsigned int m_ebo;


    void loadMesh();
    int vertexInfoLength(VertexInfo vi);

public:
    Mesh();
    Mesh(const Mesh& mesh);
    Mesh(const std::vector<float> &vertices, const std::vector<unsigned int> &indices, const std::vector<VertexInfo> &format);
    Mesh(const std::string& objPath);
    ~Mesh();
    void draw();

    void parseObj(std::string& objPath);
    std::vector<std::string> split(const std::string& str, char delimiter);
};*/

#endif