
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"193358", -- [1]
						},
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"199603", -- [1]
						},
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
						["use_exact_spellName"] = true,
						["realSpellName"] = 315508,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"193356", -- [1]
						},
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
			["authorOptions"] = {
			},
			["yOffset"] = -60,
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
			["parent"] = "战斗贼",
			["frameStrata"] = 4,
			["width"] = 100.0000991821289,
			["id"] = "大枪",
			["xOffset"] = 45,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				0.1098039215686275, -- [2]
				0, -- [3]
				1, -- [4]
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
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
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
		["申斥回响 冷却"] = {
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["auranames"] = {
							"323547", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
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
						["genericShowOn"] = "showAlways",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
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
			["parent"] = "战斗贼",
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
			["xOffset"] = 0,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"199600", -- [1]
						},
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
		["战斗贼"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"大枪", -- [1]
				"申斥回响 冷却", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -41.99993896484375,
			["yOffset"] = 229.0001831054688,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fullCircle"] = true,
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 1,
			["arcLength"] = 360,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["useLimit"] = false,
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
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 4,
			["borderInset"] = 1,
			["gridType"] = "RD",
			["id"] = "战斗贼",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rowSpace"] = 1,
			["uid"] = "WydcSxiGQPm",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["internalVersion"] = 45,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"193359", -- [1]
						},
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["auranames"] = {
							"193357", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
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
	},
	["lastArchiveClear"] = 1624345181,
	["minimap"] = {
		["minimapPos"] = 332.3788846255934,
		["hide"] = false,
	},
	["lastUpgrade"] = 1625648725,
	["dbVersion"] = 45,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -1266.998779296875,
		["yOffset"] = -319.4992065429688,
		["height"] = 698.0003051757812,
		["width"] = 801.9999389648438,
	},
	["editor_theme"] = "Monokai",
}
