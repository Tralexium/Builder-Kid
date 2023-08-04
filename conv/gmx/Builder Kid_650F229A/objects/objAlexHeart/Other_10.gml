/// @description  Particle firework

repeat(8) {
    var p = scrAlexMakeParticle(x, y-8, 20, sprAlexHeartPart, 0,
                         random(360), random_range(1.5, 3), true, false, false);
        p.depth = -400
}

