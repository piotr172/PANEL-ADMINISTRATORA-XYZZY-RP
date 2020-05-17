--glowne okno  |


GUIEditor = {
tab={},
    label = {},
    image = {},
    combobox = {},
    edit = {},
    button = {},
    window = {},
    gridlist = {},
    memo = {},
	tabpanel={}

}

function skaluj ( x, y, sz, wy )
local rozW, rozH = 1280, 720 
local autox, autoy = guiGetScreenSize()
local x = autox*(x/rozW)
local y = autoy*(y/rozH)
local sz = autox*(sz/rozW)
local wy = autoy*(wy/rozH)
return x, y, sz, wy
end

local x = {}
local y = {}
local z = {}
local w = {}
local pojazd =429

x[0],y[0],z[0],w[0]= skaluj(9, 26, 917, 693)
 x[1],y[1],z[1],w[1] = skaluj(153, 6, 917, 710)
 x[2],y[2],z[2],w[2] = skaluj(9, 18, 163, 633)
 x[3],y[3],z[3],w[3] = skaluj(182, 28, 58, 23)
 x[4],y[4],z[4],w[4] = skaluj(182, 61, 152, 21)
 x[5],y[5],z[5],w[5] = skaluj(182, 92, 152, 21)
 x[6],y[6],z[6],w[6] = skaluj(182, 123, 152, 21)
 x[7],y[7],z[7],w[7] = skaluj(182, 154, 152, 21)
 x[8],y[8],z[8],w[8] = skaluj(182, 185, 152, 21)
 x[9],y[9],z[9],w[9] = skaluj(182, 216, 152, 21)
 x[10],y[10],z[10],w[10] = skaluj(182, 278, 152, 21)
 x[11],y[11],z[11],w[11] = skaluj(182, 247, 152, 21)
 x[12],y[12],z[12],w[12] = skaluj(182, 309, 152, 21)
 x[13],y[13],z[13],w[13] = skaluj(182, 340, 152, 21)
 x[14],y[14],z[14],w[14] = skaluj(182, 377, 58, 23)
 x[15],y[15],z[15],w[15] = skaluj(182, 410, 152, 21)
 x[16],y[16],z[16],w[16] = skaluj(182, 445, 152, 21)
 x[17],y[17],z[17],w[17] = skaluj(182, 476, 58, 23)
 x[18],y[18],z[18],w[18] = skaluj(182, 509, 152, 21)
 x[19],y[19],z[19],w[19] = skaluj(182, 540, 152, 23)
 x[20],y[20],z[20],w[20] = skaluj(182, 571, 152, 21)
 x[21],y[21],z[21],w[21] = skaluj(182, 602, 152, 21)
 x[22],y[22],z[22],w[22] = skaluj(182, 563, 152, 21)
 x[23],y[23],z[23],w[23] = skaluj(182, 656, 152, 21)
 x[24],y[24],z[24],w[24] = skaluj(344, 61, 152, 21)
 x[25],y[25],z[25],w[25] = skaluj(344, 92, 152, 21)
 x[26],y[26],z[26],w[26] = skaluj(344, 123, 152, 21)
 x[27],y[27],z[27],w[27] = skaluj(344, 154, 152, 21)
 x[28],y[28],z[28],w[28] = skaluj(344, 185, 152, 21)
 x[29],y[29],z[29],w[29] = skaluj(344, 216, 152, 21)
 x[30],y[30],z[30],w[30] = skaluj(344, 247, 152, 21)
 x[31],y[31],z[31],w[31] = skaluj(344, 278, 152, 21)
 x[32],y[32],z[32],w[32] = skaluj(344, 309, 152, 21)
 x[33],y[33],z[33],w[33] = skaluj(344, 340, 152, 21)
 x[34],y[34],z[34],w[34] = skaluj(344, 410, 152, 21)
 x[35],y[35],z[35],w[35] = skaluj(344, 445, 182, 21)
 x[36],y[36],z[36],w[36] = skaluj(344, 509, 152, 21)
 x[37],y[37],z[37],w[37] = skaluj(344, 540, 152, 21)
 x[38],y[38],z[38],w[38] = skaluj(344, 571, 152, 21)
 x[39],y[39],z[39],w[39] = skaluj(344, 602, 152, 21)
 x[40],y[40],z[40],w[40] = skaluj(344, 656, 152, 21)
 x[41],y[41],z[41],w[41] = skaluj(547, 62, 96, 20)
 x[42],y[42],z[42],w[42] = skaluj(653, 62, 96, 20)
 x[43],y[43],z[43],w[43] = skaluj(759, 62, 96, 20)
 x[44],y[44],z[44],w[44] = skaluj(547, 93, 96, 20)
x[45],y[45],z[45],w[45]= skaluj(653, 93, 96, 20)
x[46],y[46],z[46],w[46]= skaluj( 759, 94, 96, 20)
x[47],y[47],z[47],w[47]= skaluj( 547, 124, 96, 20)
x[48],y[48],z[48],w[48]= skaluj( 653, 124, 96, 20)
x[49],y[49],z[49],w[49]= skaluj( 547, 155, 96, 20)
x[50],y[50],z[50],w[50]= skaluj( 653, 154, 96, 21)
x[51],y[51],z[51],w[51]= skaluj( 653, 248, 96, 20)
x[52],y[52],z[52],w[52]= skaluj( 547, 248, 96, 20)
x[53],y[53],z[53],w[53]= skaluj( 547, 187, 96, 20)
x[54],y[54],z[54],w[54]= skaluj( 653, 187, 96, 21)
x[55],y[55],z[55],w[55]= skaluj(759, 248, 96, 20)
x[56],y[56],z[56],w[56]= skaluj(759, 124, 96, 21)
x[57],y[57],z[57],w[57]= skaluj(547, 217, 96, 20)
x[58],y[58],z[58],w[58]= skaluj(653, 218, 96, 21)
x[59],y[59],z[59],w[59]= skaluj(759, 219, 96, 20)
x[60],y[60],z[60],w[60]= skaluj(547, 279, 96, 20)
x[61],y[61],z[61],w[61]= skaluj(653, 279, 96, 20)
x[62],y[62],z[62],w[62]= skaluj(759, 279, 96, 20)
x[63],y[63],z[63],w[63]= skaluj(547, 310, 96, 20)
x[102],y[102],z[102],w[102]= skaluj(653, 310, 65, 20)
x[103],y[103],z[103],w[103]= skaluj(718, 310, 65, 20)
x[104],y[104],z[104],w[104]= skaluj(783, 310, 65, 20)
x[65],y[65],z[65],w[65]= skaluj(547, 341, 96, 20)
x[66],y[66],z[66],w[66]= skaluj(547, 371, 96, 20)
x[67],y[67],z[67],w[67]= skaluj(653, 340, 202, 20)
x[68],y[68],z[68],w[68]= skaluj(653, 371, 202, 20)
x[69],y[69],z[69],w[69]= skaluj(547, 410, 96, 20)
x[70],y[70],z[70],w[70]= skaluj(653, 411, 96, 20)
x[71],y[71],z[71],w[71]= skaluj(547, 446, 300, 20)
x[72],y[72],z[72],w[72]= skaluj(825, 447, 33, 18)
x[73],y[73],z[73],w[73]= skaluj(710, 525, 308, 118)
x[74],y[74],z[74],w[74]= skaluj(547, 533, 96, 20)

x[91],y[91],z[91],w[91] = skaluj(653, 533, 96, 20)
x[92],y[92],z[92],w[92] = skaluj(759, 533, 96, 20)

x[93],y[93],z[93],w[93] = skaluj(547, 564, 96, 20)
x[101],y[101],z[101],w[101]= skaluj(710, 555, 308, 118)
x[94],y[94],z[94],w[94] = skaluj(653, 564, 96, 20)
x[95],y[95],z[95],w[95] = skaluj(759, 564, 96, 120)
x[96],y[96],z[96],w[96]= skaluj(547, 477, 300, 20)
x[97],y[97],z[97],w[97]= skaluj(825, 478, 33, 18)
x[98],y[98],z[98],w[98]= skaluj(759, 411, 96, 20)
x[99],y[99],z[99],w[99]= skaluj(653, 595, 96, 20)
x[100],y[100],z[100],w[100]= skaluj(759, 595, 96, 120)
 x[-1],y[-1],z[-1],w[-1] = skaluj(9, 18, 163+100, 633)
 
 komendy={
{"Urzad Miasta","tum"},
{"Warsztat 1","wm1"},
{"Warsztat 2","wm2"},
{"Warsztat 3","wm3"},
{"Warsztat 4","wm4"},
{"Warsztat 5","wm5"},
{"Port","port"},
{"Miasteczko Palamino","palamino"},
{"Miasteczko Blueberry","blueberry"},
{"Miasteczko Montgomery","montgomery"},
{"Suzby Miejskie","tsm"},
{"Kosciol","kosciol"},
{"Osrodek Szkolenia Kierowcow nr I", "tosk1"},
{"Osrodek Szkolenia Kierowcow nr II", "tosk2"},
{"Los Santos Police Departament", "tlspd"},
{"Sad","tsad"},
{"Los Santos News","tlsn"},
{"Komis Titanic","tktitanic"},
{"Firma kurierska", "tkurier"},
{"Straz pozarna", "tsp"},
{"Bank","tbank"},
{"Przechowalnia pojazdow","tprze"},
{"Scena", "tscena"},
{"Poczta", "tpoczta"},
{"Hala do paintballa", "tpball"},
{"Klub The Pig Pen","tpigp"},
{"Grapes","tgrapes"},
{"Las Colinas","tlcoli"},
{"Silownia na dzielnicy Ganton","tsilgan"},
{"Blokowiska na Idlewood","tdblock"},
{"Kasyno","tkasyno"},
{"Wiezienie","twiez"},
{"Wieza","twieza"},
{"Departament Turystyki","tdt"},
{"Oddzial Policji C.R.A.S.H / S.W.A.T","tss"},
{"Tartak" ,"ttartak"},
{"Wyspa", "twyspa"}

 }

 
GUIEditor.window[1] = guiCreateWindow(x[1],y[1],z[1],w[1], "Panel Administratora XyzzyRP | Wersja: 1.2 ", false)
        guiWindowSetSizable(GUIEditor.window[1], false)
		guiBringToFront (  GUIEditor.window[1] )
GUIEditor.tabpanel[1] = guiCreateTabPanel(x[0],y[0],z[0],w[0], false, GUIEditor.window[1])
        guiWindowSetSizable(GUIEditor.tabpanel[1], false)
		guiBringToFront (  GUIEditor.tabpanel[1] )

GUIEditor.tab[1] = guiCreateTab("Gracze", GUIEditor.tabpanel[1])
GUIEditor.tab[2] = guiCreateTab("Komendy", GUIEditor.tabpanel[1])


        GUIEditor.gridlist[5] = guiCreateGridList( x[-1],y[-1],z[-1],w[-1], false, GUIEditor.tab[2])
       Names2= guiGridListAddColumn(GUIEditor.gridlist[5], "Teleporty", 1.5)
	   guiGridListSetSortingEnabled (GUIEditor.gridlist[5], false)
	   for v,i in ipairs(komendy) do
	   								local row2 = guiGridListAddRow ( GUIEditor.gridlist[5] )
								guiGridListSetItemText ( GUIEditor.gridlist[5], row2, 1, i[1], false, false )
								guiGridListSetItemData ( GUIEditor.gridlist[5], row2, 1,  i[2])
end


        GUIEditor.gridlist[1] = guiCreateGridList( x[2],y[2],z[2],w[2], false, GUIEditor.tab[1])
       Names= guiGridListAddColumn(GUIEditor.gridlist[1], "", 0.9)
	   guiGridListSetSortingEnabled (GUIEditor.gridlist[1], false)
        GUIEditor.label[1] = guiCreateLabel(x[3],y[3],z[3],w[3], "Gracz:", false, GUIEditor.tab[1])
        guiSetFont(GUIEditor.label[1], "default-bold-small")
        guiLabelSetColor(GUIEditor.label[1], 255, 0, 0)
        GUIEditor.label[2] = guiCreateLabel(x[4],y[4],z[4],w[4], "Nick OOC(ID konta):", false, GUIEditor.tab[1])
        GUIEditor.label[3] = guiCreateLabel(x[5],y[5],z[5],w[5], "Imiê i Nazwisko:", false, GUIEditor.tab[1])
        GUIEditor.label[4] = guiCreateLabel(x[6],y[6],z[6],w[6], "Gotówka:", false, GUIEditor.tab[1])
        GUIEditor.label[5] = guiCreateLabel(x[7],y[7],z[7],w[7], "GP:", false, GUIEditor.tab[1])
        GUIEditor.label[6] = guiCreateLabel(x[8],y[8],z[8],w[8], "Skin:", false, GUIEditor.tab[1])
        GUIEditor.label[7] = guiCreateLabel(x[9],y[9],z[9],w[9], "Zdrowie:", false, GUIEditor.tab[1])
        GUIEditor.label[8] = guiCreateLabel(x[10],y[10],z[10],w[10], "X,Y,Z:", false, GUIEditor.tab[1])
        GUIEditor.label[9] = guiCreateLabel( x[11],y[11],z[11],w[11], "Ping:", false, GUIEditor.tab[1])
        GUIEditor.label[10] = guiCreateLabel( x[12],y[12],z[12],w[12], "Interior:", false, GUIEditor.tab[1])
        GUIEditor.label[11] = guiCreateLabel( x[13],y[13],z[13],w[13], "Dimension:", false, GUIEditor.tab[1])
        GUIEditor.label[12] = guiCreateLabel( x[14],y[14],z[14],w[14], "Klient:", false, GUIEditor.tab[1])
        guiSetFont(GUIEditor.label[12], "default-bold-small")
        guiLabelSetColor(GUIEditor.label[12], 255, 0, 0)
        GUIEditor.label[13] = guiCreateLabel( x[15],y[15],z[15],w[15], "IP:", false, GUIEditor.tab[1])
        GUIEditor.label[14] = guiCreateLabel(x[16],y[16],z[16],w[16], "Serial:", false, GUIEditor.tab[1])
        --GUIEditor.label[15] = guiCreateLabel( x[17],y[17],z[17],w[17], "Pojazd:", false, GUIEditor.tab[1])
        --guiSetFont(GUIEditor.label[15], "default-bold-small")
        --guiLabelSetColor(GUIEditor.label[15], 255, 0, 0)
       --GUIEditor.label[16] = guiCreateLabel(x[18],y[18],z[18],w[18], "Pojazd:", false, GUIEditor.tab[1])
        GUIEditor.label[17] = guiCreateLabel(x[17],y[17],z[17],w[17], "Kary:", false, GUIEditor.tab[1])
        guiSetFont(GUIEditor.label[17], "default-bold-small")
        guiLabelSetColor(GUIEditor.label[17], 255, 0, 0)
        GUIEditor.label[18] = guiCreateLabel(x[18],y[18],z[18],w[18], "Admin Jail:", false, GUIEditor.tab[1])
        GUIEditor.label[19] = guiCreateLabel(x[19],y[19],z[19],w[19], "Blokada OOC:", false, GUIEditor.tab[1])
        GUIEditor.label[20] = guiCreateLabel( x[20],y[20],z[20],w[20], "Blokada bicia:", false, GUIEditor.tab[1])
        GUIEditor.label[21] = guiCreateLabel(x[21],y[21],z[21],w[21], "Blokada PM:", false, GUIEditor.tab[1])
        GUIEditor.label[22] = guiCreateLabel(x[24],y[24],z[24],w[24], "", false, GUIEditor.tab[1])
        GUIEditor.label[23] = guiCreateLabel(x[25],y[25],z[25],w[25], "", false, GUIEditor.tab[1])
        GUIEditor.label[24] = guiCreateLabel(x[26],y[26],z[26],w[26], "", false, GUIEditor.tab[1])
        GUIEditor.label[25] = guiCreateLabel(x[27],y[27],z[27],w[27], "", false, GUIEditor.tab[1])
        GUIEditor.label[26] = guiCreateLabel(x[28],y[28],z[28],w[28], "", false, GUIEditor.tab[1])
        GUIEditor.label[27] = guiCreateLabel(x[29],y[29],z[29],w[29], "", false, GUIEditor.tab[1])
        GUIEditor.label[28] = guiCreateLabel(x[30],y[30],z[30],w[30], "", false, GUIEditor.tab[1])
        GUIEditor.label[29] = guiCreateLabel(x[31],y[31],z[31],w[31], "", false, GUIEditor.tab[1])
        GUIEditor.label[30] = guiCreateLabel( x[32],y[32],z[32],w[32], "", false, GUIEditor.tab[1])
        GUIEditor.label[31] = guiCreateLabel( x[33],y[33],z[33],w[33], "", false, GUIEditor.tab[1])
        GUIEditor.label[32] = guiCreateLabel( x[34],y[34],z[34],w[34], "", false, GUIEditor.tab[1])
        GUIEditor.label[33] = guiCreateLabel(x[35],y[35],z[35],w[35], "", false, GUIEditor.tab[1])
        --GUIEditor.label[34] = guiCreateLabel( x[36],y[36],z[36],w[36], "", false, GUIEditor.tab[1])
        GUIEditor.label[35] = guiCreateLabel(x[36],y[36],z[36],w[36], "", false, GUIEditor.tab[1])
        GUIEditor.label[36] = guiCreateLabel( x[37],y[37],z[37],w[37], "", false, GUIEditor.tab[1])
        GUIEditor.label[37] = guiCreateLabel( x[38],y[38],z[38],w[38], "", false, GUIEditor.tab[1])
        GUIEditor.label[38] = guiCreateLabel( x[39],y[39],z[39],w[39], "", false, GUIEditor.tab[1])
        GUIEditor.button[1] = guiCreateButton(x[41],y[41],z[41],w[41], "Kick!", false, GUIEditor.tab[1])
        GUIEditor.button[2] = guiCreateButton( x[42],y[42],z[42],w[42], "Ban!", false, GUIEditor.tab[1])
        GUIEditor.button[3] = guiCreateButton( x[43],y[43],z[43],w[43], "CK!", false, GUIEditor.tab[1])
        GUIEditor.button[4] = guiCreateButton(x[44],y[44],z[44],w[44], "AJ!", false, GUIEditor.tab[1])
        GUIEditor.button[5] = guiCreateButton(x[45],y[45],z[45],w[45], "Blok Bicia!", false, GUIEditor.tab[1])
        GUIEditor.button[6] = guiCreateButton(x[46],y[46],z[46],w[46], "Blok OOC!", false, GUIEditor.tab[1])
        GUIEditor.button[7] = guiCreateButton(x[47],y[47],z[47],w[47], "Blok PM!", false, GUIEditor.tab[1])
        GUIEditor.button[8] = guiCreateButton(x[48],y[48],z[48],w[48], "Warn:", false, GUIEditor.tab[1])
        GUIEditor.button[9] = guiCreateButton(x[49],y[49],z[49],w[49], "Skin:", false, GUIEditor.tab[1])
        GUIEditor.edit[1] = guiCreateEdit(x[50],y[50],z[50],w[50], "Podaj id skina", false, GUIEditor.tab[1])
        GUIEditor.button[10] = guiCreateButton(x[51],y[51],z[51],w[51], "UNBW", false, GUIEditor.tab[1])
        GUIEditor.button[11] = guiCreateButton(x[52],y[52],z[52],w[52], "Ulecz", false, GUIEditor.tab[1])
        GUIEditor.button[12] = guiCreateButton(x[53],y[53],z[53],w[53], "Zdrowie:", false, GUIEditor.tab[1])
        GUIEditor.edit[2] = guiCreateEdit(x[54],y[54],z[54],w[54], "Podaj ilosc", false, GUIEditor.tab[1])
        GUIEditor.button[13] = guiCreateButton(x[55],y[55],z[55],w[55], "EQ", false, GUIEditor.tab[1])
        GUIEditor.edit[3] = guiCreateEdit(x[56],y[56],z[56],w[56], "Powód warna", false, GUIEditor.tab[1])
        GUIEditor.button[14] = guiCreateButton(x[57],y[57],z[57],w[57], "Gotówka:", false, GUIEditor.tab[1])
        GUIEditor.edit[4] = guiCreateEdit(x[58],y[58],z[58],w[58], "Podaj ilosc", false, GUIEditor.tab[1])
        GUIEditor.button[15] = guiCreateButton(x[59],y[59],z[59],w[59], "JetPack", false, GUIEditor.tab[1])
        GUIEditor.button[16] = guiCreateButton(x[60],y[60],z[60],w[60], "TP do gracza", false, GUIEditor.tab[1])
        GUIEditor.button[17] = guiCreateButton(x[61],y[61],z[61],w[61], "TP gracza do", false, GUIEditor.tab[1])
        GUIEditor.button[18] = guiCreateButton(x[62],y[62],z[62],w[62], "TP gracza do siebie", false, GUIEditor.tab[1])
        GUIEditor.button[19] = guiCreateButton(x[63],y[63],z[63],w[63], "X,Y,Z", false, GUIEditor.tab[1])
        GUIEditor.edit[5] = guiCreateEdit(x[102],y[102],z[102],w[102], "X", false, GUIEditor.tab[1])
		GUIEditor.edit[9] = guiCreateEdit(x[103],y[103],z[103],w[103], "Y", false, GUIEditor.tab[1])
		GUIEditor.edit[10] = guiCreateEdit(x[104],y[104],z[104],w[104], "Z", false, GUIEditor.tab[1])
        GUIEditor.button[20] = guiCreateButton(x[65],y[65],z[65],w[65], "Interior:", false, GUIEditor.tab[1])
        GUIEditor.button[21] = guiCreateButton(x[66],y[66],z[66],w[66], "Dimension:", false, GUIEditor.tab[1])
        GUIEditor.edit[6] = guiCreateEdit(x[67],y[67],z[67],w[67], "Podaj interior", false, GUIEditor.tab[1])
        GUIEditor.edit[7] = guiCreateEdit(x[68],y[68],z[68],w[68], "Podaj dimension", false, GUIEditor.tab[1])
        GUIEditor.button[22] = guiCreateButton(x[69],y[69],z[69],w[69], "Dodaj do frakcji", false, GUIEditor.tab[1])
        GUIEditor.button[23] = guiCreateButton(x[70],y[70],z[70],w[70], "Edytuj frakcje", false, GUIEditor.tab[1])
		guiSetEnabled(GUIEditor.button[23],false)
        GUIEditor.button[24] = guiCreateButton(x[71],y[71],z[71],w[71], "Podaruj pojazd:"..getVehicleNameFromModel ( pojazd ), false, GUIEditor.tab[1])
        GUIEditor.image[1] = guiCreateStaticImage(x[72],y[72],z[72],w[72], "images/dropdown.png", false, GUIEditor.tab[1])
local gx, gy 		= guiGetSize ( GUIEditor.button[24], false )
		GUIEditor.gridlist[2]	= guiCreateGridList ( x[73],y[73],z[73],w[73], false )
						  guiGridListAddColumn( GUIEditor.gridlist[2], "", 0.85 )
						  guiSetAlpha ( GUIEditor.gridlist[2], 0.80 )
						  guiSetVisible ( GUIEditor.gridlist[2], false )
							local vehicleNames = {}
							for i = 400, 611 do
								if ( getVehicleNameFromModel ( i ) ~= "" ) then
									table.insert( vehicleNames, { model = i, name = getVehicleNameFromModel ( i ) } )
								end
							end
							table.sort( vehicleNames, function(a, b) return a.name < b.name end )
							for _,info in ipairs(vehicleNames) do
								local row = guiGridListAddRow ( GUIEditor.gridlist[2] )
								guiGridListSetItemText ( GUIEditor.gridlist[2], row, 1, info.name, false, false )
								guiGridListSetItemData ( GUIEditor.gridlist[2], row, 1, tostring ( info.model ) )
							end
		
        GUIEditor.button[25] = guiCreateButton(x[74],y[74],z[74],w[74], "Napraw pojazd", false, GUIEditor.tab[1])
		GUIEditor.button[26] = guiCreateButton(x[91],y[91],z[91],w[91], "Paliwo", false, GUIEditor.tab[1])
		GUIEditor.edit[8] = guiCreateEdit(x[92],y[92],z[92],w[92], "Podaj ilosc", false, GUIEditor.tab[1])
		GUIEditor.button[27] = guiCreateButton(x[94],y[94],z[94],w[94], "Do frakcji", false, GUIEditor.tab[1])
		GUIEditor.combobox[1] = guiCreateComboBox(x[95],y[95],z[95],w[95], "Wybierz frakcje", false, GUIEditor.tab[1])
		GUIEditor.button[28] = guiCreateButton(x[93],y[93],z[93],w[93], "Koguty", false, GUIEditor.tab[1])
		GUIEditor.button[29] = guiCreateButton(x[99],y[99],z[99],w[99], "Neony", false, GUIEditor.tab[1])
		GUIEditor.combobox[2] = guiCreateComboBox(x[100],y[100],z[100],w[100], "Kolor neonów", false, GUIEditor.tab[1])
		guiComboBoxAddItem(GUIEditor.combobox[2], "Czerwony")
        guiComboBoxAddItem(GUIEditor.combobox[2], "Niebieski")
        guiComboBoxAddItem(GUIEditor.combobox[2], "Zielony") 
		guiComboBoxAddItem(GUIEditor.combobox[2], "Zó³ty") 
		guiComboBoxAddItem(GUIEditor.combobox[2], "Rózowy") 
		guiComboBoxAddItem(GUIEditor.combobox[2], "Bia³y") 
		guiSetVisible ( GUIEditor.window[1],false )
		GUIEditor.button[31] = guiCreateButton(x[96],y[96],z[96],w[96], "Podaruj przedmiot:", false, GUIEditor.tab[1])
        GUIEditor.image[2] = guiCreateStaticImage(x[97],y[97],z[97],w[97], "images/dropdown.png", false, GUIEditor.tab[1])
		GUIEditor.gridlist[3]	= guiCreateGridList ( x[101],y[101],z[101],w[101], false )
						  guiGridListAddColumn( GUIEditor.gridlist[3], "", 0.85 )
						  guiSetAlpha ( GUIEditor.gridlist[3], 0.80 )
						  guiSetVisible ( GUIEditor.gridlist[3], false )
						  triggerServerEvent("przedmioty:pobierz", getRootElement())
		
		 GUIEditor.button[32] = guiCreateButton(x[98],y[98],z[98],w[98], "Organizacje", false, GUIEditor.tab[1])
		 



x[75],y[75],z[75],w[75]= skaluj(403, 204, 448, 225)	
x[76],y[76],z[76],w[76]= skaluj(403, 204, 448, 252)	
x[77],y[77],z[77],w[77] = skaluj(18, 43, 81, 24)	
x[78],y[78],z[78],w[78] = skaluj(67, 34, 343, 85)
x[79],y[79],z[79],w[79] = skaluj(78, 142, 125, 28)
x[81],y[81],z[81],w[81] = skaluj(244, 142, 125, 28)
x[82],y[82],z[82],w[82] = skaluj(11, 183, 320, 32)

x[83],y[83],z[83],w[83] = skaluj(10, 44, 81, 24)
x[84],y[84],z[84],w[84] = skaluj(67, 34, 343, 85)
x[85],y[85],z[85],w[85] = skaluj(77, 180, 125, 28)
x[86],y[86],z[86],w[86] = skaluj(244, 180, 125, 28)
x[87],y[87],z[87],w[87] = skaluj(10, 218, 320, 32)
x[88],y[88],z[88],w[88] = skaluj(10, 129, 66, 31)
x[89],y[89],z[89],w[89] = skaluj(68, 126, 84, 31)
x[90],y[90],z[90],w[90] = skaluj(244, 129, 144, 89)



--kick okno
kick = {
    label = {},
    button = {},
    window = {},
    memo = {}

}
		
        kick.window[1] = guiCreateWindow(x[75],y[75],z[75],w[75], "Kick!", false)
        guiWindowSetSizable(kick.window[1], false)

        kick.label[1] = guiCreateLabel(x[77],y[77],z[77],w[77], "Powód:", false, kick.window[1])
        kick.memo[1] = guiCreateMemo(x[78],y[78],z[78],w[78], "", false, kick.window[1])
        kick.button[1] = guiCreateButton(x[79],y[79],z[79],w[79], "Kick!", false, kick.window[1])
        kick.button[2] = guiCreateButton(x[81],y[81],z[81],w[81], "Anuluj!", false, kick.window[1])
        kick.label[2] = guiCreateLabel(x[82],y[82],z[82],w[82], "", false, kick.window[1])
guiSetVisible ( kick.window[1],false )


ck = {
    label = {},
    button = {},
    window = {},
    memo = {}

}
		
        ck.window[1] = guiCreateWindow(x[75],y[75],z[75],w[75], "CK!", false)
        guiWindowSetSizable(ck.window[1], false)

        ck.label[1] = guiCreateLabel(x[77],y[77],z[77],w[77], "Powód:", false, ck.window[1])
        ck.memo[1] = guiCreateMemo(x[78],y[78],z[78],w[78], "", false, ck.window[1])
        ck.button[1] = guiCreateButton(x[79],y[79],z[79],w[79], "CK!", false, ck.window[1])
        ck.button[2] = guiCreateButton(x[81],y[81],z[81],w[81], "Anuluj!", false, ck.window[1])
        ck.label[2] = guiCreateLabel(x[82],y[82],z[82],w[82], "", false, ck.window[1])
guiSetVisible ( ck.window[1],false )

		
		

		
--baj okno
baj = {
    label = {},
    button = {},
    window = {},
    memo = {}

}

        baj.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Admin Jail!", false)
        guiWindowSetSizable(baj.window[1], false)

        baj.label[1] = guiCreateLabel(x[83],y[83],z[83],w[83], "Powód:", false, baj.window[1])
        baj.memo[1] = guiCreateMemo(x[84],y[84],z[84],w[84], "", false, baj.window[1])
        baj.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "AJ!", false, baj.window[1])
        baj.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, baj.window[1])
        baj.label[2] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, baj.window[1])
        baj.label[3] = guiCreateLabel(x[88],y[88],z[88],w[88], "Czas:(m)", false, baj.window[1])
        baj.memo[2] = guiCreateMemo(x[89],y[89],z[89],w[89], "", false, baj.window[1])
guiSetVisible ( baj.window[1],false )

--ban okno
ban = {
    label = {},
    button = {},
    window = {},
	combobox ={},
    memo = {}

}
        ban.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "BAN!", false)
        guiWindowSetSizable(ban.window[1], false)

        ban.label[1] = guiCreateLabel(x[83],y[83],z[83],w[83], "Powód:", false, ban.window[1])
        ban.memo[1] = guiCreateMemo(x[84],y[84],z[84],w[84], "", false, ban.window[1])
        ban.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "BAN!", false, ban.window[1])
        ban.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, ban.window[1])
        ban.label[2] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, ban.window[1])
        ban.label[3] = guiCreateLabel(x[88],y[88],z[88],w[88], "Czas:", false, ban.window[1])
        ban.memo[2] = guiCreateMemo(x[89],y[89],z[89],w[89], "", false, ban.window[1])
        ban.combobox[1] = guiCreateComboBox(x[90],y[90],z[90],w[90], "Minuty", false, ban.window[1])
        guiComboBoxAddItem(ban.combobox[1], "Minuty")
        guiComboBoxAddItem(ban.combobox[1], "Godziny")
        guiComboBoxAddItem(ban.combobox[1], "Dni") 
guiSetVisible ( ban.window[1],false )

--bbicia okno
bbicia = {
    label = {},
    button = {},
    window = {},
	combobox ={},
    memo = {}

}
        bbicia.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Blokada Bicia!!", false)
        guiWindowSetSizable(bbicia.window[1], false)

        bbicia.label[1] = guiCreateLabel(x[83],y[83],z[83],w[83], "Powód:", false, bbicia.window[1])
        bbicia.memo[1] = guiCreateMemo(x[84],y[84],z[84],w[84], "", false, bbicia.window[1])
        bbicia.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "Blokuj!", false, bbicia.window[1])
        bbicia.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, bbicia.window[1])
        bbicia.label[2] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, bbicia.window[1])
        bbicia.label[3] = guiCreateLabel(x[88],y[88],z[88],w[88], "Czas:", false, bbicia.window[1])
        bbicia.memo[2] = guiCreateMemo(x[89],y[89],z[89],w[89], "", false, bbicia.window[1])
        bbicia.combobox[1] = guiCreateComboBox(x[90],y[90],z[90],w[90], "Minuty", false, bbicia.window[1])
        guiComboBoxAddItem(bbicia.combobox[1], "Minuty")
        guiComboBoxAddItem(bbicia.combobox[1], "Godziny")
        guiComboBoxAddItem(bbicia.combobox[1], "Dni") 
guiSetVisible ( bbicia.window[1],false )


--booc okno
booc = {
    label = {},
    button = {},
    window = {},
	combobox ={},
    memo = {}

}
        booc.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Blokada Bicia!", false)
        guiWindowSetSizable(booc.window[1], false)

        booc.label[1] = guiCreateLabel(x[83],y[83],z[83],w[83], "Powód:", false, booc.window[1])
        booc.memo[1] = guiCreateMemo(x[84],y[84],z[84],w[84], "", false, booc.window[1])
        booc.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "Blokuj!", false, booc.window[1])
        booc.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, booc.window[1])
        booc.label[2] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, booc.window[1])
        booc.label[3] = guiCreateLabel(x[88],y[88],z[88],w[88], "Czas:", false, booc.window[1])
        booc.memo[2] = guiCreateMemo(x[89],y[89],z[89],w[89], "", false, booc.window[1])
        booc.combobox[1] = guiCreateComboBox(x[90],y[90],z[90],w[90], "Minuty", false, booc.window[1])
        guiComboBoxAddItem(booc.combobox[1], "Minuty")
        guiComboBoxAddItem(booc.combobox[1], "Godziny")
        guiComboBoxAddItem(booc.combobox[1], "Dni") 
guiSetVisible ( booc.window[1],false )


--bpm okno
bpm = {
    label = {},
    button = {},
    window = {},
	combobox ={},
    memo = {}

}
        bpm.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Blokada Bicia!", false)
        guiWindowSetSizable(bpm.window[1], false)

        bpm.label[1] = guiCreateLabel(x[83],y[83],z[83],w[83], "Powód:", false, bpm.window[1])
        bpm.memo[1] = guiCreateMemo(x[84],y[84],z[84],w[84], "", false, bpm.window[1])
        bpm.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "Blokuj!", false, bpm.window[1])
        bpm.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, bpm.window[1])
        bpm.label[2] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, bpm.window[1])
        bpm.label[3] = guiCreateLabel(x[88],y[88],z[88],w[88], "Czas:", false, bpm.window[1])
        bpm.memo[2] = guiCreateMemo(x[89],y[89],z[89],w[89], "", false, bpm.window[1])
        bpm.combobox[1] = guiCreateComboBox(x[90],y[90],z[90],w[90], "Minuty", false, bpm.window[1])
        guiComboBoxAddItem(bpm.combobox[1], "Minuty")
        guiComboBoxAddItem(bpm.combobox[1], "Godziny")
        guiComboBoxAddItem(bpm.combobox[1], "Dni") 
guiSetVisible ( bpm.window[1],false )


--frakcje okno
frakcje = {
    label = {},
    button = {},
    window = {},
	gridlist ={},
    memo = {}

}

x[91],y[91],z[91],w[91] = skaluj(10, 27, 162, 150)
x[92],y[92],z[92],w[92] = skaluj(172, 27, 168, 150)
x[93],y[93],z[93],w[93] = skaluj(340, 27, 98, 150)

        frakcje.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Frakcje!!", false)
        guiWindowSetSizable(frakcje.window[1], false)

        frakcje.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "Dodaj!", false, frakcje.window[1])
        frakcje.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, frakcje.window[1])
        frakcje.label[1] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, frakcje.window[1])
        frakcje.gridlist[1] = guiCreateGridList(x[91],y[91],z[91],w[91], false, frakcje.window[1])
		 column1=guiGridListAddColumn( frakcje.gridlist[1], "ID", 0.2 )
		column2=guiGridListAddColumn( frakcje.gridlist[1], "Nazwa", 2 )
        --guiComboBoxAddItem(frakcje.gridlist[1], "Wybierz Frakcje")
        frakcje.gridlist[2] = guiCreateGridList(x[92],y[92],z[92],w[92], false, frakcje.window[1])
		column3=guiGridListAddColumn( frakcje.gridlist[2], "ID", 0.2 )
		column4=guiGridListAddColumn( frakcje.gridlist[2], "Nazwa", 1 )
        --guiComboBoxAddItem(frakcje.gridlist[2], "Wybierz Stanowisko")
        frakcje.gridlist[3] = guiCreateGridList (x[93],y[93],z[93],w[93], false, frakcje.window[1])
		column5=guiGridListAddColumn( frakcje.gridlist[3], "Skin", 1 )
        --guiComboBoxAddItem(frakcje.gridlist[3], "Skin")  
		local wiersz11 = guiGridListAddRow ( frakcje.gridlist[1] )
		guiGridListSetItemText ( frakcje.gridlist[1], wiersz11, column2, "Wybierz frakcje", false, false )
		guiSetVisible ( frakcje.window[1],false )
		
		
		
--organizacje okno
organizacje = {
    label = {},
    button = {},
    window = {},
	gridlist ={},
    memo = {}

}



        organizacje.window[1] = guiCreateWindow(x[76],y[76],z[76],w[76], "Organizacje!", false)
        guiWindowSetSizable(organizacje.window[1], false)

        organizacje.button[1] = guiCreateButton(x[85],y[85],z[85],w[85], "Dodaj!", false, organizacje.window[1])
        organizacje.button[2] = guiCreateButton(x[86],y[86],z[86],w[86], "Anuluj!", false, organizacje.window[1])
        organizacje.label[1] = guiCreateLabel(x[87],y[87],z[87],w[87], "", false, organizacje.window[1])
        organizacje.gridlist[1] = guiCreateGridList(x[91],y[91],z[91],w[91], false, organizacje.window[1])
		 column1=guiGridListAddColumn( organizacje.gridlist[1], "ID", 0.2 )
		column2=guiGridListAddColumn( organizacje.gridlist[1], "Nazwa", 2 )
        --guiComboBoxAddItem(organizacje.gridlist[1], "Wybierz organizacje")
        organizacje.gridlist[2] = guiCreateGridList(x[92],y[92],z[92],w[92], false, organizacje.window[1])
		column3=guiGridListAddColumn( organizacje.gridlist[2], "ID", 0.2 )
		column4=guiGridListAddColumn( organizacje.gridlist[2], "Nazwa", 1 )
        --guiComboBoxAddItem(organizacje.gridlist[2], "Wybierz Stanowisko")
        organizacje.gridlist[3] = guiCreateGridList (x[93],y[93],z[93],w[93], false, organizacje.window[1])
		column5=guiGridListAddColumn( organizacje.gridlist[3], "Skin", 1 )
        --guiComboBoxAddItem(organizacje.gridlist[3], "Skin")  
		local wiersz11 = guiGridListAddRow ( organizacje.gridlist[1] )
guiGridListSetItemText ( organizacje.gridlist[1], wiersz11, column2, "Wybierz organizacje", false, false )
		guiSetVisible ( organizacje.window[1],false )
		
		

--tp do gracza [nazwa]
tp = {
    button = {},
    window = {},
	gridlist ={}

}
x[105],y[105],z[105],w[105]= skaluj(499, 173, 265, 341)
x[106],y[106],z[106],w[106]= skaluj(11, 25, 244, 248)
x[107],y[107],z[107],w[107]= skaluj(11, 290, 99, 35)
x[108],y[108],z[108],w[108]= skaluj(156, 290, 99, 35)

        tp.window[1] = guiCreateWindow(x[105],y[105],z[105],w[105], "", false)
        guiWindowSetSizable(tp.window[1], false)
		guiSetVisible(tp.window[1],false)

        tp.gridlist[1] = guiCreateGridList(x[106],y[106],z[106],w[106], false, tp.window[1])
		Names2= guiGridListAddColumn(tp.gridlist[1], "", 0.9)

        tp.button[1] = guiCreateButton(x[107],y[107],z[107],w[107], "Tepaj", false, tp.window[1])
        tp.button[2] = guiCreateButton(x[108],y[108],z[108],w[108], "Anuluj", false, tp.window[1])    
		


function SelectPlayerGroup(player)
guiGridListClear ( GUIEditor.gridlist[1] )
local plrs = getElementsByType ( "player" )
for index,plrs in ipairs(plrs) do 
local character = getElementData(plrs,"character") or false
local auth = getElementData(plrs,"auth:login") or false
if not(character == false) then 
local wiersz = guiGridListAddRow ( GUIEditor.gridlist[1] )
local name = string.gsub(getPlayerName ( plrs ),"_"," ")
guiGridListSetItemText ( GUIEditor.gridlist[1], wiersz, Names, name, false, false )
	end
		end
		   end

function SelecetPlayerGridList()
if ( guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ) ~= -1 ) then
local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 )
if ( player ) then
for i,v in ipairs(getElementsByType("player")) do
local players = string.gsub(player," ","_")
if (getPlayerName(v) == players) then 
local player = v
triggerServerEvent ("GET:Money", player, player )
triggerServerEvent ("GET:IP", player, player )
triggerServerEvent ("GET:SERIAL", player, player )



local login = getElementData(player,"auth:login") or "Anoniomowy"
local name = string.gsub(getPlayerName ( player ),"_"," ")
local pieniadze = getElementData(player,"auth:Money") or 0
local GP = getElementData(player,"GP") or "?"
local UID = getElementData(player,"character").id or "?"
local HP = math.ceil(getElementHealth(player))
local ip = getElementData(player,"auth:IP")  
local serial = getElementData(player,"auth:SERIAL")  
local skin =getPedSkin(player)
local x,y,z= getElementPosition(player)
p=string.format("%.2f,%.2f,%.2f",x,y,z)
local i=  getElementInterior(player)
local d = getElementDimension(player)
local ping = getPlayerPing(player)
local bb = getElementData(player,"kary:blokada_bicia") or "Brak"
local booc = getElementData(player,"kary:blokada_ooc") or "Brak"
local bpm = getElementData(player,"kary:blokada_pm") or "Brak"
local baj = getElementData(player,"kary:blokada_aj") or "Brak"



guiSetText(GUIEditor.label[22],login.."("..UID..")")
guiSetText(GUIEditor.label[23],name)
guiSetText(GUIEditor.label[24],pieniadze.."$")
guiSetText(GUIEditor.label[25],GP)
guiSetText(GUIEditor.label[26],skin)
guiSetText(GUIEditor.label[27],HP.."%")
guiSetText(GUIEditor.label[28],ping)
guiSetText(GUIEditor.label[29],p)
guiSetText(GUIEditor.label[30],i)
guiSetText(GUIEditor.label[31],d)
guiSetText(GUIEditor.label[32],ip)
guiSetText(GUIEditor.label[33],serial)

guiSetText(GUIEditor.label[37],bb)
guiSetText(GUIEditor.label[35],baj)
guiSetText(GUIEditor.label[36],booc)
guiSetText(GUIEditor.label[38],bpm)

end
	end
		end
			end
				end
addEventHandler ( "onClientRender",getRootElement( ), SelecetPlayerGridList )
		   
		   
		   
function ShowPanelOpen(player)
if (( guiGetVisible ( GUIEditor.window[1] ) == false ) and ( guiGetVisible ( organizacje.window[1] ) == false ) and ( guiGetVisible ( tp.window[1] ) == false ) and ( guiGetVisible ( frakcje.window[1] ) == false ) and ( guiGetVisible ( ban.window[1] ) == false ) and ( guiGetVisible ( baj.window[1] ) == false ) and ( guiGetVisible ( bpm.window[1] ) == false ) and ( guiGetVisible ( booc.window[1] ) == false ) and ( guiGetVisible ( ck.window[1] ) == false ) and ( guiGetVisible ( kick.window[1] ) == false ) and ( guiGetVisible ( bbicia.window[1] ) == false )) then
SelectPlayerGroup(getLocalPlayer())
showCursor (true) 
guiSetVisible ( GUIEditor.window[1], true )
guiComboBoxClear(GUIEditor.combobox[1]) 
triggerServerEvent("frakcje:pobierz", getRootElement(), getLocalPlayer())
triggerServerEvent("organizacje:pobierz", getRootElement(), getLocalPlayer())
else
if (( guiGetVisible ( frakcje.window[1] ) == true ) or ( guiGetVisible ( organizacje.window[1] ) == true ) or ( guiGetVisible ( tp.window[1] ) == true ) or ( guiGetVisible ( ban.window[1] ) == true ) or ( guiGetVisible ( baj.window[1] ) == true ) or ( guiGetVisible ( bpm.window[1] ) == true ) or ( guiGetVisible ( booc.window[1] ) == true ) or ( guiGetVisible ( ck.window[1] ) == true ) or ( guiGetVisible ( kick.window[1] ) == true ) or ( guiGetVisible ( bbicia.window[1] ) == true )) then
showCursor(true)
else
showCursor (false) 
  guiSetVisible ( GUIEditor.window[1],false )
  if guiGetVisible(GUIEditor.gridlist[2]) == true then guiSetVisible(GUIEditor.gridlist[2],false) end
  if guiGetVisible(GUIEditor.gridlist[3]) == true then guiSetVisible(GUIEditor.gridlist[3],false) end
end
end
end
addEvent( "ShowPanelOpen:Support", true )
addEventHandler( "ShowPanelOpen:Support", root, ShowPanelOpen )


function aClientDoubleClick ( button )
if ( source == GUIEditor.gridlist[2] ) then
		local item = guiGridListGetSelectedItem ( GUIEditor.gridlist[2] )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( GUIEditor.gridlist[2], item, 1 ) ~= "" ) then
				pojazd = tonumber ( guiGridListGetItemData ( GUIEditor.gridlist[2], item, 1 ) )
				guiSetText ( GUIEditor.button[24], "Podaruj pojazd: "..guiGridListGetItemText ( GUIEditor.gridlist[2], item, 1 ).." " )
			end
		end
		guiSetVisible ( GUIEditor.gridlist[2], false )
	if ( guiGetVisible ( GUIEditor.gridlist[2] ) ) then guiSetVisible ( GUIEditor.gridlist[2], false ) end
	
elseif ( source == frakcje.gridlist[1] ) then
		local item = guiGridListGetSelectedItem ( frakcje.gridlist[1] )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( frakcje.gridlist[1], item, 1 ) ~= "" ) then
			local id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
			guiGridListClear ( frakcje.gridlist[2] )
			guiGridListClear ( frakcje.gridlist[3] )
pokazstanowiska(id)
pokazskiny(id)
			end
		end
		
elseif ( source == organizacje.gridlist[1] ) then
		local item = guiGridListGetSelectedItem ( organizacje.gridlist[1] )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( organizacje.gridlist[1], item, 1 ) ~= "" ) then
			local id = guiGridListGetItemText ( organizacje.gridlist[1], guiGridListGetSelectedItem ( organizacje.gridlist[1] ), 1 )
			guiGridListClear ( organizacje.gridlist[2] )
			guiGridListClear ( organizacje.gridlist[3] )
org_pokazstanowiska(id)
org_pokazskiny(id)
			end
		end
		
		elseif ( source == GUIEditor.gridlist[5]  ) then
		local item = guiGridListGetSelectedItem ( GUIEditor.gridlist[5]  )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( GUIEditor.gridlist[5] , item, 1 ) ~= "" ) then
			local nazwa = guiGridListGetItemText ( GUIEditor.gridlist[5], guiGridListGetSelectedItem ( GUIEditor.gridlist[5] ), 1 )
			local id =   guiGridListGetItemData ( GUIEditor.gridlist[5], item, 1 ) 
outputChatBox("((Miejsce:#FFFFFF  "..nazwa.."#e7d9b0, Komenda:#FFFFFF  /"..id.."#e7d9b0  ))", 231, 217, 176, true)
triggerServerEvent("tp_"..id.."", getRootElement(), getLocalPlayer())
			end
		end

elseif ( source == GUIEditor.gridlist[3] ) then
		local item = guiGridListGetSelectedItem ( GUIEditor.gridlist[3] )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( GUIEditor.gridlist[3], item, 1 ) ~= "" ) then
				itemdaj = tonumber ( guiGridListGetItemData ( GUIEditor.gridlist[3], item, 1 ) )
				itemnazwa =guiGridListGetItemText ( GUIEditor.gridlist[3], guiGridListGetSelectedItem ( GUIEditor.gridlist[3] ), 1 )
				guiSetText ( GUIEditor.button[31], "Podaruj przedmiot: "..guiGridListGetItemText ( GUIEditor.gridlist[3], item, 1 ).." " )
			end
		end
		guiSetVisible ( GUIEditor.gridlist[3], false )
	if ( guiGetVisible ( GUIEditor.gridlist[3] ) ) then guiSetVisible ( GUIEditor.gridlist[3], false ) end
end
end



addEventHandler ( "onClientGUIDoubleClick", root, aClientDoubleClick )


function aClientClick ( button )
if ( source == GUIEditor.button[24] ) then 
	if guiGetVisible(GUIEditor.gridlist[2]) ==true then
	guiSetVisible ( GUIEditor.gridlist[2], false )
	guiBringToFront ( GUIEditor.gridlist[2] )
	 end
guiBringToFront ( GUIEditor.image[1] ) 
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
triggerServerEvent("auto", getRootElement(), getLocalPlayer(), player,pojazd)


end

if ( source == GUIEditor.button[31] ) then 
	if guiGetVisible(GUIEditor.gridlist[3]) ==true then
	guiSetVisible ( GUIEditor.gridlist[3], false )
	guiBringToFront ( GUIEditor.gridlist[3] )
	 end
guiBringToFront ( GUIEditor.image[2] ) 
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("przedmiot:daj", getRootElement(), getLocalPlayer(), player, itemdaj,itemnazwa)
end

--edity
	if ( source ==  GUIEditor.edit[1]) then
	guiSetText(GUIEditor.edit[1],"")
	elseif ( source ==  GUIEditor.edit[2]) then
	guiSetText(GUIEditor.edit[2],"")
	elseif ( source ==  GUIEditor.edit[3]) then
	guiSetText(GUIEditor.edit[3],"")
	elseif ( source ==  GUIEditor.edit[4]) then
	guiSetText(GUIEditor.edit[4],"")
	elseif ( source ==  GUIEditor.edit[5]) then
	guiSetText(GUIEditor.edit[5],"")
	elseif ( source ==  GUIEditor.edit[6]) then
	guiSetText(GUIEditor.edit[6],"")
	elseif ( source ==  GUIEditor.edit[7]) then
	guiSetText(GUIEditor.edit[7],"")
	elseif ( source ==  GUIEditor.edit[8]) then
	guiSetText(GUIEditor.edit[8],"")
	elseif ( source ==  GUIEditor.edit[9]) then
	guiSetText(GUIEditor.edit[9],"")
	elseif ( source ==  GUIEditor.edit[10]) then
	guiSetText(GUIEditor.edit[10],"")
	
	end

	if ( guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ) == -1 ) then
	else
	
	if ( source == GUIEditor.button[17] ) then  --otwieranie okna tp
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( tp.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(tp.window[1],player)
	
	
guiGridListClear ( tp.gridlist[1] )
local plrs = getElementsByType ( "player" )
for index,plrs in ipairs(plrs) do 
local character = getElementData(plrs,"character") or false
if not(character == false) then 
local wiersz = guiGridListAddRow ( tp.gridlist[1] )
local name = string.gsub(getPlayerName ( plrs ),"_"," ")
guiGridListSetItemText ( tp.gridlist[1], wiersz, Names2, name, false, false )
	end
		end
		
	elseif ( source == tp.button[1] ) then  --przycisk tp
	if ( guiGridListGetSelectedItem ( tp.gridlist[1] ) ~= -1 ) then
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( tp.window[1],false )
	local player_tepany= guiGetText(tp.window[1])
	local player_do = guiGridListGetItemText ( tp.gridlist[1], guiGridListGetSelectedItem ( tp.gridlist[1] ), 1 ) 
	local player_do = string.gsub(player_do," ","_")
	
	triggerServerEvent("TP:Player", getRootElement(), getLocalPlayer(), player_tepany,player_do)
		end
	
	elseif ( source == tp.button[2] ) then  --anulowanie tp
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( tp.window[1],false )
	
	elseif ( source == GUIEditor.button[1] ) then  --otwieranie okna kick
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( kick.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(kick.label[2],player)
	
	elseif ( source == kick.button[1] ) then  --przycisk kickania
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( kick.window[1],false )
	local powod = guiGetText(kick.memo[1])
	local player= guiGetText(kick.label[2])
	triggerServerEvent("Kick:Player", getRootElement(), getLocalPlayer(), player,powod)
	
	elseif ( source == kick.button[2] ) then  --anulowanie kicku
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( kick.window[1],false )
	--koniec kick
	
	
	elseif ( source == GUIEditor.button[2] ) then  --otwieranie okna banowania
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( ban.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(ban.label[2],player)
	
	elseif ( source == ban.button[1] ) then  --przycisk banowania
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( ban.window[1],false )
	local czas= guiGetText(ban.memo[2])
	if czas >= "0" then
	local item = guiComboBoxGetSelected(ban.combobox[1])
local text = guiComboBoxGetItemText(ban.combobox[1], item)
if text =="Minuty" then
		jednostka="MINUTE"
	elseif text=="Godziny" then
		jednostka="HOUR"
	elseif (text=="Dni") then
		jednostka="DAY"
	end
	local powod = guiGetText(ban.memo[1])
	local player= guiGetText(ban.label[2])
	triggerServerEvent("Ban:Player", getRootElement(), getLocalPlayer(), player,powod,czas,jednostka)
	end
	elseif ( source == ban.button[2] ) then  --anulowanie bana
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( ban.window[1],false )
	--koniec ban
	
	elseif ( source == GUIEditor.button[3] ) then  --otwieranie okna ck
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( ck.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(ck.label[2],player)
	
	elseif ( source == ck.button[1] ) then  --przycisk ck
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( ck.window[1],false )
	local powod = guiGetText(ck.memo[1])
	local player= guiGetText(ck.label[2])
	triggerServerEvent("CK:Player", getRootElement(), getLocalPlayer(), player,powod)
	
	elseif ( source == ck.button[2] ) then  --anulowanie ck
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( ck.window[1],false )
	--koniec ck
	
	
	
	elseif ( source == GUIEditor.button[4] ) then  --otwieranie okna baj
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( baj.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(baj.label[2],player)
	
	elseif ( source == baj.button[1] ) then  --przycisk baj
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( baj.window[1],false )
	local czas= guiGetText(baj.memo[2])
	if czas >= "0" then
	local powod = guiGetText(baj.memo[1])
	local player= guiGetText(baj.label[2])
	triggerServerEvent("BAJ:Player", getRootElement(), getLocalPlayer(), player,czas,powod)
	end
	elseif ( source == baj.button[2] ) then  --anulowanie baj
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( baj.window[1],false )
	--koniec baj
	
	
		elseif ( source == GUIEditor.button[5] ) then  --otwieranie okna blokady bicia
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( bbicia.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(bbicia.label[2],player)
	
	elseif ( source == bbicia.button[1] ) then  --przycisk blokady bicia
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( bbicia.window[1],false )
	local czas= guiGetText(bbicia.memo[2])
	if czas >= "0" then
	local item = guiComboBoxGetSelected(bbicia.combobox[1])
local text = guiComboBoxGetItemText(bbicia.combobox[1], item)
if text =="Minuty" then
		jednostka="MINUTE"
	elseif text=="Godziny" then
		jednostka="HOUR"
	elseif (text=="Dni") then
		jednostka="DAY"
	end
	local powod = guiGetText(bbicia.memo[1])
	local player= guiGetText(bbicia.label[2])
	triggerServerEvent("BB:Player", getRootElement(), getLocalPlayer(), player,czas,powod,jednostka)
	end
	elseif ( source == bbicia.button[2] ) then  --anulowanie blokady bicia
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( bbicia.window[1],false )
	--koniec bbicia
	
	
	elseif ( source == GUIEditor.button[6] ) then  --otwieranie okna blokady ooc
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( booc.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(booc.label[2],player)
	
	elseif ( source == booc.button[1] ) then  --przycisk blokady ooc
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( booc.window[1],false )
	local czas= guiGetText(booc.memo[2])
	if czas >= "0" then
	local item = guiComboBoxGetSelected(booc.combobox[1])
local text = guiComboBoxGetItemText(booc.combobox[1], item)
if text =="Minuty" then
		jednostka="MINUTE"
	elseif text=="Godziny" then
		jednostka="HOUR"
	elseif (text=="Dni") then
		jednostka="DAY"
	end
	local powod = guiGetText(booc.memo[1])
	local player= guiGetText(booc.label[2])
	triggerServerEvent("BOOC:Player", getRootElement(), getLocalPlayer(), player,czas,powod,jednostka)
	end
	elseif ( source == booc.button[2] ) then  --anulowanie blokady ooc
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( booc.window[1],false )
	--koniec booc
	
	
		elseif ( source == GUIEditor.button[7] ) then  --otwieranie okna blokady PM
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( bpm.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(bpm.label[2],player)
	
	elseif ( source == bpm.button[1] ) then  --przycisk blokady PM
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( bpm.window[1],false )
	local czas= guiGetText(bpm.memo[2])
	if czas >= "0" then
	local item = guiComboBoxGetSelected(bpm.combobox[1])
local text = guiComboBoxGetItemText(bpm.combobox[1], item)
if text =="Minuty" then
		jednostka="MINUTE"
	elseif text=="Godziny" then
		jednostka="HOUR"
	elseif (text=="Dni") then
		jednostka="DAY"
	end
	local powod = guiGetText(bpm.memo[1])
	local player= guiGetText(bpm.label[2])
	triggerServerEvent("BPM:Player", getRootElement(), getLocalPlayer(), player,czas,powod,jednostka)
	end
	elseif ( source == bpm.button[2] ) then  --anulowanie blokady PM
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( bpm.window[1],false )
	--koniec bpm
	
	elseif ( source ==  GUIEditor.edit[3]) then
	guiSetText(GUIEditor.edit[3],"")
	elseif ( source == GUIEditor.button[8] ) then  --warn
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local powod= guiGetText(GUIEditor.edit[3])
	triggerServerEvent("WARN:Player", getRootElement(), getLocalPlayer(), player,powod)
	elseif ( source == GUIEditor.button[9] ) then  --skin
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local skin= guiGetText(GUIEditor.edit[1])
	if skin >= "0"then
	triggerServerEvent("Skin:Player", getRootElement(), getLocalPlayer(), player,skin)
	end
	
	elseif ( source == GUIEditor.button[12] ) then  --hp
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local hp= guiGetText(GUIEditor.edit[2])
	if hp >= "0"then
	triggerServerEvent("HP:Player", getRootElement(), getLocalPlayer(), player,hp)
	end
	
	elseif ( source == GUIEditor.button[14] ) then  --gotowka
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local gotowka= guiGetText(GUIEditor.edit[4])
	if gotowka >= "0"then
	triggerServerEvent("hajs:Player", getRootElement(), getLocalPlayer(), player,gotowka)
	end
	
	elseif ( source == GUIEditor.button[11] ) then  --ulecz
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("Heal:Player", getRootElement(), getLocalPlayer(), player)
	
	elseif ( source == GUIEditor.button[10] ) then  --unbw
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("UNBW:Player", getRootElement(), getLocalPlayer(), player)
	
	elseif ( source == GUIEditor.button[13] ) then  --EQ
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("EQ:Player", getRootElement(), getLocalPlayer(), player)
	
	elseif ( source == GUIEditor.button[15] ) then  --jetpack
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("JP:Player", getRootElement(), getLocalPlayer(), player)
	
	elseif ( source == GUIEditor.button[16] ) then  --tt
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("TT:Player", getRootElement(), getLocalPlayer(), player)

	elseif ( source == GUIEditor.button[18] ) then  --tt
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("TH:Player", getRootElement(), getLocalPlayer(), player)
	
	elseif ( source == GUIEditor.button[19] ) then  --x,y,z
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local x= guiGetText(GUIEditor.edit[5])
	local y= guiGetText(GUIEditor.edit[9])
	local z= guiGetText(GUIEditor.edit[10])
	triggerServerEvent("xyz:Player", getRootElement(), getLocalPlayer(), player,x,y,z)
	
	
	elseif ( source == GUIEditor.button[20] ) then  --interior
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local int= guiGetText(GUIEditor.edit[6])
	triggerServerEvent("int:Player", getRootElement(), getLocalPlayer(), player,int)
	
	elseif ( source == GUIEditor.button[21] ) then  --dimension
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local dim= guiGetText(GUIEditor.edit[7])
	triggerServerEvent("dim:Player", getRootElement(), getLocalPlayer(), player,dim)
	
	elseif ( source == GUIEditor.button[25] ) then  --fix
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")

	triggerServerEvent("fix", getRootElement(), getLocalPlayer(), player)
	
	
	
	elseif (source == GUIEditor.button[22] ) then  --frakcje
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( frakcje.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(frakcje.label[1],player)
	guiGridListClear ( frakcje.gridlist[1] )
	triggerServerEvent("frakcje:pobierz", getRootElement(), getLocalPlayer())
	
	
	elseif ( source == frakcje.button[1] ) then  --przycisk dodawania do frakcji
	if not (( guiGridListGetSelectedItem ( frakcje.gridlist[1] ) == -1 ) and ( guiGridListGetSelectedItem ( frakcje.gridlist[2] ) == -1 ) and ( guiGridListGetSelectedItem ( frakcje.gridlist[3] ) == -1 )) then
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( frakcje.window[1],false )
	local faction_id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
	local faction_name = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 2 )
	local rank_id = guiGridListGetItemText ( frakcje.gridlist[2], guiGridListGetSelectedItem ( frakcje.gridlist[2] ), 1 )
	local rank_name = guiGridListGetItemText ( frakcje.gridlist[2], guiGridListGetSelectedItem ( frakcje.gridlist[2] ), 2 )
	local skin = guiGridListGetItemText ( frakcje.gridlist[3], guiGridListGetSelectedItem ( frakcje.gridlist[3] ), 1 ) 
	local player= guiGetText(frakcje.label[1])
	triggerServerEvent("faction:dodaj", getRootElement(), getLocalPlayer(), player,faction_id,rank_id,skin,faction_name, rank_name)
	guiGridListClear ( frakcje.gridlist[3] )
	guiGridListClear ( frakcje.gridlist[2] )
	guiGridListClear ( frakcje.gridlist[1] )
	end
	elseif ( source == frakcje.button[2] ) then  --anulowanie frakcji
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( frakcje.window[1],false )
	
	elseif (source == GUIEditor.button[32] ) then  --organizacje
	guiSetVisible ( GUIEditor.window[1],false )
	guiSetVisible ( organizacje.window[1],true )
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	guiSetText(organizacje.label[1],player)
	guiGridListClear ( organizacje.gridlist[1] )
	triggerServerEvent("organizacje:pobierz", getRootElement(), getLocalPlayer())
	
	
	elseif ( source == organizacje.button[1] ) then  --przycisk dodawania do org
	if not (( guiGridListGetSelectedItem ( organizacje.gridlist[1] ) == -1 ) and ( guiGridListGetSelectedItem ( organizacje.gridlist[2] ) == -1 ) and ( guiGridListGetSelectedItem ( organizacje.gridlist[3] ) == -1 )) then
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( organizacje.window[1],false )
	local co_id = guiGridListGetItemText ( organizacje.gridlist[1], guiGridListGetSelectedItem ( organizacje.gridlist[1] ), 1 )
	local co_name = guiGridListGetItemText ( organizacje.gridlist[1], guiGridListGetSelectedItem ( organizacje.gridlist[1] ), 2 )
	local rank_id = guiGridListGetItemText ( organizacje.gridlist[2], guiGridListGetSelectedItem ( organizacje.gridlist[2] ), 1 )
	local rank_name = guiGridListGetItemText ( organizacje.gridlist[2], guiGridListGetSelectedItem ( organizacje.gridlist[2] ), 2 )
	local skin = guiGridListGetItemText ( organizacje.gridlist[3], guiGridListGetSelectedItem ( organizacje.gridlist[3] ), 1 ) 
	local player= guiGetText(organizacje.label[1])
	triggerServerEvent("co:dodaj", getRootElement(), getLocalPlayer(), player,co_id,rank_id,skin,co_name, rank_name)
	guiGridListClear ( organizacje.gridlist[3] )
	guiGridListClear ( organizacje.gridlist[2] )
	guiGridListClear ( organizacje.gridlist[1] )
	end
	elseif ( source == organizacje.button[2] ) then  --anulowanie org
	guiSetVisible ( GUIEditor.window[1],true )
	guiSetVisible ( organizacje.window[1],false )
	
	
	elseif ( source == GUIEditor.button[29] ) then  --neony
	local item = guiComboBoxGetSelected(GUIEditor.combobox[2])
local text = guiComboBoxGetItemText(GUIEditor.combobox[2], item)
if ( guiComboBoxGetSelected( GUIEditor.combobox[2] ) == -1 ) then
else
if text =="Czerwony" then
		kolor="1"
	elseif text=="Niebieski" then
		kolor="2"
	elseif (text=="Zielony") then
		kolor="3"
	elseif (text=="Zó³ty") then
		kolor="4"
	elseif (text=="Rózowy") then
		kolor="5"
	elseif (text=="Bia³y") then
		kolor="6"
	end
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("veh:neony", getRootElement(), player,kolor)
end


elseif ( source == GUIEditor.button[27] ) then  --frakcja auta
	local item = guiComboBoxGetSelected(GUIEditor.combobox[1])
local text = guiComboBoxGetItemText(GUIEditor.combobox[1], item)
if ( guiComboBoxGetSelected( GUIEditor.combobox[1] ) == -1 ) then
else
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	triggerServerEvent("veh:frakcja", getRootElement(), player,text)
end

	elseif ( source == GUIEditor.button[26] ) then  --paliwo
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")
	local ilosc= guiGetText(GUIEditor.edit[8])
	if ilosc >= "0"then
	triggerServerEvent("veh:paliwo", getRootElement(), player,ilosc)
	end
	
		elseif ( source == GUIEditor.button[28] ) then  --koguty
	local player = guiGridListGetItemText ( GUIEditor.gridlist[1], guiGridListGetSelectedItem ( GUIEditor.gridlist[1] ), 1 ) 
	local player = string.gsub(player," ","_")

	triggerServerEvent("veh:koguty", getRootElement(), player)
	
	elseif ( source == GUIEditor.image[1] ) then
	if guiGetVisible(GUIEditor.gridlist[2]) ==true then
	guiSetVisible ( GUIEditor.gridlist[2], false )
	guiBringToFront ( GUIEditor.gridlist[2] )
	else
	guiSetVisible ( GUIEditor.gridlist[2], true )
	guiBringToFront ( GUIEditor.gridlist[2] )
	end
	
	elseif ( source == GUIEditor.image[2] ) then
	if guiGetVisible(GUIEditor.gridlist[3]) ==true then
	guiSetVisible ( GUIEditor.gridlist[3], false )
	guiBringToFront ( GUIEditor.gridlist[3] )
	else
	guiSetVisible ( GUIEditor.gridlist[3], true )
	guiBringToFront ( GUIEditor.gridlist[3] )
	end
	
	end
	end
end
addEventHandler ( "onClientGUIClick", root, aClientClick )


function wyniki(id,name)
guiGridListSetSortingEnabled (frakcje.gridlist[1], false)
local wiersz = guiGridListAddRow ( frakcje.gridlist[1] )
guiGridListSetItemText ( frakcje.gridlist[1], wiersz, column1, id, false, false )
guiGridListSetItemText ( frakcje.gridlist[1], wiersz, column2, name, false, false )
--guiComboBoxAddItem(frakcje.combobox[1], "("..id.."),"..name)
guiComboBoxAddItem(GUIEditor.combobox[1], name) 
end

addEvent( "frakcje:wyniki", true )
addEventHandler( "frakcje:wyniki", root, wyniki)

function org_wyniki(id,name)
guiGridListSetSortingEnabled (organizacje.gridlist[1], false)
local wiersz = guiGridListAddRow ( organizacje.gridlist[1] )
guiGridListSetItemText ( organizacje.gridlist[1], wiersz, column1, id, false, false )
guiGridListSetItemText ( organizacje.gridlist[1], wiersz, column2, name, false, false )
--guiComboBoxAddItem(organizacje.combobox[1], "("..id.."),"..name)
guiComboBoxAddItem(GUIEditor.combobox[1], name) 
end

addEvent( "organizacje:wyniki", true )
addEventHandler( "organizacje:wyniki", root, org_wyniki)

function wyniki2(id,name)
--guiGridListClear ( frakcje.gridlist[2] )
guiGridListSetSortingEnabled (frakcje.gridlist[2], false)
local wiersz = guiGridListAddRow ( frakcje.gridlist[2] )
guiGridListSetItemText ( frakcje.gridlist[2], wiersz, column3, id, false, false )
guiGridListSetItemText ( frakcje.gridlist[2], wiersz, column4, name, false, false )
--guiComboBoxAddItem(frakcje.combobox[1], "("..id.."),"..name)
end

addEvent( "stanowiska:wyniki", true )
addEventHandler( "stanowiska:wyniki", root, wyniki2)

function wyniki3(skin)
guiGridListSetSortingEnabled (frakcje.gridlist[3], false)
local wiersz = guiGridListAddRow ( frakcje.gridlist[3] )
guiGridListSetItemText ( frakcje.gridlist[3], wiersz, column5, skin, false, false )

end

addEvent( "skiny:wyniki", true )
addEventHandler( "skiny:wyniki", root, wyniki3)

function org_wyniki2(id,name)
--guiGridListClear ( frakcje.gridlist[2] )
guiGridListSetSortingEnabled (organizacje.gridlist[2], false)
local wiersz = guiGridListAddRow ( organizacje.gridlist[2] )
guiGridListSetItemText ( organizacje.gridlist[2], wiersz, column3, id, false, false )
guiGridListSetItemText ( organizacje.gridlist[2], wiersz, column4, name, false, false )
--guiComboBoxAddItem(organizacje.combobox[1], "("..id.."),"..name)
end

addEvent( "org_stanowiska:wyniki", true )
addEventHandler( "org_stanowiska:wyniki", root, org_wyniki2)

function org_wyniki3(skin)
guiGridListSetSortingEnabled (organizacje.gridlist[3], false)
local wiersz = guiGridListAddRow ( organizacje.gridlist[3] )
guiGridListSetItemText ( organizacje.gridlist[3], wiersz, column5, skin, false, false )

end

addEvent( "org_skiny:wyniki", true )
addEventHandler( "org_skiny:wyniki", root, org_wyniki3)


function pokazstanowiska(id)
--local id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
--outputChatBox(id)
triggerServerEvent("stanowiska:pobierz", getRootElement(), id)
end

function pokazskiny(id)
--local id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
--outputChatBox(id)
triggerServerEvent("skiny:pobierz", getRootElement(), id)
end

function org_pokazstanowiska(id)
--local id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
--outputChatBox(id)
triggerServerEvent("org_stanowiska:pobierz", getRootElement(), id)
end

function org_pokazskiny(id)
--local id = guiGridListGetItemText ( frakcje.gridlist[1], guiGridListGetSelectedItem ( frakcje.gridlist[1] ), 1 )
--outputChatBox(id)
triggerServerEvent("org_skiny:pobierz", getRootElement(), id)
end

function przedmioty_wyniki(id,name)
								local row = guiGridListAddRow ( GUIEditor.gridlist[3] )
								guiGridListSetItemText ( GUIEditor.gridlist[3], row, 1, name, false, false )
								guiGridListSetItemData ( GUIEditor.gridlist[3], row, 1, tostring ( id ) )
end
addEvent( "przedmioty:wyniki", true )
addEventHandler( "przedmioty:wyniki", root, przedmioty_wyniki)