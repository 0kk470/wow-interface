
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1624345181,
	["minimap"] = {
		["minimapPos"] = 332.3788846255934,
		["hide"] = false,
	},
	["lastUpgrade"] = 1625648725,
	["dbVersion"] = 45,
	["displays"] = {
		["残忍精准"] = {
			["iconSource"] = -1,
			["xOffset"] = -273.9996337890625,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"193357", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["cooldown"] = true,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["id"] = "残忍精准",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "6(B04sHmIAg",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["parent"] = "骰子",
		},
		["强势连击"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"193356", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -204.0003051757813,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 60,
			["id"] = "强势连击",
			["uid"] = "azvu24EtbuG",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "骰子",
		},
		["大枪"] = {
			["xOffset"] = 3.00018310546875,
			["yOffset"] = 50,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["class"] = "ROGUE",
						["subeventPrefix"] = "SPELL",
						["use_class"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["use_absorbHealMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["event"] = "Power",
						["power"] = "4",
						["spellIds"] = {
						},
						["use_power"] = true,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_targetRequired"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["unit"] = "player",
						["realSpellName"] = "正中眉心",
						["use_spellName"] = true,
						["spellName"] = 315341,
						["genericShowOn"] = "showOnCooldown",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
			},
			["height"] = 99.99995422363281,
			["rotate"] = true,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\PVPFrame\\Icons\\PVP-Banner-Emblem-53",
			["parent"] = "OutLaw_Shot",
			["frameStrata"] = 4,
			["width"] = 100.0000991821289,
			["id"] = "大枪",
			["color"] = {
				1, -- [1]
				0.1098039215686275, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "e1KrBs5Iact",
			["discrete_rotation"] = 0,
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["骰子"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"重丢骰子", -- [1]
				"残忍精准", -- [2]
				"强势连击", -- [3]
				"骷髅黑帆", -- [4]
				"精准定位", -- [5]
				"大乱斗", -- [6]
				"埋藏的宝藏", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["yOffset"] = -242.9996032714844,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["xOffset"] = -157.99951171875,
			["internalVersion"] = 45,
			["borderOffset"] = 4,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["id"] = "骰子",
			["uid"] = "3O0FYDsTLk(",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["anchorPoint"] = "CENTER",
		},
		["切割"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -256,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["auranames"] = {
							"315496", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["realSpellName"] = "切割",
						["type"] = "spell",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["spellName"] = 315496,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 167,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 48,
			["id"] = "切割",
			["uid"] = "6y7BoxyD44y",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "insufficientResources",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "show",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["parent"] = "Outlaw",
		},
		["Outlaw"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"切割", -- [1]
				"刀锋冲刺", -- [2]
				"冲动", -- [3]
				"剑刃乱舞", -- [4]
				"申斥回响 冷却", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -38.99969482421875,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["selfPoint"] = "CENTER",
			["id"] = "Outlaw",
			["borderOffset"] = 4,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "LRjcaFHJ9Ft",
			["borderInset"] = 1,
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["yOffset"] = 133.0006713867188,
		},
		["OutLaw_Shot"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"大枪", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 2,
			["regionType"] = "group",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["scale"] = 1,
			["borderOffset"] = 4,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["selfPoint"] = "CENTER",
			["id"] = "OutLaw_Shot",
			["internalVersion"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "3JDpuzdZQKy",
			["config"] = {
			},
			["borderInset"] = 1,
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["大乱斗"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -100,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"193358", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -204,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 60,
			["id"] = "大乱斗",
			["uid"] = "vuhD9DutjlX",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "骰子",
		},
		["骷髅黑帆"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"199603", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -134,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 60,
			["id"] = "骷髅黑帆",
			["uid"] = "87pgN9uDf9o",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "骰子",
		},
		["重丢骰子"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -66,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = -64.00006103515625,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend\n",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["event"] = "Chat Message",
						["names"] = {
						},
						["spellIds"] = {
						},
						["events"] = "SPELL_UPDATE_USABLE,  PLAYER_AURAS_CHANGED",
						["custom"] = "function(...)\n    return CanReRoll(...)\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_absorbHealMode"] = true,
						["use_targetRequired"] = false,
						["debuffType"] = "HELPFUL",
						["use_absorbMode"] = true,
						["event"] = "Action Usable",
						["use_unit"] = true,
						["realSpellName"] = 315508,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315508,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "(EN) Adventure",
			["subRegions"] = {
			},
			["load"] = {
				["class_and_spec"] = {
					["single"] = 260,
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 31,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["displayText_format_p_time_precision"] = 1,
			["displayText"] = "ROLL\n",
			["shadowYOffset"] = -1,
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "重丢骰子",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "JxmoRfs6zMx",
			["color"] = {
				1, -- [1]
				0.6078431372549019, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "骰子",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "customcheck",
								["value"] = "function()\n   return CanReRoll()\nend",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["刀锋冲刺"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -256,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "刀锋冲刺",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 271877,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_talent"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = 107,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 48,
			["id"] = "刀锋冲刺",
			["uid"] = "5qtooTMeTF9",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "insufficientResources",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "Outlaw",
		},
		["精准定位"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -100,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"193359", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -274,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 60,
			["id"] = "精准定位",
			["uid"] = "X0ZVzXtc7X4",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "骰子",
		},
		["剑刃乱舞"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -256,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["auranames"] = {
							"13877", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["realSpellName"] = "剑刃乱舞",
						["type"] = "spell",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["spellName"] = 13877,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 47.0003662109375,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 48,
			["id"] = "剑刃乱舞",
			["uid"] = "b4aopP5wvPF",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "insufficientResources",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["value"] = "0",
						["variable"] = "charges",
						["op"] = "==",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownSwipe",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "show",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["parent"] = "Outlaw",
		},
		["埋藏的宝藏"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -100,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "function CanReRoll(event, ...)\n    local _, _, _, _, spellID = ...\n    spellID = spellID or 0\n    if not (event == 'SPELL_UPDATE_USABLE' and spellID == 315508) and not event == \"PLAYER_AURAS_CHANGED\" then\n        return false\n    end\n    local rogueBuffID = { [\"grand melee\"] = 193358, [\"Skull and Crossbones\"] = 199603, [\"True Bearing\"] = 193359, [\"Ruthless Precision\"] = 193357,[\"energy\"] = 199600,[\"Broadside\"] = 193356,}\n    local HasBuff = { [\"grand melee\"] = false, [\"Skull and Crossbones\"] = false, [\"True Bearing\"] = false, [\"Ruthless Precision\"] = false, [\"energy\"] = false, [\"Broadside\"] = false,}\n    local iBuffCount = 0\n    local buffDurations, i = { }, 1\n    local exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    while exist do\n        buffDurations[buffID] = duration\n        i = i + 1\n        exist, _, _, _, duration, _, _, _,_, buffID = UnitBuff(\"player\", i)\n    end\n    for name, id in pairs(rogueBuffID) do\n        --DEFAULT_CHAT_FRAME:AddMessage(\"test\" .. id)\n        if buffDurations[id] and buffDurations[id] >= 4 then\n            HasBuff[name] = true\n            iBuffCount = iBuffCount + 1\n        end\n    end\n    --没Buff\n    if iBuffCount == 0 then\n        return true\n    end\n    --垃圾Buff\n    if iBuffCount == 1 then\n        if HasBuff[\"grand melee\"] or HasBuff[\"energy\"] then\n            return true\n        end\n    end\n    return false\nend",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"199600", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -134,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 60,
			["id"] = "埋藏的宝藏",
			["uid"] = "BayPHXXBwKl",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 0,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "骰子",
		},
		["申斥回响 冷却"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -256.0001525878906,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["auranames"] = {
							"323547", -- [1]
						},
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["realSpellName"] = "申斥回响",
						["type"] = "spell",
						["use_spellName"] = true,
						["use_track"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["spellName"] = 323547,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_covenant"] = true,
				["covenant"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "Outlaw",
			["zoom"] = 0,
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["id"] = "申斥回响 冷却",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 48,
			["alpha"] = 1,
			["uid"] = "uP((KZArgSE",
			["inverse"] = true,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "insufficientResources",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "show",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [3]
			},
			["information"] = {
			},
			["xOffset"] = -72.99993896484375,
		},
		["冲动"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -256.0001525878906,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["auranames"] = {
							"13750", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["realSpellName"] = "冲动",
						["type"] = "spell",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["spellName"] = 13750,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = -13,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["icon"] = true,
			["width"] = 48,
			["id"] = "冲动",
			["uid"] = "tNrpWxRlkkp",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "insufficientResources",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "show",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["parent"] = "Outlaw",
		},
		["Melee AOE Range Checker"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    \n    if not aura_env.last_t or (GetTime() - aura_env.last_t > aura_env.config.throttle)\n    then\n        local count_in = 0\n        local count_out = 0\n        local combat_only = aura_env.config.combat_only\n        aura_env.last_t = GetTime()\n        for i = 1, 40 do\n            local unit = \"nameplate\"..i\n            if UnitCanAttack(\"player\", unit) and (not combat_only or UnitAffectingCombat(unit))\n            then\n                if WeakAuras.CheckRange(unit, aura_env.config.threshold, \"<=\")\n                then\n                    count_out = count_out + 1\n                    if WeakAuras.CheckRange(unit, aura_env.config.aoe_range, \"<=\")\n                    then\n                        count_in = count_in + 1\n                    end\n                end\n            end\n        end\n        aura_env.count_in_t = count_in\n        aura_env.count_out_t = count_out\n    end\n    if aura_env.count_out_t > 0\n    then\n        return aura_env.count_in_t..\"/\"..aura_env.count_out_t\n    end\nend\n    \n    ",
			["yOffset"] = -99.99981689453125,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/EbFV1pqkx",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Conditions",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["event"] = "Health",
						["customStacks"] = "",
						["customDuration"] = "",
						["unit"] = "player",
						["custom"] = "function()\n    \n    if not aura_env.last or (GetTime() - aura_env.last > aura_env.config.throttle)\n    then\n        local count_in = 0\n        local count_out = 0\n        local combat_only = aura_env.config.combat_only\n        aura_env.last = GetTime()\n        for i = 1, 40 do\n            local unit = \"nameplate\"..i\n            if UnitCanAttack(\"player\", unit) and (not combat_only or UnitAffectingCombat(unit))\n            then\n                if WeakAuras.CheckRange(unit, aura_env.config.threshold, \"<=\")\n                then\n                    count_out = count_out + 1\n                    if WeakAuras.CheckRange(unit, aura_env.config.aoe_range, \"<=\")\n                    then\n                        count_in = count_in + 1\n                    end\n                end\n            end\n        end\n        aura_env.count_in = count_in\n        aura_env.count_out = count_out\n    end\n    \n    return (aura_env.count_out > aura_env.count_in) and (aura_env.count_in < aura_env.config.aoe_cap)\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "function()\n    return aura_env.state and (aura_env.count > aura_env.config.aoe_cap)\nend",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_c2_format"] = "none",
			["desc"] = "A tool to check whether there are enemies out of your AOE range in the nearby area.\nCreated by CN 打牙专家丶-格瑞姆巴托",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 25,
			["shadowXOffset"] = 1,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["preferToUpdate"] = false,
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = -2.00048828125,
			["selfPoint"] = "BOTTOM",
			["config"] = {
				["threshold"] = 12,
				["throttle"] = 0.2,
				["combat_only"] = false,
				["aoe_range"] = 8,
				["aoe_cap"] = 5,
			},
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Melee AOE Range Checker",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 1,
					["step"] = 0.1,
					["width"] = 1,
					["min"] = 0,
					["name"] = "Update Frequency",
					["default"] = 0.2,
					["key"] = "throttle",
					["desc"] = "The interval between each update",
				}, -- [1]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [2]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 40,
					["step"] = 1,
					["width"] = 1,
					["min"] = 5,
					["name"] = "Detecting Range",
					["default"] = 15,
					["key"] = "threshold",
					["desc"] = "Scan enemies in this area that you cannot reach",
				}, -- [3]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [4]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 40,
					["step"] = 0.05,
					["width"] = 1,
					["min"] = 3,
					["name"] = "AOE Range",
					["default"] = 8,
					["key"] = "aoe_range",
					["desc"] = "The aoe range around you",
				}, -- [5]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [6]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 20,
					["step"] = 1,
					["width"] = 1,
					["min"] = 1,
					["name"] = "AOE Cap",
					["default"] = 5,
					["key"] = "aoe_cap",
					["desc"] = "The most targets you can attack at the same time",
				}, -- [7]
				{
					["type"] = "toggle",
					["key"] = "combat_only",
					["width"] = 1,
					["default"] = false,
					["name"] = "Check Combat Only",
					["useDesc"] = true,
					["desc"] = "True to check enemies not in combat",
				}, -- [8]
			},
			["uid"] = "rAVuWj76njs",
			["automaticWidth"] = "Auto",
			["useTooltip"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
						["op"] = ">",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p11111_format"] = "none",
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -1085.999938964844,
		["yOffset"] = -79.4991455078125,
		["height"] = 698.0003662109375,
		["width"] = 801.9999389648438,
	},
	["editor_theme"] = "Monokai",
}
