local m, s, o

m = Map("vlmcsd", "Vlmcsd", translate("Vlmcsd Setting"))

s = m:section(NamedSection, "global", "", translate("Global Setting"))
s.anonymous = true

o = s:option(Flag, "enable", translate("Enable"))
o.default =true

o = s:option(Value, "Interface", translate("Interface"),
	translate("Listen only on the given interface or, if unchoose, on all"))
o.template = "vlmcsd_netlist"
o.nocreate = true
o.widget = "checkbox"

o = s:option(ListValue, "family", translate("Address family"))
o:value("", translate("IPv4 and IPv6"))
o:value("ipv4", translate("IPv4 only"))
o:value("ipv6", translate("IPv6 only"))

s = m:section(NamedSection, "vlmcsd", "", translate("Options"))
s.anonymous = true

o = s:option(Value, "Port", translate("Port"))
o.placeholder = "1688"
o.datatype = "port"

return m
