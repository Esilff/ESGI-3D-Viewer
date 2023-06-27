#include "window.h"
#include "world/entity.h"
#include "world/Camera.h"
#include "system/Time.h"
#include "events/events.h"
#include "rendering/texture.h"


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
    Texture texture = Texture("assets/textures/test_texture.png");
    Camera camera = Camera();

    while (!glfwWindowShouldClose(m_window)) {
        Time::update();
        frameTime += Time::dt();
        unprocessed += Time::dt();

        glEnable(GL_DEPTH_TEST);
        glEnable(GL_CULL_FACE);

        while(unprocessed > m_frameCap) {
            unprocessed -= m_frameCap;
            canRender = true;
        }
        if (canRender) {
            frames++;
            glClearColor(.1f,.1f,.1f,1.f);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
            //s.update();
            shader.bind();
            texture.bind(1);
            mesh.draw(camera, Vector(2.0,0.0,4.0), shader.getProgId());

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
        mesh.transform.position = {0,0,5};
        mesh.transform.rotation *= Quaternion().euler(Vector(0 , 1  , 0) * Time::dt());
        if (Events::getKeyDown(GLFW_KEY_DOWN)) {
            camera.Move(Vector(0,0,-1 * Time::dt()));
        }
        if (Events::getKeyDown(GLFW_KEY_UP)) {
            camera.Move(Vector(0,0,1 * Time::dt()));
        }
        if (Events::getKeyDown(GLFW_KEY_LEFT)) {
            camera.Move(Vector(-1 * Time::dt(),0,0));
        }
        if (Events::getKeyDown(GLFW_KEY_RIGHT)) {
            camera.Move(Vector(1 * Time::dt(),0,0));
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

