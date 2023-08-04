
var player_hp = 0

if(instance_exists(objAlexPlayer))
    player_hp = objAlexPlayer.hp;

return (player_hp <= 0) || instance_exists(objAlexGameOver);
