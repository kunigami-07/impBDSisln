import * as THREE from 'https://unpkg.com/three@0.165.0/build/three.module.js';
import { OrbitControls } from 'https://unpkg.com/three@0.165.0/examples/jsm/controls/OrbitControls.js';

// Escena
const scene = new THREE.Scene();
scene.background = new THREE.Color(0x000000);

// Cámara
const camera = new THREE.PerspectiveCamera(
    75,
    window.innerWidth / window.innerHeight,
    0.1,
    2000
);

camera.position.set(0, 0, 60);

// Render
const renderer = new THREE.WebGLRenderer({
    antialias: true
});

renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

// Controles
const controls = new OrbitControls(camera, renderer.domElement);

controls.enableDamping = true;
controls.dampingFactor = 0.05;

controls.enableZoom = true;
controls.enablePan = false;

controls.minDistance = 5;
controls.maxDistance = 500;

// Crear estrellas

const starGeometry = new THREE.BufferGeometry();

const starCount = 5000;

const positions = [];

for(let i=0; i<starCount; i++){

    positions.push(

        (Math.random()-0.5)*800,

        (Math.random()-0.5)*800,

        (Math.random()-0.5)*800

    );

}

starGeometry.setAttribute(
    'position',
    new THREE.Float32BufferAttribute(positions,3)
);

const starMaterial = new THREE.PointsMaterial({

    color:0xffffff,

    size:1.2,

    sizeAttenuation:true

});

const stars = new THREE.Points(
    starGeometry,
    starMaterial
);

scene.add(stars);

// Animación

function animate(){

    requestAnimationFrame(animate);

    controls.update();

    renderer.render(scene,camera);

}

animate();

// Ajustar tamaño

window.addEventListener("resize",()=>{

    camera.aspect = window.innerWidth/window.innerHeight;

    camera.updateProjectionMatrix();

    renderer.setSize(
        window.innerWidth,
        window.innerHeight
    );

});