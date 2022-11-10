
float angle = 0;

class Pos {
    Pos(float x, float y){
        this.x = x;
        this.y = y;
        this.bx = x;
        this.by = y;
    }

    float x;
    float y;
    float bx;
    float by;
}

Pos p1;
Pos p2;
Pos p3;

float cx;
float cy;


void setup(){

    p1 = new Pos(10, 80);
    p2 = new Pos(60, 30);
    p3 = new Pos(110, 80);

    cx = (p1.bx + p2.bx + p3.bx)/3;
    cy = (p1.by + p2.by + p3.by)/3;

    background(255);
    size(130,130);
}

void draw(){

    background(255);
    
    fill(0);
    
    float cos = cos(radians(angle));
    float sin = sin(radians(angle));
    
    p1.x = cx + (cx-p1.bx) * cos - (cy-p1.by) * sin;
    p1.y = cy + (cx-p1.bx) * sin + (cy-p1.by) * cos;
    p2.x = cx + (cx-p2.bx) * cos - (cy-p2.by) * sin;
    p2.y = cy + (cx-p2.bx) * sin + (cy-p2.by) * cos;
    p3.x = cx + (cx-p3.bx) * cos - (cy-p3.by) * sin;
    p3.y = cy + (cx-p3.bx) * sin + (cy-p3.by) * cos;

    line(p1.x, p1.y, p2.x, p2.y);
    line(p2.x, p2.y, p3.x, p3.y);
    line(p3.x, p3.y, p1.x, p1.y);

    circle(cx, cy, 2);

    angle = angle + 1;
}
