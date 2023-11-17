
// Create a canvas element
const canvas = document.createElement('canvas');

// Set the width and height of the canvas
canvas.width = 800;
canvas.height = 600;

// Get the 2D rendering context of the canvas
const ctx = canvas.getContext('2d');

// Add the canvas to the document body
document.body.appendChild(canvas);

// Now you can start drawing on the canvas using the ctx object
// For example, let's draw a rectangle
ctx.fillStyle = 'red';
ctx.fillRect(50, 50, 100, 100);

// Draw a circle   

