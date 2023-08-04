/// @description  Death VFX

if(hp <= 0) {
    instance_create(x, y, objAlexEnemyKilledVFX)
    audio_play_sound(death_sound, 0, false)
}

/// Spawn heart

if(hp <= 0)
    instance_create(x, y-8, objAlexHeart);

