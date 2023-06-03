cmake_minimum_required(VERSION 3.2)

project(ESGI_3D_Viewer)

set(CMAKE_CXX_STANDARD 14)

add_executable(${PROJECT_NAME} src/main.cpp src/core/window.cpp src/core/window.h src/core/world/Entity.cpp src/core/world/Entity.h
        src/core/util/glUtil.h src/core/system/Time.cpp src/core/system/Time.h src/core/rendering/texture.cpp src/core/rendering/texture.h src/core/rendering/shader.cpp src/core/rendering/shader.h
        src/core/rendering/mesh.cpp src/core/rendering/mesh.h src/core/events/Mouse.cpp src/core/events/Mouse.h src/core/events/Keyboard.cpp src/core/events/Keyboard.h
        src/core/events/eventCallbacks.h src/core/events/events.h src/core/world/transform.cpp src/core/world/transform.h src/core/math/math.cpp src/core/math/math.h)

#setup GLFW

add_subdirectory(dependencies/GLFW)

#setup GLAD

include_directories(dependencies/GLAD/include)
add_library(glad dependencies/GLAD/src/glad.c)

#setup jsoncpp
add_subdirectory(dependencies/JSONCPP)
get_target_property(JSON_INC_PATH jsoncpp_static INTERFACE_INCLUDE_DIRECTORIES)
include_directories(${JSON_INC_PATH})

#setup stb
include_directories(dependencies/stb)
link_directories(dependencies/stb)

#tinyobjloader
include_directories(dependencies/tinyobjloader)
link_directories(dependencies/tinyobjloader)

target_link_libraries(${PROJECT_NAME} glfw glad opengl32 glm)

add_compile_definitions(SOURCE_DIR="${CMAKE_CURRENT_SOURCE_DIR}")