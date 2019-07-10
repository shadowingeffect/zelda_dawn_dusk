//Zelda Expansion Disk
//By LuigiBlood

//Uses ARM9 bass

//RAM Usage
n64dd_RamSetAddress(0x80400000)
n64dd_RamDefine(DDHOOK_RAM, 0x10000)		//MAIN DISK CODE
n64dd_RamDefine(DDHOOK_GPRAM, 0)
	n64dd_RamDefine(DDHOOK_ADDRTABLE, 4)				//n64dd Function Table Pointer
	n64dd_RamDefine(DDHOOK_FORCEROM, 4)					//Force ROM Load Flag
	n64dd_RamDefine(DDHOOK_CURRENTSCENEID, 4)			//Current Scene ID
	n64dd_RamDefine(DDHOOK_VERSION, 4)					//VERSION
	n64dd_RamDefine(DDHOOK_VERSIONTABLE, 8)				//VERSION SPECIFIC DATA

	n64dd_RamDefine(DDHOOK_TEXTTABLE, 0x10000)		//MESSAGE TABLE
	n64dd_RamDefine(DDHOOK_TEXTDATA, 0x39000)		//MESSAGE STATIC DATA

	n64dd_RamDefine(DDHOOK_SCENELIST, EZLJ_SCENELIST_SIZE)				//SCENE TABLE

	n64dd_RamDefine(DDHOOK_AUDIOBANK_TABLE, EZLJ_AUDIOBANK_TABLE.size)	//AUDIOBANK_TABLE
	n64dd_RamDefine(DDHOOK_AUDIOINST_TABLE, EZLJ_AUDIOINST_TABLE.size)	//AUDIOINST_TABLE
	n64dd_RamDefine(DDHOOK_AUDIOSEQ_TABLE, EZLJ_AUDIOSEQ_TABLE.size)	//AUDIOSEQ_TABLE

	n64dd_RamDefine(DDHOOK_AUDIOBANK, EZLJ_AUDIOBANK0.size)				//AUDIOBANK
	n64dd_RamDefine(DDHOOK_AUDIOSEQ, EZLJ_AUDIOSEQ.size)				//AUDIOSEQ

	//Overlays
	n64dd_RamDefine(DDHOOK_OVL_PLAYER_ACTOR, 0x26560)
	n64dd_RamDefine(DDHOOK_OVL_KALEIDO_SCOPE, 0x1C990)
	n64dd_RamDefine(DDHOOK_OVL_EFFECT_SS_STICK, 0x3A0)
	n64dd_RamDefine(DDHOOK_OVL_ITEM_SHIELD, 0xA10)

	n64dd_RamDefine(DDHOOK_GAMEPLAY_KEEP, 0x5BCE0)

//805B5000-805FFFE0 = Frame Buffer something? Do not write there

	//Static Files
n64dd_RamSetAddress(0x80600000)
n64dd_RamDefine(DDHOOK_STATIC_START, 0)
	//Minimap
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_LENGTH, EZLJ_MAP_MINIMAP_TABLE_LENGTH.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_OFFSET, EZLJ_MAP_MINIMAP_TABLE_OFFSET.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_XPOS, EZLJ_MAP_MINIMAP_TABLE_XPOS.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_YPOS, EZLJ_MAP_MINIMAP_TABLE_YPOS.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_COMPASS, EZLJ_MAP_MINIMAP_TABLE_COMPASS.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_WIDTH, EZLJ_MAP_MINIMAP_TABLE_WIDTH.size)
	n64dd_RamDefine(DDHOOK_MAP_MINIMAP_TABLE_HEIGHT, EZLJ_MAP_MINIMAP_TABLE_HEIGHT.size)

	//Objects
	n64dd_RamDefine(DDHOOK_GAMEPLAY_DANGEON_KEEP, EZLJ_GAMEPLAY_DANGEON_KEEP.size)
	n64dd_RamDefine(DDHOOK_OBJECT_LINK_CHILD, EZLJ_OBJECT_LINK_CHILD.size)

	n64dd_RamDefine(DDHOOK_ICON_ITEM_FIELD_STATIC, EZLJ_ICON_ITEM_FIELD_STATIC.size)
	n64dd_RamDefine(DDHOOK_ICON_ITEM_NES_STATIC, EZLJ_ICON_ITEM_NES_STATIC.size)

	n64dd_RamDefine(DDHOOK_MAP_NAME_STATIC_LAND, EZLJ_MAP_NAME_STATIC_LAND.size)
	n64dd_RamDefine(DDHOOK_MAP_NAME_STATIC_DAWN, EZLJ_MAP_NAME_STATIC_DAWN.size)
	n64dd_RamDefine(DDHOOK_MAP_NAME_STATIC_DUSK, EZLJ_MAP_NAME_STATIC_DUSK.size)

	n64dd_RamDefine(DDHOOK_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)

	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_SLINGSHOT, EZLJ_ITEM_NAME_STATIC_SLINGSHOT.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_HAMMER, EZLJ_ITEM_NAME_STATIC_HAMMER.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_SWORD1, EZLJ_ITEM_NAME_STATIC_SWORD1.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_SHIELD1, EZLJ_ITEM_NAME_STATIC_SHIELD1.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_SHIELD2, EZLJ_ITEM_NAME_STATIC_SHIELD2.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_TUNIC1, EZLJ_ITEM_NAME_STATIC_TUNIC1.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_TUNIC2, EZLJ_ITEM_NAME_STATIC_TUNIC2.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_BOOTS1, EZLJ_ITEM_NAME_STATIC_BOOTS1.size)
	n64dd_RamDefine(DDHOOK_ITEM_NAME_STATIC_BRACELET, EZLJ_ITEM_NAME_STATIC_BRACELET.size)

	n64dd_RamDefine(DDHOOK_OBJECT_GI_BRACELET, EZLJ_OBJECT_GI_BRACELET.size)
	n64dd_RamDefine(DDHOOK_OBJECT_GI_CLOTHES, EZLJ_OBJECT_GI_CLOTHES.size)
	n64dd_RamDefine(DDHOOK_OBJECT_GI_SHIELD1, EZLJ_OBJECT_GI_SHIELD1.size)
	n64dd_RamDefine(DDHOOK_OBJECT_GI_SHIELD2, EZLJ_OBJECT_GI_SHIELD2.size)

	n64dd_RamDefine(DDHOOK_OBJECT_FD, EZLJ_OBJECT_FD.size)

	n64dd_RamDefine(DDHOOK_MAP_48X85_STATIC, EZLJ_MAP_48X85_STATIC.size)

//----
n64dd_RamDefine(DDHOOK_FROMROM_START, 0)
	n64dd_RamDefine(DDHOOK_ICON_ITEM_STATIC, 0x888A0)
	n64dd_RamDefine(DDHOOK_ICON_ITEM_24_STATIC, 0xB400)
	n64dd_RamDefine(DDHOOK_OVL_EN_OSSAN, 0x65E0)

	n64dd_RamDefine(DDHOOK_OBJECT_PO_COMPOSER, 0x6FA0)
	n64dd_RamDefine(DDHOOK_OBJECT_HIDAN_OBJECTS, 0x17D20)
	n64dd_RamDefine(DDHOOK_OBJECT_BDOOR, 0x75C0)
	n64dd_RamDefine(DDHOOK_OBJECT_MIZU_OBJECTS, 0xB320)
	n64dd_RamDefine(DDHOOK_OBJECT_ICE_OBJECTS, 0x8D50)
	n64dd_RamDefine(DDHOOK_OBJECT_SPOT02_OBJECTS, 0x16620)
	n64dd_RamDefine(DDHOOK_PARAMETER_STATIC, 0x3B00)
	n64dd_RamDefine(DDHOOK_OBJECT_SD, 0xC6E0)
	n64dd_RamDefine(DDHOOK_OBJECT_FD2, 0x11A90)

	n64dd_RamDefine(DDHOOK_OVL_EN_FZ, 0x2010)
	n64dd_RamDefine(DDHOOK_OVL_BG_VB_SIMA, 0x710)
	n64dd_RamDefine(DDHOOK_OVL_EN_WF, 0x4310)
	n64dd_RamDefine(DDHOOK_OVL_BOSS_FD, 0x7330)
	n64dd_RamDefine(DDHOOK_OVL_BOSS_FD2, 0x3D30)
	n64dd_RamDefine(DDHOOK_OVL_BG_HIDAN_CURTAIN, 0xAA0)

n64dd_RamDefine(DDHOOK_VFILETABLE, EZLJ_VFILE_TABLE_SIZE)

	//Scene Room Buffers
	n64dd_RamDefine(DDHOOK_SCENETITLECARD, 0x1B00)						//SCENE TITLE CARD TEXTURE
	n64dd_RamDefine(DDHOOK_SCENE_ROOM_TABLE, 0x80)						//ROOM POINTER TABLE
	n64dd_RamDefine(DDHOOK_SCENE_ROOM_DATA, 0x18700)					//ROOM DATA

	n64dd_RamDefine(DDHOOK_PATCH, EZLJ_PATCH0_END - EZLJ_PATCH0)
