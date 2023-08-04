if not touchingPlayer {
    touchingPlayer=true
    with objColoredWarp {
        if id != other.id and num == other.num {
            objPlayer.x = x+16
            objPlayer.y = y+16
            touchingPlayer = true
        }
    }
}

