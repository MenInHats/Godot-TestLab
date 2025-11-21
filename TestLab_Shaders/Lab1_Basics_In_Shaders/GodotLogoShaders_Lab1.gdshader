shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

//changes the size of the image (< 1.0 makes it smaller), (> 1.0 makes it bigger)
uniform float scale = 0.5;
//this changes the level of distortion on the x or y axis depending on the value of distorted_value
uniform float distorted_value : hint_range(0.0, 1.0, 0.1);
//this with the grayColor variable changes the brighness of the image from light to dark
uniform float brightness_value : hint_range(0.0, 10.0) = 3.0;

void fragment() {
//Distorts the UV by adding to the x or y and the level of distortion
	//vec2 distortedUV = UV;
	//distortedUV.x += distortedUV.y * distorted_value;
	
	vec4 pixelColor = texture(TEXTURE, UV);
	
// if the pixels blue scale is < than 200.0, it will enter the if stament and turn the image half transparent. 
	//if (pixelColor.b < 200.0/255.0) {
		//pixelColor.g = 0.0;
	//}
	
	//float brightness = (pixelColor.r + pixelColor.g + pixelColor.b) / brightness_value;
	//vec4 grayColor = vec4(brightness, brightness, brightness, pixelColor.a);

//changes the color of the image: 1.0 red, 0.0 green, 0.0 blue, transparentcy (0.0 transparent, 1.0 not transparent)
	//pixelColor = vec4(1.0, 0.0, 0.0, pixelColor.a);
	
	COLOR = pixelColor;
	//COLOR = grayColor;
}

