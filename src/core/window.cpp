#include "window.h"
#include "world/entity.h"
#include "world/Camera.h"
#include "system/Time.h"
#include "events/events.h"



void Window::init() {
    m_width = 640;
    m_height = 480;
    m_name = "ESGI-3D-Viewer";
    if (!glfwInit()) {
        throw std::runtime_error("Unable to initialize GLFW");
    }
    m_window = glfwCreateWindow(m_width,m_height,m_name.c_str(), nullptr, nullptr);
    if (!m_window) {
        glfwTerminate();
        throw std::runtime_error("Unable to initialize the window");
    }
    glfwMakeContextCurrent(m_window);
    if(!gladLoadGL()) {
        throw std::runtime_error("Unable to initialize GLAD");
    }
    m_frameCap = 1.0/m_fps;
    glfwSwapInterval(1);//Activating vsync by default
    setCallbacks();
}

void Window::loop() {
    //Treating time values to check if fps is passing
    bool canRender = false;
    double frameTime = 0;
    double unprocessed = 1;
    double frames = 0;
    Mesh mesh = Mesh("assets/obj/test.obj");
    Shader shader = Shader("src/shaders/default.glsl");
    Camera camera = Camera();
    while (!glfwWindowShouldClose(m_window)) {
        Time::update();
        frameTime += Time::dt();
        unprocessed += Time::dt();



        while(unprocessed > m_frameCap) {
            unprocessed -= m_frameCap;
            canRender = true;
        }
        if (canRender) {
            frames++;
            glClearColor(.1f,.1f,.1f,1.f);
            glClear(GL_COLOR_BUFFER_BIT);
            //s.update();
            shader.bind();
            mesh.draw(camera, shader.getProgId());
            if (Events::mouseDragging()) {
                std::cout << "Dragging" << std::endl;
            }
            glfwSwapBuffers(m_window);
            updateEvents();
            if (frameTime >= 1.0) {
                frameTime = 0;
                std::cout << "Fps : " << frames << std::endl;
                frames = 0;
            }
        }
    }
}

void Window::setCallbacks() {
    glfwSetKeyCallback(m_window, keyCallback);
    glfwSetCursorPosCallback(m_window,mousePosCallback);
    glfwSetMouseButtonCallback(m_window, mouseButtonCallback);
    glfwSetScrollCallback(m_window, mouseScrollCallback);
}

void Window::updateEvents() {
    Events::resetScroll();
    glfwPollEvents();
}

