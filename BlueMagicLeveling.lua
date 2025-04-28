BlueMagicLeveling = {
    name = {EN="BlMagicLevel",CN="青魔升级"},
    install = true,
    Version = "1.00",
}  
local self = BlueMagicLeveling

self.GUI = {
    open = false,
    visible = false,
    menuwindow = {x=340,
                 y=200
                },
    discord_normalcolor = {r=0,g=0.6,b=1,a=1},
    
}
local MGUI = self.GUI
--- @type integer[]
self.IgnoreSkills = {}

self.Data = {
    Monster = {
        [621]={pos = {x=118.09,y=-0.30,z=336.98}},
        [814]={pos = {x=803.96,y=1.03,z=277.32}},
        [957]={pos = {x=-215.67,y=18.36,z=223.85}}
    },
    
    Quest = {
        [3192] = {
            start = {type = "Interact", mapid = 129 , interactid = 4302704225 , pos = {x = -64.35, y = 18.20 , z = -11.03}},
            [1] = {type = "Interact", mapid = 134 , interactid = 4302704300 , pos = {x = -69.87, y = 43.91 , z = -5.66}},
            [2] = {type = "Interact", mapid = 134 , interactid = 4302774428 , pos = {x = 170.86, y = 62.85 , z = 275.26}},
            [3] = {type = "Interact", mapid = 135 , interactid = 4302843171 , pos = {x = 156.63, y = 12.40 , z = 649.38}},
            [4] = {type = "Interact", mapid = 135 , interactid = 4302747885 , pos = {x = -85.40, y = 2.80 , z = 728.54}},
            [255] = {type = "Interact", mapid = 135 , interactid = 4302747892 , pos = {x = -105.91, y = 1.76 , z = 750.06}},
        },
        [3193] = {
            start = {type = "Interact", mapid = 135 , interactid = 4302747892 , pos = {x = -105.91, y = 1.65 , z = 750.06}},
            [1] = {type = "Expression", mapid = 135 , interactid = 4302747895 ,echotype = "Skill",skillid = 11385, pos = {x = -108.05, y = 1.76 , z = 749.14}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302703104 ,pos = {x = 65.75, y = 14.20 , z = 90.44}},
        },
        [3194] = {
            start = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 63.13, y = 14.23 , z = 89.86}},
            [1] = {type = "Interact", mapid = 141 , interactid = 4302703296 , pos = {x = 101.27, y = 7.47 , z = 600.21}},
            [2] = {type = "Interact-Kill", mapid = 141 , interactid = 4302703337 ,killcontentid = 7902, pos = {x = 163.59, y = 3.88 , z = 657.10}},
            [3] = {type = "Interact", mapid = 141 , interactid = 4302703296 , pos = {x = 101.27, y = 7.47 , z = 600.21}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 65.75, y = 14.20 , z = 90.44}},
        },
        [3195] = {   
            name = {"青色吐息","Why They Call It the Blues","青息吐息"},
            start = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 63.13, y = 14.23 , z = 89.86}},
            [1] = {type = "Interact", mapid = 141 , interactid = 4302703380 , pos = {x = 105.03, y = 4.23 , z = 451.07}},
            [2] = {type = "Interact-Kill", mapid = 141 , interactid = 2009671 ,killcontentid = 7903, pos = {x = 145.53, y = 9.81 , z = 391.10}},
            [3] = {type = "Interact", mapid = 141 , interactid = 4302703380 , pos = {x = 105.03, y = 4.23 , z = 451.07}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 65.75, y = 14.20 , z = 90.44}},
        }, 
        --拍掌 前置
        [3196] = {
            start = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 63.13, y = 14.23 , z = 89.86}},
            [1] = {type = "Interact", mapid = 131 ,mapid1 = 130,aethertype = 2,interactid1 = 4298852333,pos1 = {x = -144.49, y = -3.00 , z = -173.20}, interactid = 4302703424 ,pos = {x = -108.38, y = 41.20 , z = 75.88}},
            [2] = {type = "Interact", mapid = 140 , interactid = 4302703425 , pos = {x = 392.69, y = 87.28 , z = 98.10}},
            [3] = {type = "Interact-Kill", mapid = 140 , interactid = 2009671 ,killcontentid = 5915,  pos = {x = 362.48, y = 83.61 , z = 92.28}},
            [4] = {type = "Interact", mapid = 140 , interactid = 4302703427 , pos = {x = 359.64, y = 83.24 , z = 92.24}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302687873 ,pos = {x = 63.13, y = 14.23 , z = 89.86}},
        },
        [3197] = {
            start = {type = "Interact", mapid = 131, interactid = 4302703067 ,pos = {x = 64.47, y = 14.20 , z = 88.70}},
            [1] = {type = "Interact-Kill", mapid = 140 , interactid = 1026951 ,killcontentid = 7904,  pos = {x = 196.67, y = 52.98 , z = -38.90}},
            [2] = {type = "Interact", mapid = 140 , interactid = 4302703446 , pos = {x = 196.67, y = 52.98 , z = -38.90}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302703453 ,pos = {x = 65.60, y = 14.20 , z = 91.75}},
        },
        [3198] = {
            start = {type = "Interact", mapid = 131, interactid = 4302703067 ,pos = {x = 64.47, y = 14.20 , z = 88.70}},
            [1] = {type = "Interact", mapid = 147 , interactid = 4302703455 , pos = {x = -10.06, y = 47.20 , z = -29.80}},
            [2] = {type = "Interact", mapid = 131, interactid = 4302703104 ,pos = {x = 65.75, y = 14.20 , z =90.44}},
            [255] = {type = "Interact", mapid = 131, interactid = 4302703104 ,pos = {x = 65.75, y = 14.20 , z =90.44}},
        },
    },
    Skill = {
        [11397]={actionid = 11397 , name ="1000 Needle" ,skilltype = "cast",monstercastid = 503, mapid = 146 , contentid = 8137 ,pos = {x = -328.99,y = 14.18 ,z = -316.89 }}, --1000针
        [11398]={actionid = 11398 , name ="Drill Cannons" ,skilltype = "cast",monstercastid = 1433, mapid = 147 , contentid = 8138 ,pos = {x = -258.18,y = 84.41 ,z = -234.30 }}, --钻头炮
        [23276]={actionid = 23276 , name ="Basic Instinct" ,skilltype = "cast",monstercastid = 23401, mapid = 139 , contentid = 9911 ,pos = {x = -615.20 ,y = -3.00 ,z = -8.64 }}, --斗争本能
        [11407]={actionid = 11407 , name ="Final Sting" ,skilltype = "cast",monstercastid = 919, mapid = 134 , contentid = 8134 ,pos = {x = -309.56 ,y = 16.56 ,z = -350.73 }}, --终极针
        [11396]={actionid = 11396 , name ="Bomb Toss" ,skilltype = "cast",monstercastid = 405, mapid = 134 , contentid = 3099 ,pos = {x = 99.15 ,y = 49.21 ,z = 2.23 }}, --投弹
        [11391]={actionid = 11391 , name ="Plaincracker" ,skilltype = "cast",monstercastid = 482, mapid = 146 , contentid = 280 ,pos = {x = 50.03 ,y = 5.29 ,z = -453.80 }}, --平原震裂482
        [11393]={actionid = 11393 , name ="Bristle" ,skilltype = "buff",monstercastid = 203 , mapid = 152,  contentid = 16 ,pos = {x = -151.13 ,y = -0.48 ,z = 164.57 }}, --怒发冲冠
        [11392]={actionid = 11392 , name ="Acorn Bomb" ,skilltype = "cast",monstercastid = 442 , mapid = 152,  contentid = 128 ,pos = {x = -399.46 ,y = -0.14 ,z = 187.65 }}, --橡果炸弹
        [11418]={actionid = 11418 , name ="Ice Spikes" ,skilltype = "cast",monstercastid = 312 , mapid = 148 , contentid = 21 ,pos = {x = 306.70 ,y = 15.87 ,z = 161.20 }}, --冰棘屏障
        [11395]={actionid = 11395 , name ="Blood Drain" ,skilltype = "defend",monstercastid = 10 , mapid = 148 , contentid = 43 ,pos = {x = 311.84 ,y = -6.52 ,z = 5.31 }}, --吸血
        [11388]={actionid = 11388 , name ="Bad Breath" ,skilltype = "cast",monstercastid = 604 , mapid = 148 , contentid = 2057 ,pos = {x = -341.12 ,y = 57.70 ,z = 7.02 }}, --臭气
        [11408]={actionid = 11408 , name ="Self-destruct" ,skilltype = "cast",monstercastid = 0 , mapid = 140 , contentid = 8135 ,pos = {x = 293.48 ,y = 62.40 ,z = -226.07 }}, --自爆
        [11410]={actionid = 11410 , name ="Toad Oil" ,skilltype = "buff",monstercastid = 31 , mapid = 140 , contentid = 8136 ,pos = {x = -343.92 ,y = 14.93 ,z = -754.35 }}, --黏性分泌物
        [11403]={actionid = 11403 , name ="Faze" ,skilltype = "cast",monstercastid = 495 , mapid = 141 , contentid = 266 ,pos = {x = -199.80 ,y = 23.79 ,z = -114.61 }}, --拍掌
        [11423]={actionid = 11423 , name ="Flying Sardine" ,skilltype = "cast",monstercastid = 573 , mapid = 137 , contentid = 341 ,pos = {x = 310.14 ,y = 36.99 ,z = 699.47 }}, --投掷沙丁鱼
        [11421]={actionid = 11421 , name ="Peculiar Light" ,skilltype = "cast",monstercastid = 982 , mapid = 156 , contentid = 8139 ,pos = {x = -342.90 ,y = -3.09 ,z = -553.50 }}, --惊奇光
        [18302]={actionid = 18302 , name ="Eerie Soundwave" ,skilltype = "cast",monstercastid = 4464 , mapid = 402 , contentid = 3541 ,pos = {x = 365.67 ,y = -49.63 ,z = -697.18 }}, --怪音波
        [18295]={actionid = 18295 , name ="Alpine Draft" ,skilltype = "cast",monstercastid = 4505 , mapid = 401 , contentid = 3526 ,pos = {x = 523.38 ,y = -98.40 ,z = -502.73 }}, --高山气流
        [18298]={actionid = 18298 , name ="Electrogenesis" ,skilltype = "cast",monstercastid = 4546 , mapid = 401 , contentid = 3496 ,pos = {x = 167.72 ,y = -147.40 ,z = 478.59 }}, --生物电
        [18308]={actionid = 18308 , name ="Sonic Boom" ,skilltype = "cast",monstercastid = 4707 , mapid = 401 , contentid = 3524 ,pos = {x = 639.46 ,y = -156.07 ,z = 706.73 }}, --音爆
        [18309]={actionid = 18309 , name ="Whistle" ,skilltype = "cast",monstercastid = 4459 , mapid = 401 , contentid = 3505 ,pos = {x = -154.61 ,y = -123.39 ,z = 392.33 }}, --口笛
        [23284]={actionid = 23284 , name ="Choco Meteor" ,skilltype = "cast",monstercastid = 11462 , mapid = 398 , contentid = 9912 ,pos = {x = 726.64 ,y = -49.26 ,z = 75.30 }}, --陆行鸟陨石
        [18297]={actionid = 18297 , name ="Northerlies" ,skilltype = "cast",monstercastid = 4500 , mapid = 397 , contentid = 3490 ,pos = {x = 141.75 ,y = 222.26 ,z = 461.72 }}, --狂风暴雪
        [18319]={actionid = 18319 , name ="Reflux" ,skilltype = "cast",monstercastid = 19273 , mapid = 400 , contentid =9248  ,pos = {x = 86.59 ,y = 27.40 ,z = 258.57 }}, --逆流
        [11413]={actionid = 11413 , name ="Tail Screw" ,skilltype = "cast",monstercastid = 4791 , mapid = 620 , contentid = 5705 ,pos = {x = 252.26,y = 115.00 ,z = -694.56 }}, -- 螺旋尾
        [23277]={actionid = 23277 , name ="Ultravibration" ,skilltype = "cast",monstercastid = 8701 , mapid = 620, contentid = 5714 ,pos = {x = -344.91 ,y = 307.11 ,z = 104.91 }}, --超振动
        [23281]={actionid = 23281 , name ="Aetherial Spark" ,skilltype = "cast",monstercastid = 8695 , mapid = 621 , contentid = 5722 ,pos = {x = 35.93 ,y = 18.06 ,z = 70.34 }}, --以太火花
        [18307]={actionid = 18307 , name ="Frog Legs" ,skilltype = "cast",monstercastid =  4461, mapid = 399 ,contentid = 3607  ,pos = {x = -452.20 ,y = 137.45 ,z = 627.66 }}, --蛙腿
    }
}
local Data = self.Data

function self.ModuleInit()

    --储存的数据等等
    self.ticks = 0
    self.Enable = false            
    self.State = ""
    self.HelperData = {name = "Target Someone and Click 'SetTarget' to change info"}

    self.Task = {"Duty Quest","Duty Leveling","Duty Study Skill"}
    self.Place = {
        {level = 69,name = "The Lochs"},
        {level = 70,name = "Kholusia"},
        {level = 80,name = "Thavnair"},
    }
    self.Duty = {"Leveler","Helper"}
    Settings.BlueMagicLeveling.TaskIndex = Settings.BlueMagicLeveling.TaskIndex or 1
    self.TaskIndex = Settings.BlueMagicLeveling.TaskIndex

    Settings.BlueMagicLeveling.PlaceIndex = Settings.BlueMagicLeveling.PlaceIndex or 1
    self.PlaceIndex = Settings.BlueMagicLeveling.PlaceIndex

    Settings.BlueMagicLeveling.DutyIndex = Settings.BlueMagicLeveling.DutyIndex or 1
    self.DutyIndex = Settings.BlueMagicLeveling.DutyIndex

    --执行的数据
    self.TeleportTime = 0
    self.DefendTime = 0
    self.SpecailCastTime = 0
    self.aresmapid = 0
    self.skill_learn_id = 0


    self.specailmovetime = 0
    self.Step = 1
    self.bookpage = 1
    self.checkblood = 0
    self.move = true
    self.killdata = {}
    self.killEnable = false
    self.casttick = 0
    self.interact = 0
    self.windowtick = 0
    self.killmode = ""

    self.skilldata = {}
    self.skillnotlearn = {}
end

function self.Draw()
    
    GUI:AlignFirstTextHeightToWidgets();GUI:Text(EGetString("Enable")) GUI:SameLine();     
    self.Enable,click = GUI:Checkbox("##BlueMagicLevelingEnables",self.Enable)
    if click then
        Player:Stop()
    end
    GUI:SameLine()

    GUI:PushItemWidth(200)
    local varpv = EGetString(self.Task[self.TaskIndex])
    if GUI:BeginCombo("##BlueMagicLevelingchossplcecombo",varpv,GUI.ComboFlags_HeightSmall) then
        for k,v in pairs(self.Task) do
            local selected,changed = GUI:Selectable(EGetString(v),(self.TaskIndex == k))
            if selected and self.TaskIndex ~= k then
                self.TaskIndex = k
            end
        end
        GUI:EndCombo()
    end
    GUI:PopItemWidth()
    

    if self.Task[self.TaskIndex] == "Duty Quest" then
        GUI:Separator()
        GUI:BeginChild("##BlueMagicLevelin-quest",0,-22,true)
        GUI:Text("Please manually learn a series of ")
        GUI:Text("prerequisite skills such as")
        GUI:Text("Glower")
        GUI:Text("Mind Blast")
        GUI:Text("Needles")
        GUI:EndChild()
    end
    
    if self.Task[self.TaskIndex] == "Duty Leveling" then
        GUI:Separator()
        GUI:BeginChild("##BlueMagicLevelin-quest",0,-22,true)
        GUI:AlignFirstTextHeightToWidgets();
        GUI:Text(EGetString("Duty Task")) GUI:SameLine()
        local contentwidths = GUI:GetContentRegionAvailWidth()
        GUI:PushItemWidth(contentwidths - 10)
        --self.DutyIndex,chossplaces = GUI:Combo("##", , ) if chossplaces then  Settings.BlueMagicLeveling.DutyIndex = self.DutyIndex end
        local varpv = EGetString(self.Duty[self.DutyIndex])
        if GUI:BeginCombo("##BlueMagicLevelingDutyIndex",varpv,GUI.ComboFlags_HeightSmall) then
            for k,v in pairs(self.Duty) do
                local selected,changed = GUI:Selectable(EGetString(v).."##BlueMagicLevelingDutyIndexcombo"..k,(self.DutyIndex == k))
                if selected and self.DutyIndex ~= k then
                    self.DutyIndex = k
                end
            end
            GUI:EndCombo()
        end
        GUI:PopItemWidth()

        GUI:AlignFirstTextHeightToWidgets();
        GUI:Text(EGetString("Level Area")) GUI:SameLine()
        local contentwidthsS = GUI:GetContentRegionAvailWidth()
        GUI:PushItemWidth(contentwidthsS - 10)
        --self.PlaceIndex,chossplaces = GUI:Combo("##", , ) if chossplaces then  Settings.BlueMagicLeveling.PlaceIndex = self.PlaceIndex end
        local varpv = "["..self.Place[self.PlaceIndex].level.."] - "..EGetString(self.Place[self.PlaceIndex].name)
        if GUI:BeginCombo("##BlueMagicLevelingDutyPlace",varpv,GUI.ComboFlags_HeightSmall) then
            for k,v in pairs(self.Place) do
                local selected,changed = GUI:Selectable("["..v.level.."] - "..EGetString(v.name).."##BlueMagicLevelingDutyPlacecombo"..k,(self.PlaceIndex == k))
                if selected and self.PlaceIndex ~= k then
                    self.PlaceIndex = k
                end
            end
            GUI:EndCombo()
        end
        GUI:PopItemWidth()
        if GUI:IsItemHovered() then
            GUI:SetTooltip("Please use level-70 to make your bluemagic level,80 is not working for now")
        end

        local contentwidthsSs = GUI:GetContentRegionAvailWidth()
        GUI:PushItemWidth(contentwidthsSs - 190)
        GUI:AlignFirstTextHeightToWidgets();
        GUI:Text(EGetString("Partner")) GUI:SameLine() if table.valid(self.HelperData) then GUI:InputText( "##BlueMagicLevelingHelperData",self.HelperData.name) end
        GUI:PopItemWidth()

        GUI:SameLine()
        if GUI:Button(EGetString("Set Target").."##BlueMagicLevelingSetTarget",90,20) and Player:GetTarget() then
            local i = Player:GetTarget()
            self.HelperData.id = i.id
            self.HelperData.name = i.name
            Player:ClearTarget()
        end
        GUI:EndChild()
        
        
    end

    if self.Task[self.TaskIndex] == "Duty Study Skill" then
        GUI:Separator()
        GUI:BeginChild("##BlueMagicLevelin-Studyskill",0,-22,true)
        if table.valid(self.skillnotlearn) then
            for k,v in ipairs(self.skillnotlearn)do
                for idx,skill in pairs(Data.Skill)do
                    if v.actionid == skill.actionid then
                        GUI:Text("["..tostring(k).."]".." - ".."[ "..v.actionid.." ] - "..EGetString(skill.name))
                    end     
                end
            end
        end
        GUI:EndChild()
        if GUI:Button(EGetString("Clear Skill List").."##Exmachinasbluemagicleveler-clearlist") then
            self.skilldata = {}
            self.skillnotlearn = {}
        end
    end

end
 
function self.OnUpdate() 
    self.MainLoop()
end

ExmachinasAddonLib.Install("BlueMagicLeveling",self.Draw)
RegisterEventHandler("Module.Initalize",self.ModuleInit, "ExmachinasLib.Init")
RegisterEventHandler("Gameloop.Update", self.OnUpdate,"Addon Draw")

function self.MainLoop()
    if self.Enable and TimeSince(self.ticks)>500 then
        if not MIsCasting() and not MIsLoading() then



            if self.Task[self.TaskIndex] == "Duty Quest" then
                local questid = 0
                if not Quest:IsQuestCompleted(3192) then
                    questid = 3192
                elseif Quest:IsQuestCompleted(3192) and not Quest:IsQuestCompleted(3193) then
                    questid = 3193
                end
                if Quest:IsQuestCompleted(3192) then
                    if (Player.job == 36 and Player.level < 70) then
                        self.Enable = false
                        ffxiv_dialog_manager.IssueNotice("Remind","Please go up to level 70 ,then do quest")
                        return true
                    elseif Player.job ~= 36 then
                        self.Enable = false
                        ffxiv_dialog_manager.IssueNotice("Remind","Job are not blue magic")
                        return true
                    end
                end
                if Quest:IsQuestCompleted(3193) and not Quest:IsQuestCompleted(3194) then
                    questid = 3194
                end
                if Quest:IsQuestCompleted(3194) and not Quest:IsQuestCompleted(3195) then
                    questid = 3195
                end
                if Quest:IsQuestCompleted(3195) and not Quest:IsQuestCompleted(3196) then
                    questid = 3196
                end
                if Quest:IsQuestCompleted(3196) and not Quest:IsQuestCompleted(3197) then
                    questid = 3197
                end
                if Quest:IsQuestCompleted(3197) and not Quest:IsQuestCompleted(3198) then
                    questid = 3198
                end
                local quest = self.Data.Quest
                if not Quest:HasQuest(questid) then
                    if IsControlOpen("JournalAccept") then
                        UseControlAction("JournalAccept","Accept",0)
                    end
                    if not ExmachinasFunc.InComboMap(quest[questid].start.mapid) and TimeSince(self.TeleportTime) > 7000 then
                        Player:Teleport(ExmachinasFunc.GetAetherByMapid(quest[questid].start.mapid))
                        self.TeleportTime = Now()
                    elseif ExmachinasFunc.InComboMap(quest[questid].start.mapid) then
                        if Player.localmapid ~= quest[questid].start.mapid then
                            ExmachinasFunc.MoveTo(quest[questid].start.mapid,quest[questid].start.pos)
                        else
                            if math.distance3d(Player.pos,quest[questid].start.pos) > 5 then
                                ExmachinasFunc.MoveTo(quest[questid].start.mapid,quest[questid].start.pos)
                            elseif math.distance3d(Player.pos,quest[questid].start.pos) <= 5 then
                                if MIsMoving()then
                                    Player:Stop()
                                end
                                if Player.ismounted then
                                    ExmachinasFunc.UnderMount()
                                end
                                if not MIsMoving() and not IsControlOpen("SelectString") and not IsControlOpen("SelectIconString") then
                                    Player:Interact(quest[questid].start.interactid)
                                end
                                if IsControlOpen("SelectString") then  
                                    local getStringdata=GetControl("SelectString"):GetData()  
                                    local index=0
                                    if table.valid(getStringdata) and quest[questid].start.name ~= nil then
                                        for k,v in pairs(quest[questid].start.name)do
                                            for kk,vv in pairs(getStringdata) do
                                                if string.find(vv,v)  then
                                                    index=kk
                                                end
                                            end
                                        end
                                    end
                                    UseControlAction("SelectString","SelectIndex",index)
                                end
                                if IsControlOpen("SelectIconString") then
                                    local getStringIcondata=GetControl("SelectIconString"):GetData()  
                                    local index=0
                                    if table.valid(getStringIcondata) and quest[questid].start.name ~= nil then
                                        for k,v in pairs(quest[questid].start.name)do
                                            for kk,vv in pairs(getStringIcondata) do
                                                if string.find(vv,v)  then
                                                    index=kk
                                                end
                                            end
                                        end
                                    end
                                    UseControlAction("SelectIconString","SelectIndex",index)
                                end
                                if IsControlOpen("SelectYesno") then
                                    UseControlAction("SelectYesno","Yes")
                                end
                            end
                        end
                    end




                elseif Quest:HasQuest(questid) then
                    local step = Quest:GetQuestCurrentStep(questid)
                    if quest[questid][step].type == "Interact" then
                        if not ExmachinasFunc.InComboMap(quest[questid][step].mapid) and TimeSince(self.TeleportTime) > 7000 then
                            Player:Teleport(ExmachinasFunc.GetAetherByMapid(quest[questid][step].mapid))
                            self.TeleportTime = Now()
                        elseif ExmachinasFunc.InComboMap(quest[questid][step].mapid) then
                            if Player.localmapid ~= quest[questid][step].mapid then
                                ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                            else
                                if math.distance3d(Player.pos,quest[questid][step].pos) > 4 then
                                    ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                                elseif math.distance3d(Player.pos,quest[questid][step].pos) <= 4 then
                                    if MIsMoving()then
                                        Player:Stop()
                                    end
                                    if Player.ismounted then
                                        ExmachinasFunc.UnderMount()
                                    end
                                    if not MIsMoving() and not IsControlOpen("SelectString") and not IsControlOpen("SelectIconString") then
                                        Player:Interact(quest[questid][step].interactid)
                                    end
                                    if IsControlOpen("SelectString") then  
                                        local getStringdata=GetControl("SelectString"):GetData()  
                                        local index=0
                                        if table.valid(getStringdata) and quest[questid].name ~= nil then
                                            for k,v in pairs(quest[questid].name)do
                                                for kk,vv in pairs(getStringdata) do
                                                    if string.find(vv,v)  then
                                                        index=kk
                                                    end
                                                end
                                            end
                                        end
                                        UseControlAction("SelectString","SelectIndex",index)
                                    end
                                    if IsControlOpen("SelectIconString") then
                                        local getStringIcondata=GetControl("SelectIconString"):GetData()  
                                        local index=0
                                        if table.valid(getStringIcondata) and quest[questid].name ~= nil then
                                            for k,v in pairs(quest[questid].name)do
                                                for kk,vv in pairs(getStringIcondata) do
                                                    if string.find(vv,v)  then
                                                        index=kk
                                                    end
                                                end
                                            end
                                        end
                                        UseControlAction("SelectIconString","SelectIndex",index)
                                    end
                                    if IsControlOpen("SelectYesno") then
                                        UseControlAction("SelectYesno","Yes")
                                    end
                                end
                            end
                        end
                    elseif quest[questid][step].type == "Expression" then
                        if not ExmachinasFunc.InComboMap(quest[questid][step].mapid) and TimeSince(self.TeleportTime) > 7000 then
                            Player:Teleport(ExmachinasFunc.GetAetherByMapid(quest[questid][step].mapid))
                            self.TeleportTime = Now()
                        elseif ExmachinasFunc.InComboMap(quest[questid][step].mapid) then
                            if Player.localmapid ~= quest[questid][step].mapid then
                                ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                            else
                                if math.distance3d(Player.pos,quest[questid][step].pos)> 3 then
                                    ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                                elseif math.distance3d(Player.pos,quest[questid][step].pos)<= 3 then
                                    if not Player:GetTarget() or Player:GetTarget().id ~= quest[questid][step].interactid then
                                        Player:SetTarget(quest[questid][step].interactid)
                                    end
                                    if Player:GetTarget().id == quest[questid][step].interactid then
                                        if quest[questid][step].echotype == "Skill" then
                                            local action = ActionList:Get(1,quest[questid][step].skillid)
                                            action:Cast(Player:GetTarget().id)
                                        end
                                    end
                                end
                            end
                        end





                        
                    elseif quest[questid][step].type == "Interact-Kill" then
                        if not ExmachinasFunc.InComboMap(quest[questid][step].mapid) and TimeSince(self.TeleportTime) > 7000 then
                            Player:Teleport(ExmachinasFunc.GetAetherByMapid(quest[questid][step].mapid))
                            self.TeleportTime = Now()
                        elseif ExmachinasFunc.InComboMap(quest[questid][step].mapid) then
                            if Player.localmapid ~= quest[questid][step].mapid then
                                ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                            else
                                if math.distance3d(Player.pos,quest[questid][step].pos) > 4 then
                                    ExmachinasFunc.MoveTo(quest[questid][step].mapid,quest[questid][step].pos)
                                elseif math.distance3d(Player.pos,quest[questid][step].pos) <= 4 then
                                    local entity = MEntityList("targetable,alive,contentid="..tostring(quest[questid][step].interactid))
                                    local el = MEntityList("targetable,alive,contentid="..tostring(quest[questid][step].killcontentid))
                                    if table.valid(entity) then
                                        for k,v in pairs(entity)do 
                                            Player:Interact(v.id)
                                        end
                                    elseif table.valid(el) then
                                        for k,v in pairs(el)do
                                            if not Player:GetTarget() or Player:GetTarget().contentid ~= v.contentid then
                                                Player:SetTarget(v.id) 
                                            end
                                            local action = ActionList:Get(1,11385)
                                            if Player:GetTarget() then
                                                action:Cast(Player:GetTarget().id)
                                            end
                                        end
                                        self.ticks = Now()
                                        return true
                                    end
                                    if TimeSince(self.SpecailCastTime)>5000 then
                                        Player:Interact(quest[questid][step].interactid)
                                        self.SpecailCastTime = Now()
                                    end
                                end
                            end
                        end

                        
                        
                    end
                    if IsControlOpen("JournalResult") then
                        UseControlAction("JournalResult","Complete",0)
                    end
                    if IsControlOpen("SelectYesno") then
                        UseControlAction("SelectYesno","Yes",0)
                    end


             
                end
                self.ticks = Now()
            

            elseif self.Task[self.TaskIndex] == "Duty Leveling" then
              
                local mapid = 0 
                if self.Place[self.PlaceIndex].name == "Kholusia" then
                    mapid = 814 --137
                elseif self.Place[self.PlaceIndex].name == "Thavnair" then
                    mapid = 957 --169
                elseif self.Place[self.PlaceIndex].name == "The Lochs" then
                    mapid = 621 --169
                end
            
                if not ExmachinasFunc.InComboMap(mapid) and ExmachinasFunc.CanTeleport() then
                    ExmachinasFunc.Teleport(ExmachinasFunc.GetAetherByMapid(mapid))
                elseif ExmachinasFunc.InComboMap(mapid) then
                    if Player.localmapid ~= mapid then
                        ExmachinasFunc.MoveTo(mapid,Data.Monster[mapid].pos)
                    else
                        if IsControlOpen("SelectYesno") then
                            local str = GetControl("SelectYesno"):GetStrings()
                            if ExmachinasFunc.tv(str)then
                                for k,v in pairs(str) do
                                    if string.find(v,"Return to") or string.find(v,"陷入无法战斗状态") or string.find(v,"戦闘不能状態") then
                                        UseControlAction("SelectYesno","Yes",0)
                                        self.move = true
                                    end
                                end
                            end
                        end
                        if self.move then
                            if math.distance3d(Player.pos,Data.Monster[mapid].pos)>5 then
                                ExmachinasFunc.MoveTo(Player.localmapid,Data.Monster[mapid].pos)
                            elseif math.distance3d(Player.pos,Data.Monster[mapid].pos)<5 then
                                self.move = false
                            end
                        elseif not self.move then
                            if self.DutyIndex == 1 then
                                
                                local entity = self.GetMonster()
                                if table.valid(entity) and self.GetAggroCount()<2 and TimeSince(self.specailmovetime)>5000 then
                                    if math.distance3d(Player.pos,entity.pos) > ml_global_information.AttackRange and not MIsMoving() then
                                        ExmachinasFunc.MoveTo(Player.localmapid,entity.pos)
                                    elseif math.distance3d(Player.pos,entity.pos) <= ml_global_information.AttackRange then
                                        Player:Stop()
                                        ExmachinasFunc.UnderMount()
                                    end
                                    if self.PartnerIsNearYou() then
                                        if not Player:GetTarget() or Player:GetTarget().id ~= entity.id then
                                            Player:SetTarget(entity.id)
                                        end
                                        if Player:GetTarget() then
                                            local pt = MEntityList("name="..self.HelperData.name)
                                            if table.valid(pt) then
                                                for k,v in pairs(pt) do
                                                    local action = ActionList:Get(1,11385)
                                                    if not Player:GetTarget().incombat and v.hp.percent>70 and math.distance3d(Player.pos,entity.pos) <= ml_global_information.AttackRange then
                                                        action:Cast(Player:GetTarget().id)
                                                        self.specailmovetime = Now()
                                                    end
                                                end
                                            end
                                        end
                                    end
                                elseif not table.valid(entity) then
                                    self.move = true
                                end
                            elseif self.DutyIndex == 2 then
                                local pt = MEntityList("name="..self.HelperData.name)
                                if pt then
                                    for k,v in pairs(pt) do
                                        if math.distance3d(Player.pos,v.pos)>3 then
                                            Player:MoveTo(v.pos.x,v.pos.y,v.pos.z)
                                        elseif math.distance3d(Player.pos,v.pos)<=3 then
                                            Player:Stop()
                                            ExmachinasFunc.UnderMount()
                                        end
                                    end
                                elseif not pt then
                                    self.move = true
                                end
                                local ell = MEntityList("targetable,alive,contentid=8518,contentid=8523,contentid=8536,contentid=10700,maxdistance=80,los")
                                if ell then
                                    for idx,entity in pairs(ell)do
                                        if entity.incombat then 
                                            if entity.targetid == self.HelperData.id and entity.targetid ~= Player.id then
                                                Player:SetTarget(entity.id)
                                                if math.distance3d(Player.pos,entity.pos) >ml_global_information.AttackRange then
                                                    Player:MoveTo(entity.pos.x,entity.pos.y,entity.pos.z)
                                                elseif math.distance3d(Player.pos,entity.pos) <= ml_global_information.AttackRange then
                                                    Player:Stop()
                                                    ExmachinasFunc.SkillCast()
                                                end
                                                self.ticks = Now()
                                                return true
                                            end
                                        end
                                    end
                                    for idx,entity in pairs(ell)do
                                        if entity.incombat then 
                                            if entity.targetid == Player.id then
                                                Player:SetTarget(entity.id)
                                                ExmachinasFunc.SkillCast()
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            
       


            elseif self.Task[self.TaskIndex] == "Duty Study Skill" then
                local clog = GetChatLines()
                local ezt = GetEorzeaTime()
                for index,chat in pairs(clog) do
                    if ezt.servertime - chat.timestamp <=3 then
                        if  string.find(chat.rawline,"学会了")  or string.find(chat.rawline,"learn") or string.find(chat.rawline,"ラーニングした") then
                     
                            self.killmode = "WaitMode"
                            self.skilldata = {}
                            self.skillnotlearn = {}
                        end
                    end
                end   

                if IsControlOpen("SelectYesno") then
                    UseControlAction("SelectYesno","Yes",0)
                end
                if not table.valid(self.skilldata)then
                    --数据扫描
                    
                    local action = ActionList:Get(10,81)
                    if not IsControlOpen("AOZNotebook")   then
                        action:Cast()
                    elseif IsControlOpen("AOZNotebook")   then
                        if table.valid(self.GetSkillNote()) then
                            self.skilldata = self.GetSkillNote()
                        end
                    elseif not table.valid(self.skillnotlearn) then
                        if IsControlOpen("AOZNotebook")   then
                            ffxiv_dialog_manager.IssueNotice("Error","Skill have learned")
                            UseControlAction("AOZNotebook","Close")
                            self.Enable = false
                        end
                    end
                end
                if table.valid(self.skilldata) then
                    if not table.valid(self.skillnotlearn) then
                        self.skillnotlearn = self.GetNotLearnSkill()
                    elseif table.valid(self.skillnotlearn) then
                        if IsControlOpen("AOZNotebook")   then
                            UseControlAction("AOZNotebook","Close")
                        end
                    end
                end







                if table.valid(self.skilldata)then
                    local Skill = Data.Skill
                    if ExmachinasFunc.tv(self.skillnotlearn) then
                        for k,v in pairs(self.skillnotlearn)do

                            if not ExmachinasFunc.InComboMap(Skill[v.actionid].mapid) then

                                if Player.incombat then
                                    local e = MEntityList("targetable,aggro,alive")
                                    if table.valid(e)then
                                        for k,v in pairs(e)do
                                            if Player.targetid ~= v. id then
                                                Player:SetTarget(v.id)
                                            end
                                            if v.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                Player:SyncLevel()
                                            elseif v.fateid == 0 and ExmachinasFunc.IsSync() then
                                                Player:SyncLevel()
                                            end
                                            if math.distance3d(Player.pos,v.pos) > ml_global_information.AttackRange then
                                                ExmachinasFunc.MoveTo(Player.localmapid,v.pos)
                                            elseif math.distance3d(Player.pos,v.pos)<= ml_global_information.AttackRange then
                                                Player:Stop()
                                                local action = ActionList:Get(1,11385)
                                                action:Cast(v.id)
                                            end
                                        end
                                        self.ticks = Now()
                                        return true
                                    end
                                end

                                if MIsMoving() then
                                    Player:Stop()
                                elseif not MIsMoving() and TimeSince(self.TeleportTime) > 7000 then
                                    Player:Teleport(ExmachinasFunc.GetAetherByMapid(Skill[v.actionid].mapid))
                                    self.TeleportTime = Now()
                                end

                            elseif ExmachinasFunc.InComboMap(Skill[v.actionid].mapid) then
                                if Player.localmapid ~= Skill[v.actionid].mapid then
                                    if Player.incombat then
                                        local e = MEntityList("targetable,aggro,alive")
                                        if table.valid(e)then
                                            for k,v in pairs(e)do
                                                if Player.targetid ~= v. id then
                                                    Player:SetTarget(v.id)
                                                end
                                                if v.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                    Player:SyncLevel()
                                                elseif v.fateid == 0 and ExmachinasFunc.IsSync() then
                                                    Player:SyncLevel()
                                                end
                                                if math.distance3d(Player.pos,v.pos) > ml_global_information.AttackRange then
                                                    ExmachinasFunc.MoveTo(Player.localmapid,v.pos)
                                                elseif math.distance3d(Player.pos,v.pos)<= ml_global_information.AttackRange then
                                                    Player:Stop()
                                                    local action = ActionList:Get(1,11385)
                                                    action:Cast(v.id)
                                                end
                                            end
                                            self.ticks = Now()
                                            return true
                                        end
                                    end
                                    ExmachinasFunc.MoveTo(Skill[v.actionid].mapid,Skill[v.actionid].pos)
                                else
                                    local not_skill_el = MEntityList("alive,targetable,aggro,exclude_contentid="..Skill[v.actionid].contentid)
                                    local skill_el = MEntityList("alive,targetable,contentid="..Skill[v.actionid].contentid)
                                
                                    
                                    if not_skill_el then
                                        local tar = ExmachinasFunc.GetNearestTarget(not_skill_el)
                                        if tar.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                            Player:SyncLevel()
                                        elseif tar.fateid == 0 and ExmachinasFunc.IsSync() then
                                            Player:SyncLevel()
                                        end
                                        if Player.targetid ~= tar.id then
                                            Player:SetTarget(tar.id)
                                        end
                                        if math.distance3d(Player.pos,tar.pos) > 25 then
                                            ExmachinasFunc.MoveTo(Player.localmapid,tar.pos)
                                        else
                                            if Player.ismounted then
                                                ExmachinasFunc.UnderMount()
                                            elseif not Player.ismounted then
                                                if MIsMoving() then
                                                    Player:Stop()
                                                else
                                                    local action = ActionList:Get(1,11385)
                                                    action:Cast(tar.id)
                                                end
                                            end
                                        end
                                        self.killmode = "WaitMode"
                                    elseif skill_el then
                                        local tar = ExmachinasFunc.GetNearestTarget(skill_el)

                                        if self.skill_learn_id ~= tar.id then
                                            self.skill_learn_id = tar.id
                                            self.killmode = "WaitMode"
                                        end

                                        if self.killmode == "KillMode" then
                                            if math.distance3d(Player.pos,tar.pos) <= tar.hitradius + 25.5 then
                                                local action = ActionList:Get(1,11385)
                                                action:Cast(tar.id)
                                            end
                                        elseif self.killmode == "WaitMode"then
                                            if Skill[v.actionid].skilltype == "buff" then
                                                if math.distance3d(Player.pos,tar.pos) > 3 then
                                                    ExmachinasFunc.MoveTo(Player.localmapid,tar.pos)
                                                else
                                                    if not tar.incombat then
                                                        if Player.targetid ~= tar.id then
                                                            Player:SetTarget(tar.id)
                                                            return true
                                                        end
                                                        if Player.ismounted then
                                                            ExmachinasFunc.UnderMount()
                                                        elseif not Player.ismounted then
                                                            if tar.fateid == 0 and ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            elseif tar.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            end
                                                            if MIsMoving() then
                                                                Player:Stop()
                                                            else
                                                                local action = ActionList:Get(5,1)
                                                                action:Cast(tar.id)
                                                            end
                                                        end
                                                    
                                                    else
                                                        for kk,vv in pairs(tar.buffs)do
                                                            if vv.id == Skill[v.actionid].monstercastid then
                                                                self.killmode = "KillMode"
                                                            end
                                                        end
                                                    end
                                                end
                                            elseif Skill[v.actionid].skilltype == "cast" then
                                                if math.distance3d(Player.pos,tar.pos) > 3 then
                                                    ExmachinasFunc.MoveTo(Player.localmapid,tar.pos)
                                                else
                                                    if not tar.incombat then
                                                        if Player.targetid ~= tar.id then
                                                            Player:SetTarget(tar.id)
                                                            return true
                                                        end
                                                        if Player.ismounted then
                                                            ExmachinasFunc.UnderMount()
                                                        elseif not Player.ismounted then
                                                            if tar.fateid == 0 and ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            elseif tar.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            end
                                                            if MIsMoving() then
                                                                Player:Stop()
                                                            else
                                                                local action = ActionList:Get(5,1)
                                                                action:Cast(tar.id)
                                                            end
                                                        end
                                                     
                                                    else
                                                        if tar.castinginfo.castingid == Skill[v.actionid].monstercastid then
                                                            self.killmode = "KillMode"
                                                        end
                                                    end
                                                end


                                                
                                            elseif Skill[v.actionid].skilltype == "defend" then
                                                if math.distance3d(Player.pos,tar.pos) > 3 then
                                                    ExmachinasFunc.MoveTo(Player.localmapid,tar.pos)
                                                else
                                                    if not tar.incombat then
                                                        if Player.targetid ~= tar.id then
                                                            Player:SetTarget(tar.id)
                                                            return true
                                                        end
                                                        if Player.ismounted then
                                                            ExmachinasFunc.UnderMount()
                                                        elseif not Player.ismounted then
                                                            if tar.fateid == 0 and ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            elseif tar.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            end
                                                            if MIsMoving() then
                                                                Player:Stop()
                                                            else
                                                                local action = ActionList:Get(5,1)
                                                                action:Cast(tar.id)
                                                            end
                                                        end
                                                     
                                                    else
                                                        if TimeSince(self.DefendTime)>3000 then
                                                            self.killmode = "KillMode"
                                                            self.DefendTime = Now()
                                                        end
                                                    end
                                                end
                                            elseif Skill[v.actionid].skilltype == "far" then
                                                if math.distance3d(Player.pos,tar.pos) > 25 then
                                                    ExmachinasFunc.MoveTo(Player.localmapid,tar.pos)
                                                else
                                                    if not tar.incombat then
                                                        if Player.targetid ~= tar.id then
                                                            Player:SetTarget(tar.id)
                                                            return true
                                                        end
                                                        if Player.ismounted then
                                                            ExmachinasFunc.UnderMount()
                                                        elseif not Player.ismounted then
                                                            if tar.fateid == 0 and ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            elseif tar.fateid ~= 0 and not ExmachinasFunc.IsSync() then
                                                                Player:SyncLevel()
                                                            end
                                                            if MIsMoving() then
                                                                Player:Stop()
                                                            else
                                                                local action = ActionList:Get(1,11385)
                                                                action:Cast(tar.id)
                                                            end
                                                        end
                                                      
                                                    else
                                                        if tar.castinginfo.castingid == Skill[v.actionid].monstercastid then
                                                            self.killmode = "KillMode"
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        
                                    else
                                        ExmachinasFunc.MoveTo(Skill[v.actionid].mapid,Skill[v.actionid].pos)
                                        self.killmode = "WaitMode"
                                    end
                                end
                            end
                            self.ticks = Now()
                            return true
                        end
                        
                    end
                end
            end
        end
        self.ticks = Now()
    end
end




function self.GetMonsterTbl(contentid)
    local tbl ={}
    local el = MEntityList("alive,targetable,contentid="..contentid)
    if table.valid(el)then
        for k,v in pairs(el)do
            table.insert(tbl,v)
        end
    end
    return tbl
end






function self.GetNotLearnSkill()
    local tbl = {}
    local data = self.skilldata
  
    if table.valid(data) then        
        if data[1][48].value == false then--钻头
            table.insert(tbl,{actionid=11398,learn = false})
        end
        if data[6][96].value == false then--斗争本能
            table.insert(tbl,{actionid=23276,learn = false})
        end
        if data[1][72].value == false then--终极针
            table.insert(tbl,{actionid=11407,learn = false})
        end
        if data[2][32].value == false then--投弹
            table.insert(tbl,{actionid=11396,learn = false})
        end
        if data[1][96].value == false then--平原震裂
            table.insert(tbl,{actionid=11391,learn = false})
        end
      
        if data[3][40].value == false then--千针刺
            table.insert(tbl,{actionid=11397,learn = false})
   
        end
        if data[1][104].value == false then--怒发冲冠
            table.insert(tbl,{actionid=11393,learn = false})
        end
        if data[2][24].value == false then--橡果炸弹
            table.insert(tbl,{actionid=11392,learn = false})
        end
        if data[1][136].value == false then --冰棘屏障
            table.insert(tbl,{actionid=11418,learn = false})
        end
        if data[2][16].value == false then--吸血
            table.insert(tbl,{actionid=11395,learn = false})
        end
        if data[2][104].value == false then--臭气
            table.insert(tbl,{actionid=11388,learn = false})
        end
        if data[1][48].value == false then--自爆
            table.insert(tbl,{actionid=11408,learn = false})
        end
        if data[2][136].value == false then--油性分泌物
            table.insert(tbl,{actionid=11410,learn = false})
        end
        if data[2][64].value == false then --拍掌
            table.insert(tbl,{actionid=11403,learn = false})
        end
        if data[2][72].value == false then--投掷沙丁鱼
            table.insert(tbl,{actionid=11423,learn = false})
        end
        if data[3][96].value == false then--惊奇光
            table.insert(tbl,{actionid=11421,learn = false})
        end
        if data[4][80].value == false then--怪音波
            table.insert(tbl,{actionid=18302,learn = false})
        end
        if data[4][24].value == false then--高山气流
            table.insert(tbl,{actionid=18295,learn = false})
        end
        if data[4][48].value == false then--生物电
            table.insert(tbl,{actionid=18298,learn = false})
        end
        if data[4][128].value == false then--音爆
            table.insert(tbl,{actionid=18308,learn = false})
        end
        if data[4][136].value == false then--口笛
            table.insert(tbl,{actionid=18309,learn = false})
        end
        if data[7][32] == false then--陆行鸟陨石
            table.insert(tbl,{actionid=23284,learn = false})
        end
        if data[4][40].value == false then--狂风暴雪
            table.insert(tbl,{actionid=18297,learn = false})
        end
        if data[5][88].value == false then--逆流
            table.insert(tbl,{actionid=18319,learn = false})
        end
        if data[3][72].value == false then--螺旋尾
            table.insert(tbl,{actionid=11413,learn = false})
        end
        if data[6][104].value == false then--超振动
            table.insert(tbl,{actionid=23277,learn = false})
        end
        if data[6][136].value == false then--以太火花
            table.insert(tbl,{actionid=23281,learn = false})
        end

        if data[4][120].value == false then--蛙腿
            table.insert(tbl,{actionid=18307,learn = false})
        end

    end

    if not table.valid(self.IgnoreSkills) then
        return tbl
    end
    local tbl2 = {}
    for _, v in pairs(tbl) do
        local ignored = false
        for _, vv in pairs(self.IgnoreSkills) do
           if v.actionid == vv then
               ignored = true
               break
           end
        end
        if not ignored then
            table.insert(tbl2, v)
        end
    end
    return tbl2
end

function self.GetSkillNote() --BlueMagicLeveling  得到青魔笔记数据
    local tbl = {}
    for i=1,8 do 
        if (IsControlOpen("AOZNotebook")) then 
            GetControl("AOZNotebook"):PushButton(25,i)
            local e = GetControl("AOZNotebook"):GetRawData()
            tbl[i] = e 
            if i < 8 then
                GetControl("AOZNotebook"):PushButton(25,i+1) 
            end
        end 
    end

    return tbl
end


function self.PartnerIsNearYou()
    local pt = MEntityList("name="..self.HelperData.name)
    if ExmachinasFunc.tv(pt) then
        for k,v in pairs(pt)do
            if math.distance3d(Player.pos,v.pos) <= 5 then
                return true
            end
        end
    end
    
    return false
end

function self.GetMonster()
    local el = MEntityList("alive,targetable,maxdistance=200,los,contentid=8518,contentid=8523,contentid=8536,contentid=8562,contentid=3560,contentid=10700")
    local distance = 1000
    local target = {}
    local e = {}
    if table.valid(el) then
        for k,v in pairs(el)do
            if v.targetid == 0 then
                table.insert(target,v)
            end
        end
    
        for i,ee in pairs(target) do
            if math.distance3d(Player.pos,ee.pos)<=distance then
                distance = math.distance3d(Player.pos,ee.pos)
                e = ee
            end
        end
    end
    return e 
end



function self.GetAggroCount()
    local el = MEntityList("alive,targetable,los,contentid=8518,contentid=8523,contentid=8536,contentid=8562,contentid=3560,contentid=10700")
    local index = 0
    for k,v in pairs(el) do
        if v.targetid == self.HelperData.id then
            index = index +1
        end
    end
    return index
end

