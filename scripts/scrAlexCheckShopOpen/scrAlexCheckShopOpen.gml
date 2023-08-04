function scrAlexCheckShopOpen() {
	// Checks whether the wave is cleared

	if(!instance_exists(objAlexTowerController))
	    return true;
	else
	    return objAlexTowerController.shop_visible



}
