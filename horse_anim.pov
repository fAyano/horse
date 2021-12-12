#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "woods.inc"
#include "komuro.inc"
#include "skies.inc"

camera {
  location <-10,4,-15>//10,2,-4
  look_at <0,4,0>
  angle 50

}


light_source {
  <-3,10,-10>
 color 1.5 * White
}

//object { XYZaxis }

object{
	Plane_XZ
	texture{T_Stone18}//27,18
}

sky_sphere{S_Cloud2}

union{
union{
  //face
  object{
	  Sphere
	  pigment{color DarkWood}
	  translate<0,8,-2.8>
	  scale<0.5,0.5,0.8>
	 // rotate <0,360*clock,0>
  }
  //ear
  #declare Kara=0.01;
#declare Made=0.05;

#declare T=Kara;
#while(T<Made)
  #declare X=T;
  #declare Y=0.7*log(X);
  object{
      Sphere
  	pigment{color VeryDarkBrown}
  	scale<0.15,0.1,0.1>
  	translate<-0.2,Y+5.6,X-2>
  	// rotate <0,360*clock,0>
  }
    object{
  	Sphere
  	pigment{color VeryDarkBrown}
  	scale<0.15,0.1,0.1>
  	translate<0.2,Y+5.6,X-2>
  	// rotate <0,360*clock,0>
  }

  #declare T=T+0.001;
  #end

//eyes
object{
	Sphere
	pigment{color Black}
	scale<0.15,0.15,0.15>
	translate<0.4,4.2,-2.2>
	// rotate <0,360*clock,0>
	}
	object{
	Sphere
	pigment{color Black}
	scale<0.15,0.15,0.15>
	translate<-0.4,4.2,-2.2>
	// rotate <0,360*clock,0>
	}
//neck
  object{
  	Disk_Y
  	scale<0.3,1,0.3>
  	translate<0,3,-1.9>
  	pigment{color DarkWood}
  	// rotate <0,360*clock,0>
  }
  //body
    object{
	Sphere
	pigment{color DarkWood}
	translate<0,2.2,-0.3>
	scale<0.8,0.9,1.8>
	// rotate <0,360*clock,0>
  }
  //tail
 #declare Kara2=0.01;
#declare Made2=2.5;

#declare T2=Kara2;
#while(T2<Made2)
  #declare X2=T2;
  #declare Y2=(X2*X2*X2-3.5*X2*X2+X2)/2;
  object{
      Sphere
  	pigment{color VeryDarkBrown}
  	scale<0.2,0.1,0.1>
  	translate<0,Y2+2.4,X2+0.6>
  	// rotate <0,360*clock,0>
  }
  #declare T2=T2+0.001;
  #end
//mane
#declare Kara3=0.01;
#declare Made3=1.4;

#declare T3=Kara3;
#while(T3<Made3)
  #declare X3=T3;
  #declare Y3=sin(6*T3*pi)/4;
  object{
      Sphere
  	pigment{color VeryDarkBrown}
  	scale<0.2,0.1,0.1>
  	translate<0,X3+2.8,Y3-1.5>
  	// rotate <0,360*clock,0>
  }
  #declare T3=T3+0.001;
  #end
translate<0,1,0>
rotate <0,-90,0>

}

//leg
#declare LEG_LENGTH = 1;//0.8
#declare SOLE_HEIGHT = 0.2;


#declare THETA = 10*3.14 * clock;
#declare PHI = 30*sin(THETA);

#declare HOUSE_LEG =
union {
  object {
    Disk_Y
    pigment{color DarkWood}
    scale<0.2,LEG_LENGTH,0.15>
    translate <0,-LEG_LENGTH+1,0>//+1
  }
  object {
    Disk_Y
    pigment{color VeryDarkBrown}  
   scale<0.2,SOLE_HEIGHT,0.15>
    translate <0,-LEG_LENGTH*2+0.8,0>//+0.8
  }
}

object {
  HOUSE_LEG
  rotate <0,0,-PHI>
  translate <1.4,LEG_LENGTH*2+SOLE_HEIGHT,0.3>
}

object {
  HOUSE_LEG
  rotate <0,0,PHI>
  translate <1.4,LEG_LENGTH*2+SOLE_HEIGHT,-0.3>
}

object {
  HOUSE_LEG
  rotate <0,0,-PHI>
  translate <-0.4,LEG_LENGTH*2+SOLE_HEIGHT,-0.3>
}

object {
  HOUSE_LEG
  rotate <0,0,PHI>
  translate <-0.4,LEG_LENGTH*2+SOLE_HEIGHT,0.3>
  
}

translate<0,-0.6,5> 
rotate<0,360*clock,0>
}



