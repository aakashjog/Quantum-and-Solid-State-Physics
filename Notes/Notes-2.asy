if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
settings.render=8;
settings.prc=false;
size(10cm);

currentprojection=orthographic(
camera=(4.5,2.4,1),
up=(-0.00139501368508954,-0.000275076822729568,0.00702970309857882),
target=(4.44089209850063e-16,4.44089209850063e-16,4.44089209850063e-16),
zoom=0.50016345138754);

material spherecolor = material(diffusepen=black, ambientpen=gray(0.1), specularpen=white);
material cylcolor = material(diffusepen=black, ambientpen=black);

real cylRadius = 0.005;
real sphereRadius = 0.2;

void drawRod(triple a, triple b) {
surface rod = extrude(scale(cylRadius)*unitcircle, axis=length(b-a)*Z);
triple orthovector = cross(Z, b-a);
if (length(orthovector) > .01) {
real angle = aCos(dot(Z, b-a) / length(b-a));
rod = rotate(angle, orthovector) * rod;
}
draw(shift(a)*rod, surfacepen=cylcolor);
}

void drawSphere(triple center) {
draw(shift(center)*scale3(sphereRadius)*unitsphere, surfacepen=spherecolor);
}

triple a = (0,0,0);
triple b = (0,0,1);
triple c = (0,1,0);
triple d = (0,1,1);
triple e = (1,0,0);
triple f = (1,0,1);
triple g = (1,1,0);
triple h = (1,1,1);

drawSphere(a);
drawSphere(b);
drawSphere(c);
drawSphere(d);
drawSphere(e);
drawSphere(f);
drawSphere(g);
drawSphere(h);

drawRod(a,b);
drawRod(c,d);
drawRod(e,f);
drawRod(g,h);

drawRod(a,c);
drawRod(b,d);
drawRod(e,g);
drawRod(f,h);

drawRod(a,e);
drawRod(b,f);
drawRod(c,g);
drawRod(d,h);
