#ifndef MESH_H
#define MESH_H

#include <vector>
#include <cstdint>
#include "../math/math.h"
#include "../world/transform.h"
#include "../world/Camera.h"
#include <tiny_obj_loader.h>
#include <glad/glad.h>

struct Vertex {
    Vector position;
    Vector normal;
    Vector2 texcoords;
};

struct Mesh {
    std::vector<Vertex> vertices;
    unsigned int VBO;

    Transform transform;

    Mesh(const std::string& objPath) {
        glGenBuffers(1, &VBO);
        loadObj(objPath);
    }

    ~Mesh() {
        glDeleteBuffers(1, &VBO);
    }

    void loadObj(const std::string& objPath) {
        tinyobj::attrib_t attrib;
        std::vector<tinyobj::shape_t> shapes;
        std::vector<tinyobj::material_t> materials;
        std::string warn, err;



        if (!tinyobj::LoadObj(&attrib, &shapes, &materials, &warn, &err, std::string(SOURCE_DIR + std::string("/") + objPath).c_str())) {
            throw std::runtime_error(warn + err);
        }

        for (const auto& shape : shapes) {
            for (const auto& index : shape.mesh.indices) {
                Vertex vertex = {};

                vertex.position = {
                        attrib.vertices[3 * index.vertex_index + 0],
                        attrib.vertices[3 * index.vertex_index + 2],
                        attrib.vertices[3 * index.vertex_index + 1]
                };

                vertex.normal = {
                        attrib.normals[3 * index.normal_index + 0],
                        attrib.normals[3 * index.normal_index + 2],
                        attrib.normals[3 * index.normal_index + 1]
                };

                vertex.texcoords = {
                        attrib.texcoords[2 * index.texcoord_index + 0],
                        attrib.texcoords[2 * index.texcoord_index + 1]
                };

                vertices.push_back(vertex);
                /*vertices.clear();
                vertices.push_back({{0.0,0.0,1.0}, {0.0,0.0,1.0}, {0.0,0.0}});
                vertices.push_back({{0.5,0.0,1.0}, {0.0,0.0,1.0}, {0.0,0.0}});
                vertices.push_back({{0.0,0.5,1.0}, {0.0,0.0,1.0}, {0.0,0.0}});
*/

                //indices.push_back(indices.size());
            }
        }

        //glGenBuffers(1, &VBO);
    }

    void draw(Camera camera, Vector light, unsigned int program) {

        glBindBuffer(GL_ARRAY_BUFFER, VBO);



        glBufferData(GL_ARRAY_BUFFER, sizeof(Vertex) * vertices.size(), vertices.data(), GL_STATIC_DRAW);

        int loc_pos = glGetAttribLocation(program, "aPos");
        glEnableVertexAttribArray(loc_pos);
        glVertexAttribPointer(loc_pos, 3, GL_FLOAT, GL_FALSE,
                              sizeof(Vertex), nullptr);
        int normal_pos = glGetAttribLocation(program, "aNormal");
        glEnableVertexAttribArray(normal_pos);
        glVertexAttribPointer(normal_pos, 3, GL_FLOAT, GL_FALSE,
                              sizeof(Vertex), (void*)(sizeof(Vector)));
        int uv_pos = glGetAttribLocation(program, "aUv");
        glEnableVertexAttribArray(uv_pos);
        glVertexAttribPointer(uv_pos, 2, GL_FLOAT, GL_FALSE,
                              sizeof(Vertex), (void*)(2*sizeof(Vector)));


        glUniform1i(glGetUniformLocation(program, "texId"), 1);

        //glUniform3f(glGetUniformLocation(program, "uLight"), light.x, light.y, light.z);

        //glUniformMatrix4fv(glGetUniformLocation(program, "rotMatrix"),1, true, Matrix().quaternionToMatrix(transform.rotation));
        glUniformMatrix4fv(glGetUniformLocation(program, "projectionMatrix"),1, true, camera.getProjectionMatrix());
        glUniformMatrix4fv(glGetUniformLocation(program, "viewMatrix"),1, true, camera.getViewMatrix());
        glUniformMatrix4fv(glGetUniformLocation(program, "modelMatrix"),1, true, transform.getModelMatrix());
        glDrawArrays(GL_TRIANGLES, 0, vertices.size());
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