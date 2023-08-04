/// @description  Smoke particles

repeat(8) {
    var p = scrAlexMakeParticle(x, y-8, 20, sprAlexFruitWarriorSmoke, 0,
                         random(360), random_range(2, 3), true, false, false);
        p.depth = -400
}

