local mod = {}

mod.postRunFn = function(captureParams : NativeLuaTable, configDict : {{string, string}}, allModParams : {string : {string : integer}} )
	log.message("postRunFn called")

	local ganzzug_hide: {{string}} = {
		[1] = { 
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_aae_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_kombiverkehr_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_txlogistik_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_vtg_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa2_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_kombiverkehr_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_txlogistik_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_kombiverkehr_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_txlogistik_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_aae_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_kombiverkehr_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_txlogistik_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_vtg_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_wascosa_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/t2000_wascosa2_trailer.mdl",
		},
		[2] = { }
	}
	local fake_hide: {{string}} = {
		[1] = {
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_aae.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_kombiverkehr.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_txlogistik.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_vtg.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa2.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_kombiverkehr_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_txlogistik_ganzzug_mars.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_aae_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_kombiverkehr_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_txlogistik_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_vtg_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa_trailer.mdl",
			"mw_sdggmrs_t2000::/vehicle/waggon/t2000/fake_t2000_wascosa2_trailer.mdl",
		},                                           
		[2] = { }                                    
	}
	
	local selectedfilter_ganzzug: integer = allModParams[getCurrentModId()].t2000_ganzzug

	for _, v in ipairs(ganzzug_hide[selectedfilter_ganzzug]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end

	local selectedfilter_fake: integer = allModParams[getCurrentModId()].t2000_fake

	for _, v in ipairs(fake_hide[selectedfilter_fake]) do
		debugPrint("hide " .. v .. api.res.modelRep.find(v))
		api.res.modelRep.setVisible(api.res.modelRep.find(v), false)
	end
	

end

return mod