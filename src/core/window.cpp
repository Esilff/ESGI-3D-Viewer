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
    Mesh mesh = Mesh("assets/obj/skybox.obj");
    Mesh plane = Mesh("assets/obj/airplane.obj");
//    ocean.transform.scale = {0.5,0.5,0.5};
    //ocean.transform.rotation = Quaternion().euler(180,0,180);
    //plane.transform.position = Vector(0,0,5);
    plane.transform.rotation = Quaternion().euler(-90,0,0);
    plane.transform.scale = {50000,50000,50000};
    mesh.transform.rotation = Quaternion().euler(90,0,0);
    mesh.transform.scale = {500000,500000,500000};
    Shader shader = Shader("src/shaders/skybox.glsl");
    Shader oceanShader = Shader("src/shaders/ocean.glsl");
    Texture texture = Texture("assets/textures/skybox.png");
    Texture oceanTexture = Texture("assets/textures/ocean.png");
    Camera camera = Camera();
    camera.setFarPlane(1000000000);
    camera.setFov(90);

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


//            shader.bind();
//            texture.bind(1);
//            mesh.draw(camera, Vector(8.0,0.0,8.0), shader.getProgId());

            oceanShader.bind();
            oceanTexture.bind(1);
            plane.draw(camera, Vector(0.0,0.0,4.0), oceanShader.getProgId());
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
            //camera.transform.rotation *= Quaternion().euler(Vector(0, Events::mouseDelta()[0],0));
            //camera.Rotate(Vector(0,,0));
        }
        float z = (int) Events::mouseDelta()[0];
        float x = (int) Events::mouseDelta()[1];
        //Vector(0,-5,0);
        plane.transform.position.x += 1 * Time::dt();
        camera.transform.rotation *= Quaternion().euler(Vector(0 , 0  , 1) * Time::dt());
    }
}

void Window::setCallbacks() {
    glfwSetKeyCallback(m_window, keyCallback);
    glfwSetCursorPosCallback(m_window,mousePosCallback);
    glfwSetMouseButtonCallback(m_window, mouseButtonCallback);
    glfwSetScrollCallback(m_window, mouseScrollCallback);
    glfwSetFramebufferSizeCallback(m_window, windowFrameBufferSizeCallback);
}

void Window::updateEvents() {
    Events::resetScroll();
    glfwPollEvents();
}

