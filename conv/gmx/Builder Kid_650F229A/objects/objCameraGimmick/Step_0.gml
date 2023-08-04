if spin=true{image_angle-=1}
if fade=true{image_alpha-=0.05}
if image_alpha<0{instance_destroy()}

