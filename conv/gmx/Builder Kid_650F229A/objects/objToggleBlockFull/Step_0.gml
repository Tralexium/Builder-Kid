if scrButtonCheckPressed(global.shootButton) and ready {
    instance_create(x, y, objToggleBlockEmpty)
    instance_destroy()
}

