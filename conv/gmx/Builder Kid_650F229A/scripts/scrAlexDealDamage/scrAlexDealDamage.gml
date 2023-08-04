/// @description scrAlexDealDamage(dmg_num)
/// @param dmg_num

var dmg = argument0;
var p = objAlexPlayer;

if(instance_exists(p)) {
    if(p.iframes == 0) {
        p.hp -= dmg
        p.iframes = p.max_iframes;
    }
}
