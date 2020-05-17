		
		function OpenPanel(player)
 local accName = getAccountName ( getPlayerAccount ( player ) )
if isObjectInACLGroup ("user."..accName, aclGetGroup ( "Administrator" ) ) then
triggerClientEvent ( player, "ShowPanelOpen:Support", player)
end
 end
 
function BindKeyAll()
local plrs = getElementsByType ( "player" )
for index,plrs in ipairs(plrs) do 
if not(getKeyBoundToFunction(plrs,OpenPanel)) then
 bindKey ( plrs,"F4", "down", OpenPanel ) 
end
	end
		end
addEventHandler ( "onPlayerJoin", getRootElement(), BindKeyAll )
BindKeyAll() 



function GetsPlayerIP(plr)
local IP = getPlayerIP ( plr )
setElementData(plr,"auth:IP",IP)
end
addEvent( "GET:IP", true )
addEventHandler( "GET:IP", root, GetsPlayerIP )

function GetsPlayerMoney(plr)
local Money = getPlayerMoney( plr )
setElementData(plr,"auth:Money",Money)
end
addEvent( "GET:Money", true )
addEventHandler( "GET:Money", root, GetsPlayerMoney )

function GetsPlayerSERIAL(plr)
local SERIAL = getPlayerSerial ( plr ) 
setElementData(plr,"auth:SERIAL",SERIAL)
end
addEvent( "GET:SERIAL", true )
addEventHandler( "GET:SERIAL", root, GetsPlayerSERIAL )



function FunctionKickPlayer(klikajacy,plr,powod)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

triggerClientEvent("showAnnouncement", getRootElement(),getPlayerName(plr).." został wyrzucony z serwera przez członka ekipy: "..slogin..", powód: "..powod, 15)
kickPlayer ( plr, klikajacy,"Powód:"..powod)

local temat = "Kick"
local stime = "Nie Wygasa"
local id=getElementData(plr,"character").id
local target=getElementData(klikajacy,"auth:id")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)	

end
addEvent( "Kick:Player", true )
addEventHandler( "Kick:Player", root, FunctionKickPlayer )


function FunctionBanPlayer(klikajacy,plr,powod,czas,jednostka)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

	local userid=getElementData(plr, "auth:uid")
	--local jednostka="DAY"
	--local czas = 30
	local q = string.format("INSERT INTO lss_bany SET id_user=%s,serial='%s',date_to=NOW()+INTERVAL %d %s,reason='%s',notes='%s',banned_by=%d", userid,exports.DB:esc(getPlayerSerial(plr)),czas,jednostka,exports.DB:esc(powod),exports.DB:esc("nick: "..getPlayerName(plr)),getElementData(klikajacy,"auth:uid"))
	exports.DB:zapytanie(q)
		triggerClientEvent("showAnnouncement", root, "Gracz " .. getPlayerName(plr) .. " został/a zbanowany/a przez członka ekipy " .. slogin .. ", powód: " .. powod, 15)
	kickPlayer(plr,"Polacz sie od nowa.")
	
local temat = "Ban"
local stime = czas.."dni"
local id=getElementData(plr,"character").id
local target=getElementData(klikajacy,"auth:id")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)	
	
end
addEvent( "Ban:Player", true )
addEventHandler( "Ban:Player", root, FunctionBanPlayer )


function FunctionCKPlayer(klikajacy,plr,powod)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local character=getElementData(plr,"character")
local tresc = powod
triggerEvent("broadcastCaptionedEvent", plr, getPlayerName(plr) .. " umiera "..tresc, 5, 15, true)
local x,y,z = getElementPosition(plr)	
local bron = getElementData(plr, "ck:bron") or "Nie znana"
exports.DB2:zapytanie("INSERT INTO lss_corpses (char_id, weaponid) VALUES (?, ?)",getElementData(plr,"character").id, bron)
triggerEvent("onItemDrop", plr, 166, getElementData(plr, "character").id, "Zwłoki", true) --na stale
exports["lss-admin"]:gameView_add("Blokada Postaci "..character.imie.." "..character.nazwisko..", powod: '".. tresc .."', przez: ".. slogin)
local query=string.format("UPDATE lss_characters SET dead='%s' WHERE id=%d LIMIT 1", exports.DB:esc(tresc), character.id)
exports.DB:zapytanie(query)
triggerClientEvent("showAnnouncement", getRootElement(),"Postać "..nameplr.." została zablokowana przez członka ekipy:"..slogin.." ,powód: "..powod, 15)
kickPlayer ( plr,"Twoja postać została uśmiercona przez członka ekipy:"..slogin)
end
addEvent( "CK:Player", true )
addEventHandler( "CK:Player", root, FunctionCKPlayer )


function FunctionHealPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

outputChatBox(" Uleczyłeś gracza:"..nameplr,klikajacy)
outputChatBox ( "((Zostałeś uleczony przez członka ekipy: "..slogin.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." uleczył gracza: "..nameplr)		
setElementHealth ( plr,100)
end
addEvent( "Heal:Player", true )
addEventHandler( "Heal:Player", root, FunctionHealPlayer )

function FunctionHPPlayer(klikajacy,plr,hp)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

outputChatBox(" Ustaliłes hp graczowi:"..nameplr,klikajacy)
outputChatBox ( "((Ustalono ci "..hp.."% HP przez członka ekipy: "..slogin.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." ustalił "..hp.."% HP graczowi : "..nameplr)		
setElementHealth ( plr,hp)
end
addEvent( "HP:Player", true )
addEventHandler( "HP:Player", root, FunctionHPPlayer )

function FunctionHPPlayer(klikajacy,plr,hajs)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

outputChatBox(" Uleczyłeś gracza:"..nameplr,klikajacy)
outputChatBox ( "((Ustalono ci "..hajs.."$ przez członka ekipy: "..slogin.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." ustalił "..hajs.."$ graczowi : "..nameplr)		
setPlayerMoney ( plr,hajs)
end
addEvent( "hajs:Player", true )
addEventHandler( "hajs:Player", root, FunctionHPPlayer )


	
function ShowEQPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

	toggleControl(plr,"sprint", true)
	if (isPedInVehicle(plr)) then
		removePedFromVehicle(plr)
	end
	if (doesPedHaveJetPack(plr)) then
	    removePedJetPack(plr)
outputChatBox("Zabrałeś JetPacka graczowi:"..nameplr,klikajacy)
outputChatBox ( "((Członek ekipy:"..slogin.." zabrał ci JetPacka))", plr )
exports["lss-admin"]:gameView_add(slogin.." zabrał JetPacka graczowi: "..nameplr)	
	else
    	    givePedJetPack(plr)
outputChatBox("Dałeś JetPacka graczowi:"..nameplr,klikajacy)
outputChatBox ( "((Otrzymałes JetPacka od członka ekipy:"..slogin.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." dał JetPacka graczowi: "..nameplr)	
	end
end
addEvent( "JP:Player", true )
addEventHandler( "JP:Player", root, ShowEQPlayer )


function ShowEQPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
triggerClientEvent(plr, "onEQDataRequest", root, klikajacy)

end
addEvent( "EQ:Player", true )
addEventHandler( "EQ:Player", root, ShowEQPlayer )

function ShowTTPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	local x,y,z = getElementPosition( plr )
	if (isPedInVehicle(klikajacy)) then
		removePedFromVehicle(klikajacy)
	end
	setPedAnimation(klikajacy)
	setElementDimension(klikajacy, getElementDimension(plr))
	setElementInterior(klikajacy, getElementInterior(plr))
	setElementPosition ( klikajacy, x+math.random(-3,3), y+math.random(-3,3), z+math.random(0,3) )
	local nick = getPlayerName(klikajacy)
	local login=getElementData(klikajacy,"auth:login")
	local id = getElementData(klikajacy,"id")
	local nick2 = getPlayerName(plr)
	local login2=getElementData(plr,"auth:login")
	local id2 = getElementData(plr,"id")
	exports["lss-admin"]:gameView_add(""..nick.."/"..login.."("..id..") użył przycisku tt do gracza:"..login2.."/"..nick2.."("..id2..")")
end
addEvent( "TT:Player", true )
addEventHandler( "TT:Player", root, ShowTTPlayer )

function ShowTHPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	local x,y,z = getElementPosition( klikajacy )
	if (isPedInVehicle(plr)) then
		removePedFromVehicle(plr)
	end
	setElementDimension(plr, getElementDimension(klikajacy))
	setElementInterior(plr, getElementInterior(klikajacy))
	setElementPosition ( plr, x+(math.random(-1,1)/5), y+(math.random(-1,1)/5), z+(math.random(0,10)/10) )
	local nick = getPlayerName(klikajacy)
	local login=getElementData(klikajacy,"auth:login")
	local id = getElementData(klikajacy,"id")
	local nick2 = getPlayerName(plr)
	local login2=getElementData(plr,"auth:login")
	local id2 = getElementData(plr,"id")
	exports["lss-admin"]:gameView_add(""..nick.."/"..login.."("..id..") użył przycisku th do gracza:"..login2.."/"..nick2.."("..id2..")")
end
addEvent( "TH:Player", true )
addEventHandler( "TH:Player", root, ShowTHPlayer )

function ShowxyzPlayer(klikajacy,plr,x,y,z)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	if (isPedInVehicle(plr)) then
		removePedFromVehicle(plr)
	end
	setElementPosition ( plr, x+(math.random(-1,1)/5), y+(math.random(-1,1)/5), z+(math.random(0,10)/10) )

end
addEvent( "xyz:Player", true )
addEventHandler( "xyz:Player", root, ShowxyzPlayer )

function ShowintPlayer(klikajacy,plr,int)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	if (isPedInVehicle(plr)) then
		removePedFromVehicle(plr)
	end
	setElementInterior ( plr, int )

end
addEvent( "int:Player", true )
addEventHandler( "int:Player", root, ShowintPlayer )

function TPPlayer(klikajacy,plr1,plr2)
local plr1 = getPlayerFromName ( plr1 )
local plr2 = getPlayerFromName ( plr2 )
--local slogin = getElementData(klikajacy,"auth:login")
--local nameplr1 = string.gsub(getPlayerName(plr1),"_"," ")
--local nameplr2 = string.gsub(getPlayerName(plr2),"_"," ")
--local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	if (isPedInVehicle(plr1)) then
		removePedFromVehicle(plr1)
	end
	local x1,y1,z1= getElementPosition(plr2)
	setElementPosition ( plr1, x1,y1,z1 )

end
addEvent( "TP:Player", true )
addEventHandler( "TP:Player", root, TPPlayer )

function ShowdimPlayer(klikajacy,plr,dim)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
	if (isPedInVehicle(plr)) then
		removePedFromVehicle(plr)
	end
	setElementDimension ( plr, dim )

end
addEvent( "dim:Player", true )
addEventHandler( "dim:Player", root, ShowdimPlayer )


function FunctionUNBWPlayer(klikajacy,plr)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
outputChatBox(" Zdjąłęś BW gracza:"..nameplr,klikajacy)
outputChatBox ( "((Został ci zdjęte stan nieprzytomności przez członka ekipy: "..slogin.."))", plr )
setElementData(plr,"bwEndTime", 0)
exports["lss-admin"]:gameView_add(slogin.." zdjął BW graczowi: "..nameplr)	
end
addEvent( "UNBW:Player", true )
addEventHandler( "UNBW:Player", root, FunctionUNBWPlayer )


function FunctionSkinlayer(klikajacy,plr,skin)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local character=getElementData(plr,"character")
setElementModel(plr,skin)
local query=string.format("UPDATE lss_characters SET skin='%s' WHERE id=%d LIMIT 1",skin, character.id)
exports.DB:zapytanie(query)
outputChatBox ( "((Otrzymałeś nowy skin postaci nadany przez członka ekipy: "..slogin.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." nadał graczowi: "..nameplr.." skin:"..skin)	
end
addEvent( "Skin:Player", true )
addEventHandler( "Skin:Player", root, FunctionSkinlayer )






function FunctionBBplayer(klikajacy,plr,czas,powod,jednostka)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local uid=getElementData(plr, "auth:uid")
--local jednostka = "MINUTE"
local q=string.format("UPDATE lss_users SET blokada_bicia=NOW()+INTERVAL %d %s WHERE id=%d LIMIT 1", czas, jednostka, uid)
exports.DB:zapytanie(q)

local temat = "Blokada bicia"
local stime = czas.."min"
local id=getElementData(plr,"character").id
local target=getElementData(plr,"auth:uid")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)



setElementData(plr, "kary:blokada_bicia", tostring(czas) .. " " .. jednostka .. " (połącz się ponownie aby poznać dokładny czas)")
toggleControl(plr, "fire", false)
toggleControl(plr, "aim_weapon", false)

if tonumber(czas) == 0 then
removeElementData(plr, "kary:blokada_bicia")
toggleControl(plr, "fire", true)
toggleControl(plr, "aim_weapon", true)
end

triggerClientEvent("showAnnouncement", getRootElement(),slogin.." nałozył blokade bicia/ataku na: "..nameplr.." ,powód: "..powod,15)
outputChatBox ( "((Otrzymałeś blokade bicia/ataku nadaną przez członka ekipy: "..slogin.." na "..czas.." "..jednostka..", powód: "..powod.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." nałozył blokade bicia/ataku na: "..nameplr.." ,powód: "..powod)	
end
addEvent( "BB:Player", true )
addEventHandler( "BB:Player", root, FunctionBBplayer )




function FunctionBOOCplayer(klikajacy,plr,czas,powod,jednostka)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local uid=getElementData(plr, "auth:uid")
--local jednostka = "MINUTE"
	local q=string.format("UPDATE lss_users SET blokada_ooc=NOW()+INTERVAL %d %s WHERE id=%d LIMIT 1", czas, jednostka, uid)
	exports.DB:zapytanie(q)

setElementData(plr, "kary:blokada_ooc", tostring(czas) .. " " .. jednostka .. " (połącz się ponownie aby poznać dokładny czas)")


local temat = "Blokada OOC"
local stime = czas.."min"
local id=getElementData(plr,"character").id
local target=getElementData(plr,"auth:uid")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)

if tonumber(czas) == 0 then
removeElementData(plr, "kary:blokada_ooc")
end


triggerClientEvent("showAnnouncement", getRootElement(),slogin.." nałozył blokade OOC na: "..nameplr.." ,powód: "..powod,15)
outputChatBox ( "((Otrzymałeś blokade OOC nadaną przez członka ekipy: "..slogin.." na "..czas.." "..jednostka..", powód: "..powod.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." nałozył blokade OOC na: "..nameplr.." ,powód: "..powod)	
end
addEvent( "BOOC:Player", true )
addEventHandler( "BOOC:Player", root, FunctionBOOCplayer )




function FunctionBAJplayer(klikajacy,plr,czas,powod)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local uid=getElementData(plr, "auth:uid")
local jednostka = "MINUTE"
local q=string.format("UPDATE lss_users SET blokada_aj=%d WHERE id=%d LIMIT 1", czas, uid)
exports.DB:zapytanie(q)
outputDebugString(q)

setElementData(plr, "kary:blokada_aj",tonumber(czas))

triggerClientEvent("showAnnouncement", getRootElement(),slogin.." nałozył Admin Jail ("..czas.." min) na: "..nameplr.." ,powód: "..powod,15)
outputChatBox ( "((Otrzymałeś Admin Jail nadany przez członka ekipy: "..slogin.." na "..czas.." minut, powód: "..powod.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." nałozył Admin Jail ("..czas.." min) na: "..nameplr.." ,powód: "..powod)	

	removePedFromVehicle(plr)
	setElementInterior(plr,10)
	setElementDimension(plr,2000+(character and tonumber(character.id) or 0))
	setElementPosition(plr, 215.53,109.52,999.02)

local temat = "Admin Jail"
local stime = czas.."min"
local id=getElementData(plr,"character").id
local target=getElementData(plr,"auth:uid")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)
	
if tonumber(czas) == 0 then
removeElementData(plr, "kary:blokada_aj")
end	
	

end
addEvent( "BAJ:Player", true )
addEventHandler( "BAJ:Player", root, FunctionBAJplayer )



function FunctionBPMplayer(klikajacy,plr,czas,powod,jednostka)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local uid=getElementData(plr, "auth:uid")
--local jednostka = "MINUTE"
local q=string.format("UPDATE lss_users SET blokada_pm=NOW()+INTERVAL %d %s WHERE id=%d LIMIT 1", czas, jednostka, uid)
exports.DB:zapytanie(q)

setElementData(plr, "kary:blokada_pm", tostring(czas) .. " " .. jednostka .. " (połącz się ponownie aby poznać dokładny czas)")

local temat = "Blokada PM"
local stime = czas.."min"
local id=getElementData(plr,"character").id
local target=getElementData(plr,"auth:uid")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)

if tonumber(czas) == 0 then
removeElementData(plr, "kary:blokada_pm")
end	

triggerClientEvent("showAnnouncement", getRootElement(),slogin.." nałozył blokade PM na: "..nameplr.." ,powód: "..powod,15)
outputChatBox ( "((Otrzymałeś blokade PM nadaną przez członka ekipy: "..slogin.." na "..czas.." "..jednostka..", powód: "..powod.."))", plr )
exports["lss-admin"]:gameView_add(slogin.." nałozył blokade PM na: "..nameplr.." ,powód: "..powod)	
end
addEvent( "BPM:Player", true )
addEventHandler( "BPM:Player", root, FunctionBPMplayer )

function FunctionWARNplayer(klikajacy,plr,powod)
local plr = getPlayerFromName ( plr )
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")

local temat = "Ostrzezenie"
local stime = "NIE WYGASA"
local id=getElementData(plr,"character").id
local target=getElementData(plr,"auth:uid")
exports.DB2:pobierzWyniki("INSERT INTO lss_punishments SET type=?, source=?, time=?, reason=?,char_id=?,target=?,date=NOW()",temat,slogin,stime,powod,id,target)

triggerClientEvent("onPlayerWarningReceived", plr,powod)
end
addEvent( "WARN:Player", true )
addEventHandler( "WARN:Player", root, FunctionWARNplayer )



function FunctionShowGroup(klikajacy)
  local frakcje=exports.DB:pobierzTabeleWynikow("SELECT id,name FROM lss_faction WHERE public=1")
  for i,v in ipairs(frakcje) do
	outputChatBox(v.id..". ".. v.name, klikajacy, 255,255,0)
	local t=""
	for _,player in ipairs(getElementsByType("player")) do
	  local fid=getElementData(player,"faction:id")
	  if (fid and tonumber(fid)==tonumber(v.id)) then
		  t=t..getPlayerName(player).."("..getElementData(player,"id")..")"..", "
	  end
	  if (string.len(t)>60) then
		outputChatBox("  "..t, klikajacy)
		t=""
	  end
	end
	if (string.len(t)>0) then
	  outputChatBox("  "..t, klikajacy)
	end
  end
 end 
 addEvent( "Show:Group:Player", true )
addEventHandler( "Show:Group:Player", root, FunctionShowGroup ) 


function auto (klikajacy,plr,model)
local plr = getPlayerFromName ( plr )
	if (not exports["lss-core"]:eq_playerHasFreeSpace(plr)) then
	    outputChatBox("Nie masz miejsca w ekwipunku.", plr, 255,0,0)
	    outputChatBox("Gracz nie ma miejsca w ekwipunku.", klikajacy, 255,0,0)
else
	local x,y,z = getElementPosition(plr)
	local dbid=exports["lss-vehicles"]:createVehicleEx(model,x,y+3,z,0,0,0)
	exports["lss-core"]:eq_giveItem(plr, 6, 2, dbid)
	end
	end
	addEvent( "auto", true )
addEventHandler( "auto", root, auto )

function fix(klikajacy,plr)
local player = getPlayerFromName ( plr )
	local vehicle = getPedOccupiedVehicle ( player )

if ( vehicle ) then
fixVehicle(vehicle)
else

end
	end
	addEvent( "fix", true )
addEventHandler( "fix", root, fix )

function neony(plr,kolor)
local player = getPlayerFromName ( plr )
	local vehicle = getPedOccupiedVehicle ( player )

if ( vehicle ) then
local dbid=getElementData(vehicle,"dbid")
exports["lss-vehicles"]:veh_save(vehicle)
local query=string.format("UPDATE lss_vehicles SET neony='"..kolor.."' WHERE id=%d LIMIT 1",dbid)
exports.DB:zapytanie(query)
exports["lss-vehicles"]:veh_reload(dbid)
else

end
end
	addEvent( "veh:neony", true )
addEventHandler( "veh:neony", root, neony )

function paliwo(plr,ilosc)
local player = getPlayerFromName ( plr )
	local vehicle = getPedOccupiedVehicle ( player )

if ( vehicle ) then
local dbid=getElementData(vehicle,"dbid")
exports["lss-vehicles"]:veh_save(vehicle)
local query=string.format("UPDATE lss_vehicles SET paliwo='"..ilosc.."' WHERE id=%d LIMIT 1",dbid)
exports.DB:zapytanie(query)
exports["lss-vehicles"]:veh_reload(dbid)
else

end
end
	addEvent( "veh:paliwo", true )
addEventHandler( "veh:paliwo", root, paliwo )

function koguty(plr,ilosc)
local player = getPlayerFromName ( plr )
	local vehicle = getPedOccupiedVehicle ( player )

if ( vehicle ) then
local dbid=getElementData(vehicle,"dbid")
exports["lss-vehicles"]:veh_save(vehicle)
local query=string.format("UPDATE lss_vehicles SET kogut='1' WHERE id=%d LIMIT 1",dbid)
exports.DB:zapytanie(query)
exports["lss-vehicles"]:veh_reload(dbid)
else

end
end
	addEvent( "veh:koguty", true )
addEventHandler( "veh:koguty", root, koguty)


function frakcja(plr,name)
local player = getPlayerFromName ( plr )
	local vehicle = getPedOccupiedVehicle ( player )

if ( vehicle ) then
local dbid=getElementData(vehicle,"dbid")

local id=exports.DB2:pobierzTabeleWynikow("SELECT id FROM lss_faction WHERE name=?",name)
for i,v in ipairs(id) do
id= v.id


exports["lss-vehicles"]:veh_save(vehicle)
local query=string.format("UPDATE lss_vehicles SET owning_faction='"..id.."' WHERE id=%d LIMIT 1",dbid)
exports.DB:zapytanie(query)
end
exports["lss-vehicles"]:veh_reload(dbid)
else

end
end
	addEvent( "veh:frakcja", true )
addEventHandler( "veh:frakcja", root, frakcja)

function pobierz()
local frakcje=exports.DB:pobierzTabeleWynikow("SELECT id,name FROM lss_faction")
for i,v in ipairs(frakcje) do
name= v.name
id=v.id
triggerClientEvent(source, "frakcje:wyniki", root, id,name)
end
end
addEvent( "frakcje:pobierz", true )
addEventHandler( "frakcje:pobierz", root, pobierz )

function org_pobierz()
local organizacje=exports.DB:pobierzTabeleWynikow("SELECT id,name FROM lss_co")
for i,v in ipairs(organizacje) do
name= v.name
id=v.id
triggerClientEvent(source, "organizacje:wyniki", root, id,name)
end
end
addEvent( "organizacje:pobierz", true )
addEventHandler( "organizacje:pobierz", root, org_pobierz )

function pobierz_przedmioty()
local przedmioty=exports.DB:pobierzTabeleWynikow("SELECT * FROM lss_items")
for i,v in ipairs(przedmioty) do
id=v.id
name=v.name
triggerClientEvent(source, "przedmioty:wyniki", root, id,name)
end
end
addEvent( "przedmioty:pobierz", true )
addEventHandler( "przedmioty:pobierz", root, pobierz_przedmioty )


function przedmiot_daj(player,plr,id,name)
local plr = getPlayerFromName ( plr )
if not id then return end
if (not exports["lss-core"]:eq_playerHasFreeSpace(plr)) then
	    outputChatBox("Nie masz miejsca w ekwipunku.", plr, 255,0,0)
	    outputChatBox("Gracz nie ma miejsca w ekwipunku.", player, 255,0,0)
else
exports["lss-core"]:eq_giveItem(plr, id, 5, dbid)
outputChatBox("Graczu dano item: "..name, player, 255,0,0)
end
end
addEvent( "przedmiot:daj", true )
addEventHandler( "przedmiot:daj", root, przedmiot_daj )


function pobierz2(id2)
--local q=string.format("SELECT rank_id,name FROM lss_faction_ranks WHERE faction_id=%d",id2)
--exports.DB:pobierzTabeleWynikow(q)
local stanowiska=exports.DB2:pobierzTabeleWynikow("SELECT rank_id,name FROM lss_faction_ranks WHERE faction_id=?",id2)
for i,v in ipairs(stanowiska) do
name= v.name
rank=v.rank_id
triggerClientEvent(source, "stanowiska:wyniki", root, rank,name)
end
end

addEvent( "stanowiska:pobierz", true )
addEventHandler( "stanowiska:pobierz", root, pobierz2 )

function pobierz3(id3)
--local q=string.format("SELECT rank_id,name FROM lss_faction_ranks WHERE faction_id=%d",id2)
--exports.DB:pobierzTabeleWynikow(q)
local skiny=exports.DB2:pobierzTabeleWynikow("SELECT skin FROM lss_faction_skins WHERE faction_id=?",id3)
for i,v in ipairs(skiny) do
skin= v.skin
triggerClientEvent(source, "skiny:wyniki", root, skin)
end
end

addEvent( "skiny:pobierz", true )
addEventHandler( "skiny:pobierz", root, pobierz3 )

function org_pobierz2(id2)
--local q=string.format("SELECT rank_id,name FROM lss_faction_ranks WHERE faction_id=%d",id2)
--exports.DB:pobierzTabeleWynikow(q)
local org_stanowiska=exports.DB2:pobierzTabeleWynikow("SELECT rank_id,name FROM lss_co_ranks WHERE co_id=?",id2)
for i,v in ipairs(org_stanowiska) do
name= v.name
rank=v.rank_id
triggerClientEvent(source, "org_stanowiska:wyniki", root, rank,name)
end
end

addEvent( "org_stanowiska:pobierz", true )
addEventHandler( "org_stanowiska:pobierz", root, org_pobierz2 )

function org_pobierz3(id3)
--local q=string.format("SELECT rank_id,name FROM lss_faction_ranks WHERE faction_id=%d",id2)
--exports.DB:pobierzTabeleWynikow(q)
local org_skiny=exports.DB2:pobierzTabeleWynikow("SELECT skin FROM lss_co_skins WHERE co_id=?",id3)
for i,v in ipairs(org_skiny) do
skin= v.skin
triggerClientEvent(source, "org_skiny:wyniki", root, skin)
end
end

addEvent( "org_skiny:pobierz", true )
addEventHandler( "org_skiny:pobierz", root, org_pobierz3 )


function dodaj(klikajacy,plr,faction_id,rank_id,skin,faction_name,rank_name)
local plr = getPlayerFromName ( plr )
local gracz_id = getElementData(plr,"character").id
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
local query=string.format("SELECT * FROM lss_character_factions WHERE faction_id='%s' and character_id='%s'",faction_id,gracz_id)
local wyniki=exports.DB:pobierzWyniki(query)
if  wyniki then
outputChatBox ( "Gracz "..nameplr.." jest zatrudniony już w tej frakcji.", klikajacy )
else
--outputChatBox(nameklikajcy..","..nameplr..","..faction_id..","..rank_id..","..skin..","..faction_name..","..rank_name)
exports.DB2:zapytanie("INSERT INTO lss_character_factions (character_id,faction_id,rank,skin) VALUES (?,?,?,?)", gracz_id,faction_id,rank_id,skin)
outputChatBox ( "((Członek ekipy: "..slogin.." dodał cię do frakcji "..faction_name.." na stanowisko "..rank_name.." ze skinem "..skin.."))", plr )
outputChatBox ( "((Dodałeś gracza "..nameplr.." do frakcji "..faction_name.." na stanowisko "..rank_name.." ze skinem "..skin.."))", klikajacy)
end
end

addEvent( "faction:dodaj", true )
addEventHandler( "faction:dodaj", root, dodaj )

function dodaj2(klikajacy,plr,co_id,rank_id,skin,co_name,rank_name)
local plr = getPlayerFromName ( plr )
local gracz_id = getElementData(plr,"character").id
local slogin = getElementData(klikajacy,"auth:login")
local nameplr = string.gsub(getPlayerName(plr),"_"," ")
local nameklikajcy = string.gsub(getPlayerName(klikajacy),"_"," ")
local query=string.format("SELECT * FROM lss_character_co WHERE co_id='%s' and character_id='%s'",co_id,gracz_id)
local wyniki=exports.DB:pobierzWyniki(query)
if  wyniki then
outputChatBox ( "Gracz "..nameplr.." jest już w tej organizacji.", klikajacy )
else
--outputChatBox(nameklikajcy..","..nameplr..","..co_id..","..rank_id..","..skin..","..co_name..","..rank_name)
exports.DB2:zapytanie("INSERT INTO lss_character_co (character_id,co_id,rank,skin) VALUES (?,?,?,?)", gracz_id,co_id,rank_id,skin)
outputChatBox ( "((Członek ekipy: "..slogin.." dodał cię do organizacji "..co_name.." na stanowisko "..rank_name.." ze skinem "..skin.."))", plr )
outputChatBox ( "((Dodałeś gracza "..nameplr.." do organizacji "..co_name.." na stanowisko "..rank_name.." ze skinem "..skin.."))", klikajacy)
end
end

addEvent( "co:dodaj", true )
addEventHandler( "co:dodaj", root, dodaj2 )