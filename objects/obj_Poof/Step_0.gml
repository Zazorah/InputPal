if(speed > 0) speed--;

image_alpha = lerp(image_alpha, 0, 0.2);
if(image_alpha < 0.01) instance_destroy();