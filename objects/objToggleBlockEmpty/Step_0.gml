if scrButtonCheckPressed(global.shootButton) and ready {
    instance_create(x, y, objToggleBlockFull)
    instance_destroy()
}

