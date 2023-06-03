#include "texture.h"

Texture::Texture(const std::string &path) {
    glGenTextures(1, &m_texture);
    glBindTexture(GL_TEXTURE_2D, m_texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    m_path = std::string(SOURCE_DIR) + "/" + path;
    m_data = stbi_load(m_path.c_str(), &m_width, &m_height, &m_channels, 0);
    if (!m_data) {
        std::cout << "Failed to load texture at : \n" << m_path << std::endl;
    }
    glTexImage2D(GL_TEXTURE_2D,0, GL_RGBA, m_width, m_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, m_data);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, m_width, m_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, m_data);
    int level = 1;
    int currentWidth = m_width;
    int currentHeight = m_height;

    while (currentWidth > 1 || currentHeight > 1) {
        currentWidth = std::max(1, currentWidth /2);
        currentHeight = std::max(1, currentHeight/2);
        glTexImage2D(GL_TEXTURE_2D, level, GL_RGBA, currentWidth, currentHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
        level++;
    }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
}

void Texture::bind(int texId) {
    glActiveTexture(GL_TEXTURE0 + texId);
    glBindTexture(GL_TEXTURE_2D, m_texture);
}


