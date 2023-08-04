//Do not change any variables
a = instance_create(x, y-1, objHPbg);
a.image_xscale = maxscale;

b = instance_create(x-1, y-1, objHPside);
b.image_xscale = maxscale+2;

c = instance_create(x, y, objHPbar2);
c.maxHP = maxHP;
c.curHP = maxHP;
c.bossHP = maxHP;
c.scale = maxscale;
c.maxscale = maxscale;
c.image_xscale = maxscale;

