for (var i=0; i<numCherries; i++) {
    cherries[i] = instance_create(x, y, objCherryNotDestroyOutsideRoom)
    cherries[i].sprite_index = sprite_index
    cherries[i].depth = -5
}
event_perform(ev_step, ev_step_normal)

