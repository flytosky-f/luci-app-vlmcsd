module("luci.controller.vlmcsd", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/vlmcsd") then
		return
	end
	local p = entry({"admin", "services", "vlmcsd"}, 
        cbi("vlmcsd"),
        _("Vlmcsd"), 70)
        
    p.leaf = true
end

