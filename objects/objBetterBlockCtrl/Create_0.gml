/// @description Prevent multiple instances existing at the same time
if (instance_number(object_index) > 1){
    instance_destroy();
}

