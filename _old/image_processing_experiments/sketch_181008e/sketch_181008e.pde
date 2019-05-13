/* This example presents the usage of Scanlines of a retro look.
 * Use the mouse x-axis to change the scanline height.
 * To change the scanline alpha value use the mouse y-axis.
 *  
 * Author: Nick 'Milchreis' Müller
 */

import milchreis.imageprocessing.*;

PImage image;

PImage half01;
PImage gtch01, gtch02;

void setup() {
  size(600, 600);
  image = loadImage(dataPath("/Users/jarxg/Desktop/Captura de pantalla 2018-10-08 a la(s) 04.40.07.png"));
}

void draw() {
  gtch01 = Glitch.apply(image, 3, 1);
  gtch02 = Glitch.apply(gtch01, 2, 0);
  half01 = Halftone.apply(gtch02, 20);
  PImage fx01 = Blend.apply(gtch01, half01, 0.75);
  PImage out = Blend.apply(fx01, gtch01, 0.15);
  image(Shadows.apply(out, -1), 0, 0);
}
