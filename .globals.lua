---@diagnostic disable: undefined-doc-param
--- Global functions definitions

--- @class MLNavigation
--- @field HasPath fun(self: MLNavigation): boolean whether navigation currently has a path selected
ml_navigation = {}

--- @class MLGlobalInformation

ml_global_information = {}

--- Enables or disables profile in FFXIVMinion (quest/assist/gathering etc)
function ml_global_information.ToggleRun()
end

--- @class FFXIVMinion
--- @field DutyCurrentData table no idea what this is
ffxivminion = {}

--- @param botMode "Assist" | "Quest" | "Grind"
function ffxivminion.SwitchMode(botMode)
end

--- @class GUI
--- @field WindowFlags_NoTitleBar number
--- @field WindowFlags_NoResize number
--- @field WindowFlags_NoMove number
--- @field WindowFlags_NoScrollbar number
--- @field WindowFlags_NoCollapse number
--- @field InputTextFlags_CharsDecimal number
--- @field InputTextFlags_CharsHexadecimal number
--- @field InputTextFlags_CharsUppercase number
--- @field ColorEditFlags_NoAlpha number
--- @field ColorEditFlags_NoPicker number
--- @field ColorEditFlags_NoOptions number
--- @field SetCond_Always number
--- @field SetCond_Once number
--- @field SetCond_FirstUseEver number
--- @field SetCond_Appearing number
GUI = {}

--- Start putting everything on the same line
--- @param self GUI
--- @param local_pos_x number|nil The name of the window
--- @param local_spacing_w number|nil Whether the window is open
function GUI:SameLine(local_pos_x, local_spacing_w) end

--- Stop putting everything on the same line
--- @param self GUI
function GUI:NewLine() end

--- Begin a new window
--- @param self GUI
--- @param name string The name of the window
--- @param open boolean Whether the window is open
--- @param flags? number|nil Optional window flags
--- @return boolean visible Whether the window is visible (not collapsed)
--- @return boolean open Whether the window is still open
function GUI:Begin(name, open, flags) end

--- @param x number
--- @param y number
--- @param flags number SetCondFlags
function GUI:SetNextWindowSize(x, y, flags)
end

--- End the current window
--- @param self GUI
function GUI:End() end

--- Set the width of the next item
--- @param self GUI
--- @param width number The width to set for the next item
function GUI:PushItemWidth(width) end

--- Convert RGBA float values to a 32-bit unsigned integer color
--- @param self GUI
--- @param r number Red component (0 to 1)
--- @param g number Green component (0 to 1)
--- @param b number Blue component (0 to 1)
--- @param a number Alpha component (0 to 1)
--- @return number color The 32-bit unsigned integer representing the color
function GUI:ColorConvertFloat4ToU32(r, g, b, a) end

--- Display a label and associated text
--- @param self GUI
--- @param label string The label text
--- @param text string The associated value to display
function GUI:LabelText(label, text) end

--- Create a button
--- @param self GUI
--- @param label string The label of the button
--- @param sizeX number|nil Optional width of the button
--- @param sizeY number|nil Optional height of the button
--- @return boolean clicked Whether the button was clicked
function GUI:Button(label, sizeX, sizeY) end

--- Create a small button
--- @param self GUI
--- @param label string The label of the button
--- @return boolean clicked Whether the button was clicked
function GUI:SmallButton(label, sizeX, sizeY) end

--- Display text
--- @param self GUI
--- @param text string The text to display
function GUI:Text(text) end

--- Create an input text field
--- @param self GUI
--- @param label string The label of the input field
--- @param text string The current text in the field
--- @param flags number|nil Optional input text flags
--- @return string text The updated text
--- @return boolean changed Whether the text was changed
function GUI:InputText(label, text, flags) end

--- Create a checkbox
--- @param self GUI
--- @param label string The label of the checkbox
--- @param checked boolean The current state of the checkbox
--- @return boolean checked The updated state of the checkbox
--- @return boolean pressed Whether the checkbox was pressed
function GUI:Checkbox(label, checked) end

--- Create a checkbox
--- @param self GUI
--- @param label string The label of the checkbox
--- @param current_listitem_index integer The current state of the checkbox
--- @param itemlist table
--- @param height_in_items integer
--- @return boolean checked The updated state of the checkbox
--- @return boolean pressed Whether the checkbox was pressed
function GUI:ListBox(label, current_listitem_index, itemlist, height_in_items) end


FFXIV = {}

FFXIV.JOBS = {
    ADVENTURER = 0,
    GLADIATOR = 1,
    PUGILIST = 2,
    MARAUDER = 3,
    LANCER = 4,
    ARCHER = 5,
    CONJURER = 6,
    THAUMATURGE = 7,
    CARPENTER = 8,
    BLACKSMITH = 9,
    ARMORER = 10,
    GOLDSMITH = 11,
    LEATHERWORKER = 12,
    WEAVER = 13,
    ALCHEMIST = 14,
    CULINARIAN = 15,
    MINER = 16,
    BOTANIST = 17,
    FISHER = 18,
    PALADIN = 19,
    MONK = 20,
    WARRIOR = 21,
    DRAGOON = 22,
    BARD = 23,
    WHITEMAGE = 24,
    BLACKMAGE = 25,
    ARCANIST = 26,
    SUMMONER = 27,
    SCHOLAR = 28,
    ROGUE = 29,
    NINJA = 30,
    MACHINIST = 31,
    DARKKNIGHT = 32,
    ASTROLOGIAN = 33,
    SAMURAI = 34,
    REDMAGE = 35,
    BLUEMAGE = 36,
    GUNBREAKER = 37,
    DANCER = 38,
    REAPER = 39,
    SAGE = 40,
    VIPER = 41,
    PICTOMANCER = 42
}
FFXIV.GAMESTATE = {
	CHARACTERSCREEN = 1,
	ERROR = 4,
	INGAME = 3,
	MAINMENUSCREEN = 2,
}


---@return string path to mods
function GetLuaModsPath()
	return ""
end

---@param path string
---@return boolean whether file exists
function FileExists(path)
	return true
end

---@param path string
---@param var any lua object to store
function FileSave(path, var)
end

---@param path string
---@return any return value of the file saved with FileSave
function FileLoad(path)
	return {}
end

---@param confirm boolean
function PressYesNo(confirm)
end

--- @param event string Event name to listen for
--- @param handler function The function to call when the event is triggered
--- @param identifier string A unique identifier for this event registration
function RegisterEventHandler(event, handler, identifier)
    -- This is just a placeholder for the editor
end

--- @param message string|table
function d(message)

end

--- @param entity Entity|Player
--- @param buff_id string
--- @return boolean the buff exists
function HasBuffs(entity, buff_id)
end

--- @param entity Entity|Player
--- @param buff_id string
--- @return boolean the buff is absent
function MissingBuffs(entity, buff_id)
end

--- @class EorzeaTime
--- @field servertime number

--- Returns the current Eorzea time.
--- @return EorzeaTime
function GetEorzeaTime()
end

--- @param table table
--- @return integer size of the table
function table.size(table)
    -- This is just a placeholder for the editor
    return 1
end

--- @param table table
--- @return boolean True if the table is valid, false otherwise
function table.valid(table)
    -- This is just a placeholder for the editor
    return table ~= nil and next(table) ~= nil
end

--- Global object `Duty`.
--- @class DutyClass
Duty = {}

--- Join duty by type and id. See dev tools
--- @param type integer type of duty
--- @param id integer duty id (not map id)
function Duty:JoinDuty(type, id)
end

--- @return table
function Duty:GetActiveDutyObjectives()
end

--- Get the active queue status
--- @return number queue status id. 4 - in dungeon, 3 - commence, 0 - nothing
function Duty:GetQueueStatus()
    -- This is just a placeholder for the editor
    return 3
end

--- Get the active duty info.
--- @return table info A table containing the active duty info
function Duty:GetActiveDutyInfo()
    -- This is just a placeholder for the editor
    return {}
end

---@class DutyInfo
--- @field id number Duty ID
--- @field type number Duty type
--- @field name string Duty name
--- @field mapid number Map ID
--- @field requiredlevel number Required level to join
--- @field synclevel number Level sync
--- @field partysize number Required party size
--- @field canjoin boolean Whether player can currently join
--- @field completed boolean Whether duty was completed before

--- Gets a list of all duties available to the player
--- @return table<number, DutyInfo> list of duties indexed by duty id (I think?)
function Duty:GetCompleteDutyList() end

--- Represents the casting information for a player or entity.
--- @class CastingInfo
--- @field ptr number The memory pointer to the casting info data.
--- @field castingid number The ID of the action currently being cast.
--- @field casttime number The remaining cast time.
--- @field castingtargetcount number The number of targets being cast on.
--- @field castinginterruptible boolean Whether the casting action is interruptible.
--- @field castingtargets table<number, string> A table of target names or IDs being affected by the current cast.
--- @field lastcastid number The ID of the last action cast.
--- @field timesincecast number The time since the last action was cast.
--- @field channelingid number The ID of the action currently being channeled.
--- @field channeltargetid integer The ID of the target being channeled.
--- @field channeltime number The remaining channel time.

--- Represents a buff or debuff applied to a player or entity.
--- @class Buff
--- @field ptr number The memory pointer to the buff data.
--- @field ptr2 number A secondary memory pointer to the buff data.
--- @field id number The unique identifier for the buff.
--- @field duration number The duration of the buff in seconds.
--- @field name string The name of the buff.
--- @field ownerid number The ID of the entity that applied the buff.
--- @field isbuff boolean Whether this is a buff (true) or a debuff (false).
--- @field isdebuff boolean Whether this is a debuff (true) or a buff (false).
--- @field stacks number The number of stacks of the buff.
--- @field slot number The slot index of the buff.
--- @field dispellable boolean Whether the buff is dispellable.

--- Represents a player or character entity with various attributes.
--- @class Player : Entity
--- @field job number The job or class of the player (represented by an ID).
--- @field pvpteam number The PvP team of the player.
--- @field castinginfo CastingInfo The casting information for the player.
--- @field grandcompany number The grand company affiliation of the player.
--- @field grandcompanyrank number The rank within the grand company.
--- @field aggro boolean Whether the player has aggro (is targeted by an enemy).
--- @field aggropercentage number The percentage of aggro the player has.
--- @field hasaggro boolean Whether the player currently has aggro.
--- @field mp table The mana information of the party member, with fields `current`, `max`, `percent`.
--- @field mp.current number The current mana of the party member.
--- @field mp.max number The maximum mana of the party member.]
--- @field levels table<integer, integer> jobid to level
--- @field mp.percent number The mana of the party member as a percentage.
--- @field revivestate number The state of revival (e.g., alive, dead, reviving).
--- @field role number The role of the player in a party (e.g., tank, healer, DPS).
--- @field attackable boolean Whether the player can be attacked.
--- @field aggressive boolean Whether the player is aggressive.
--- @field friendly boolean Whether the player is friendly.
--- @field incombat boolean Whether the player is currently in combat.
--- @field interactable boolean Whether the player can be interacted with.
--- @field targetable boolean Whether the player can be targeted.
--- @field cangather boolean Whether the player can gather resources (specific to gathering jobs).
--- @field spearfishstate number The state related to spearfishing (specific to fishing).
--- @field marker string The marker associated with the player (e.g., map marker).
--- @field gauge table<integer, number> gauge information
--- @field localmapid integer current map id
--- @field onlinestatus number The online status of the player (e.g., online, offline).
--- @field currentworld string The current world (server) the player is in.
--- @field homeworld string The home world (server) of the player.
--- @field lastcomboid integer
Player = {}

--- Coordinates and rotation structure.
--- @class PlayerPosition : Position
--- @field h number Rotation (heading)
Player.pos = {x = 0, y = 0, z = 0, h = 0}

--- @param npcId integer entity.id of the target
function Player:Interact(npcId)
end

--- @return table[]
function Player:GetAetheryteList()
end

--- @param aetheryteId integer entity.id of the target
function Player:Teleport(aetheryteId) end

--- @return Entity|nil targeted entity
function Player:GetTarget() end

--- @return Entity|nil targeted entity
function Player:ClearTarget() end

--- @param statId number entity
--- @return integer
function Player:GetStats(statId) end

--- Move to point or target, one of args must be non-nil
--- @param x number
--- @param y number
--- @param z number
--- @param radius number|nil
--- @param floorfilters number|nil
--- @param cubefilters number|nil
--- @param targetid number|nil
function Player:MoveTo(x, y, z, radius, floorfilters, cubefilters, targetid)
end

function Player:SetSpeed(arg, run, backwards, strafe, walk)
end

function Player:ResetSpeed(arg)
end

--- @return boolean
function Player:IsMoving()
end


--- @param x number
--- @param y number
--- @param z number
function Player:SetFacing(x, y, z)
end


--- syncs level for fates
function Player:SyncLevel()
end

--- Cancels the MoveTo
function Player:Stop()
    -- This is just a placeholder for the editor
end

--- @param targetId number target id 
function Player:SetTarget(targetId)
    -- This is just a placeholder for the editor
end


--- Gets distance between two points
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return number float distance
function math.distance2d(x1, y1, x2, y2)
    return 0
end

--- @class Position
--- @field x number X-coordinate
--- @field y number Y-coordinate
--- @field z number Z-coordinate

--- Represents a party member with various attributes.
--- @class PartyMember
--- @field ptr number The memory pointer to the party member data.
--- @field id number The unique identifier for the party member.
--- @field guid string The globally unique identifier for the party member.
--- @field mapid number The map ID where the party member is located.
--- @field isleader boolean Whether the party member is the party leader.
--- @field region string The region the party member is currently in.
--- @field onmesh boolean Whether the party member is currently on a navigation mesh.
--- @field pos Position The position of the party member, with fields `x`, `y`, `z`.
--- @field hp table The health information of the party member, with fields `current`, `max`, `percent`.
--- @field hp.current number The current health of the party member.
--- @field hp.max number The maximum health of the party member.
--- @field hp.percent number The health of the party member as a percentage.
--- @field mp table The mana information of the party member, with fields `current`, `max`, `percent`.
--- @field mp.current number The current mana of the party member.
--- @field mp.max number The maximum mana of the party member.
--- @field mp.percent number The mana of the party member as a percentage.
--- @field shield number The shield value of the party member (if applicable).
--- @field job number The job/class of the party member.
--- @field state number The current state of the party member (e.g., alive, dead, in combat).
--- @field level number The current level of the party member.

--- Represents a party member with various attributes.
--- @class CrossWorldPartyMember
--- @field id number The unique identifier for the party member.
--- @field guid string The globally unique identifier for the party member.
--- @field isleader boolean Whether the party member is the party leader.
--- @field isonline boolean Whether the party member is online.
--- @field iscrossworld boolean Whether the party member is in a crossworld party.
--- @field job number The job/class of the party member.
--- @field level number The current level of the party member.
--- @field name string The name of the party member.
--- @field partyindex number The index of the party member within the party.
--- @field synclevel number The synchronized level of the party member (if applicable).
--- @field world number The world ID of the party member.
local CrossWorldPartyMember = {}

--- Represents an entity with various attributes.
--- @class Entity
--- @field name string The name of the entity
--- @field ismounted boolean Whether the player is mounted.
--- @field level number The level of the entity or a player
--- @field id number The unique identifier for the entity
--- @field contentId number The content ID of the entity
--- @field alive boolean Whether the player is alive.
--- @field buffs table<number, Buff> A table of buffs currently applied to the player, where the key is the buff ID.
--- @field job number The job/class of the entity.
--- @field pos table The position of the entity, with fields `x`, `y`, `z`
--- @field distance number The distance from the player to the entity
--- @field targetid number The ID of the current target of the entity
--- @field friendly boolean whether it's a friendly entity
--- @field hp table The health information of the entity, with fields `current`, `max`, `percent`
--- @field hp.current number The current health of the entity
--- @field hp.max number The maximum health of the entity
--- @field hp.percent number The health of the entity as a percentage
--- @field castinginfo CastingInfo The casting information for the entity
--- @field action string The current action being performed by the entity
--- @field lastaction string The last action performed by the entity
--- @field hitradius number id
--- @field targetable boolean 


---@meta

--- Represents the list of party members and provides entity filtering functionality.
--- @class EntityList
--- @field myparty table<number, PartyMember> The list of party members in the player's party.
--- @field crossworldparty table<number, CrossWorldPartyMember> The list of party members in the player's party.
--- @field Get fun(self: EntityList, id: number): Entity|nil returns an entity or nil by given id
local EntityList = {}

--- Retrieves a list of entities that match the specified criteria.
--- @param criteria string The criteria used to filter entities (e.g., a search string)
--- @return table<number, Entity> A list of entities matching the criteria
function EntityList.filter(criteria) end

--- The list of party members in the player's party.
EntityList.myparty = {}

--- @type fun(criteria: string): table<number, Entity>
_G.EntityList = EntityList.filter

--- @type EntityList
_G.EntityList = EntityList

--- Represents an action that can be performed by the player.
--- @class Action
--- @field ptr number Memory pointer to the action data.
--- @field id number The unique identifier for the action.
--- @field name string The name of the action.
--- @field type number The type of the action.
--- @field skilltype number The skill type of the action.
--- @field cost number The cost to use the action.
--- @field casttime number The time it takes to cast the action.
--- @field recasttime number The time it takes to recast the action.
--- @field isoncd boolean Whether the action is on cooldown.
--- @field cd number The current cooldown remaining.
--- @field cdmax number The maximum cooldown time.
--- @field range number The maximum range of the action.
--- @field radius number The radius of the action's effect.
--- @field level number The required level to use the action.
--- @field job number The job associated with the action.
--- @field iscasting boolean Whether the action is currently being cast.
--- @field combospellid number The ID of the spell this action combos with.
--- @field isgroundtargeted boolean Whether the action requires ground targeting.
--- @field attacktype number (Optional) The type of attack (for specific action types).
--- @field cooldowngroup number (Optional) The cooldown group this action belongs to.
--- @field statusgainedid number (Optional) The status effect ID gained from this action.
--- @field secondarycostid number (Optional) The secondary cost ID for this action.
--- @field aspect number (Optional) The aspect of the action.
--- @field category number (Optional) The category of the action.
--- @field primarycosttype number (Optional) The primary cost type of the action.
--- @field highlighted boolean (Optional) Whether the action is highlighted in the UI.
--- @field canfly boolean (Optional) Whether the action allows flying (specific to mounts).
--- @field usable boolean Whether the action is currently usable.
--- @field IsReady fun(self: Action, target?: number): boolean Checks if the action is ready to use.
--- @field IsFacing fun(self: Action, target?: number): boolean Checks if the player is facing the target for this action.
--- @field CanCastResult fun(self: Action, target?: number): boolean Checks if the action can be cast on the target.
--- @field Cast fun(self: Action, target?: number): boolean Attempts to cast the action on the specified target.

--- ActionList class that provides access to actions.
--- @class ActionList
ActionList = {}

--- @return boolean whether we're casting something now (not memoized)
function ActionList:IsCasting()
end

-- hides all minion gui windows.
function ToggleGUI()
end

--- Retrieves an action object based on its type and ID.
--- @param actiontype number The type of the action (e.g., 1 for abilities, 13 for mounts, etc.)
--- @param actionid number The unique identifier of the action.
--- @return Action|nil action The action object if found, or nil if not found.
function ActionList:Get(actiontype, actionid)
    -- Implementation goes here
end

--- ActionList class that provides access to actions.
--- @class Hacks
Hacks = {}

--- @param x number
--- @param y number
--- @param z number
--- @param someBool boolean
function Hacks:TeleportToXYZ(x, y, z, someBool)
end


--- Checks if a specific UI control/window is open in the game.
--- @param controlName string The name of the UI control to check (e.g., "ContentsFinderMenu").
--- @return boolean isOpen Returns true if the specified UI control is open, false otherwise.
function IsControlOpen(controlName)
    return false
end

--- Performs an action on a specified UI control/window.
--- This is typically used to press a button or perform an interaction within the scope of the control.
--- @param controlName string The name of the UI control to interact with (e.g., "ContentsFinderMenu").
--- @param actionName string The action to perform on the control (e.g., "Leave").
--- @param argValue any|nil optional argument to pass to the control
--- @param preDelay number|nil delay before starting the action execution
--- @param postDelay number|nil delay post action execution
function UseControlAction(controlName, actionName, argValue, preDelay,postDelay)
    -- Implementation goes here
end

--- @return number milliseconds
function Now()
    return 0
end

--- @param control string name of the control
--- @param data string name of the data on this control
--- @return unknown
function GetControlData(control, data)
    return true
end

--- @class ChatLine
--- @field code number unique identifier for the type of chat message
--- @field line string the processed message line shown to the user
--- @field name string optional name associated with the chat message (usually empty)
--- @field rawline string raw, unprocessed line including non-printable characters
--- @field subcode number secondary identifier related to the message type
--- @field timestamp number Unix timestamp for when the message was logged

--- @return table<number, ChatLine> table with sequential integer keys and ChatLine values
function GetChatLines()
    return {}
end

-- same as Now() but better
function GetTickCount()
	return 1
end


--- @class Control
--- @field name string
--- @field PushButton fun(self: Control, pushButtonA: number, pushButtonB: number)
--- @field DoAction fun(self: Control, actionNumber: number)
--- @field Action fun(self: Control, actionName: string, args: any)
--- @field GetStrings fun(self: Control): table<number, string> gets string values and their associated ids
--- @field Close fun(self: Control) closes the control
--- @field IsReady fun(self: Control) whether the control is ready for use
--- @field IsOpen fun(self: Control) whether the control is ready for use
--- @field GetData fun(self: Control): table<any, any>
--- @field GetRawData fun(self: Control): RawData 
--- @field SetXY fun(self: Control, x: integer, y: integer)
--- @field GetXY fun(self: Control): integer, integer

--- @return table<number, Control> controls by id
function GetControls()
    return {}
end

--- @param name string
--- @param id number
--- @return string|nil controls by id
function GetControlStrings(name, id)
    return ""
end

--- @param name string name of the control
--- @return Control
function GetControlByName(name)
    return {}
end

--- @class RawData
--- @field type string
--- @field value any

--- @param name string name of the control
--- @param index integer index of the raw data in question
--- @return RawData
function GetControlRawData(name, index)
    return {
		["type"] = "uint",
		["value"] = 0
	}
end

--- Attempts to dismount if mounted.
function Dismount()
end

--- Attempts to mount by using mount id
--- @param id number|nil moutn id
function Mount(id)
end

---@return boolean casting/doing something
function Busy()
end

---@param vcode integer presses a key by given vcode
function PressKey(vcode)
end

ExmachinasFunc = {}




--- @param addon "BlueMagicLevel"
--- @param arg any
--- @param status any
function ExmachinasFunc.SetAddon(addon,arg,status)
end

KitanoiFuncs = {}

--- @param addon "dungeon framework"
--- @param status boolean
function KitanoiFuncs.EnableAddon(addon, status)
end

--- @class BagItem
--- @field ptr number Memory pointer for the item
--- @field ptr2 number Secondary memory pointer
--- @field id number Item ID
--- @field ishq boolean Whether item is high quality
--- @field hqid number High quality item ID
--- @field isingearset boolean Whether item is in a gearset
--- @field slot number Slot number in bag
--- @field type number Parent bag ID
--- @field count number Current stack size
--- @field max number Maximum stack size
--- @field condition number Item condition
--- @field collectability number Item collectability
--- @field spiritbond number Spiritbond percentage
--- @field spiritbondvalue number Raw spiritbond value
--- @field level number Item level
--- @field requiredlevel number Required level to use
--- @field class number Class/job ID that can use item
--- @field category number Item category
--- @field uicategory number UI category
--- @field searchcategory number Search category
--- @field canequip boolean Whether player can equip
--- @field equipslot number Equipment slot
--- @field price number Item price
--- @field materiaslotcount number Number of materia slots
--- @field materias table<number, table> Materia info
--- @field rarity number Item rarity
--- @field isunique boolean Whether item is unique
--- @field isuntradeable boolean Whether item cannot be traded
--- @field iscollectable boolean Whether item is collectable
--- @field desynthvalue number Desynthesis value
--- @field repairclassjob number Class/job that can repair
--- @field repairitem number Repair item ID
--- @field isbinding boolean Whether item is currently binding
--- @field name string Item name
--- @field GetStat fun(self: BagItem, statId: number, isHQ: boolean): number Get item stat value
--- @field GetAction fun(self: BagItem): Action|nil Get associated action
--- @field IsReady fun(self: BagItem, targetId?: number): boolean Check if item can be used
--- @field Cast fun(self: BagItem, targetId?: number): boolean Use/cast the item
--- @field Sell fun(self: BagItem): boolean Sell the item
--- @field Discard fun(self: BagItem): boolean Discard the item
--- @field RetrieveMateria fun(self: BagItem): boolean Remove materia
--- @field HandOver fun(self: BagItem): boolean Hand over item
--- @field Gardening fun(self: BagItem): boolean Use for gardening
--- @field Repair fun(self: BagItem): boolean Repair the item
--- @field Salvage fun(self: BagItem): boolean Desynthesize item
--- @field CanCast fun(self: BagItem, actionType: number, actionId: number): boolean Check if action can be used
--- @field Purify fun(self: BagItem): boolean Purify item
--- @field Convert fun(self: BagItem): boolean Convert item
--- @field Meld fun(self: BagItem): boolean Meld materia
--- @field Transmute fun(self: BagItem): boolean Transmute item
--- @field SelectFeed fun(self: BagItem): boolean Select as feed
--- @field Reward fun(self: BagItem): boolean Use as reward
--- @field Split fun(self: BagItem, amount: number): boolean Split stack
--- @field Move fun(self: BagItem, bagId: number, slotId: number, amount?: number): boolean Move item
--- @field LowerQuality fun(self: BagItem): boolean Lower item quality

--- @class Bag
--- @field ptr number Memory pointer
--- @field size number Total slots
--- @field free number Free slots
--- @field used number Used slots
--- @field GetList fun(self: Bag): table<number, BagItem> Get items in bag
--- @field GetSortedItemList fun(self: Bag): table<number, BagItem> Get sorted items (the same way they're currently in the inventory)
--- @field RepairAll fun(self: Bag, useDarkMatter?: boolean): boolean Repair all items
--- @field SortInventory fun(self: Bag): boolean Sort inventory

Inventory = {}

--- Gets a bag by ID
--- @param bagId integer The bag ID to retrieve
--- @return Bag The bag object
function Inventory:Get(bagId)
end

---@class ShopItem
---@field count number    -- The quantity of the item (if applicable)
---@field id number       -- Unique identifier for the item
---@field name string     -- The name of the item
---@field price number    -- The price of the item
---@field ptr number      -- A pointer (or reference) to additional data (if applicable)
---@field questid number  -- Quest identifier if the item is linked to a quest
---@field shopid number   -- The shop identifier for the item
---@field slot number     -- The slot number where the item is placed in the shop

---@return ShopItem[] A list of shop items in the inventory shop list.
function Inventory:GetShopList()
end

---@class ExchangeShopItem
---@field type1 integer
---@field type2 integer
---@field type3 integer
---@field slot integer
---@field id integer
---@field id2 integer
---@field name string
---@field price1 integer
---@field price2 integer
---@field price3 integer
---@field ptr integer

---Returns a list of items available for exchange.
---@return ExchangeShopItem[]
function Inventory:GetItemExchangeList()
end

--- @param itemId integer
function Inventory:BuyShopItem(itemId)
end

--- @param questId integer
function QuestCompleted(questId)
end

--- @param itemId integer
--- @return BagItem|nil
function GetItem(itemId)
end

---Lookup for an item in the inventory
---@param hqid number
---@param inventories table|nil
function GetItem(hqid,inventories)
end

json = {}

--- Encodes table to a json
--- @param t any
--- @param params table|nil
function json.encode(t, params)
end

--- Decodes json string to a table
--- @param s string
--- @return table
function json.decode(s)
end

function HttpRequest(params)
end

--- @return string id of the account probably
function GetUUID()
end

--- @class AetheryteInfo
--- @field id integer

--- @param mapId integer
--- @param pos Position|nil position to choose better spot to tp to.
--- @return AetheryteInfo aetheryte to tp to
function GetAetheryteByMapID(mapId, pos)
end


--- @return number process id of ffxiv.
function GetCurrentPID()
end

---@param path string
---@param message string
---@param append boolean|nil
function FileWrite(path, message, append)

end

---@param path string
function FileDelete(path)

end

---@param path string
---@return boolean
function FolderExists(path)
    return false
end

---@param path string
function FolderCreate(path)
end

---@param path string
function FolderDelete(path)
end

--- @return integer amount on character
function GilCount()
end

--- Argus space:

--- @class DirectionalAOE
--- Structure for Directional AOEs that are usually originating from an entity.
--- @field x number X position of aoe
--- @field y number Y position of aoe
--- @field z number Z position of aoe
--- @field aoeType integer Animation/omen type of aoe
--- @field heading number Direction the aoe is facing
--- @field aoeLength integer Length of aoe
--- @field aoeWidth integer Width of aoe, mostly used for Line aoes. This value is 0 for cones and circles.
--- @field aoeName string Name of aoe
--- @field aoeID integer Cast/Spell ID of aoe
--- @field aoeCastType integer Cast type/shape of AOE. See castType for known castType values.
--- @field targetAttach integer|nil ID of entity that current aoe is attached to, if found. Value is nil otherwise.
--- @field aoeAnimationInfo aoeAnimationInfo Contains information about the animation that will play when the aoe completes and gets casted.
--- @field aoeEffectInfo aoeEffectInfo Contains information about the aoe's omen/telegraph.
--- @field isAreaTarget boolean If the spell is a free target ability or not, useful for identifying aoes that will attach to target or not.
--- @field startTime number startTime (same units as Now())
--- @field duration number cast duration in seconds
--- @field entityID integer|nil optional entity id for aoes that attach to targets

--- @class GroundAOE
--- Structure for Ground AOEs that are not usually attached to any entity.
--- @field x number X position of aoe
--- @field y number Y position of aoe
--- @field z number Z position of aoe
--- @field aoeType integer Animation/omen type of aoe
--- @field aoeLength integer Length/radius in yalms of aoe
--- @field aoeWidth integer Width in yalms of aoe (0 for circles and cones etc)
--- @field aoeName string Name of aoe
--- @field aoeID integer Cast/Spell ID of aoe
--- @field aoeCastType integer Cast type/shape of AOE. See castType for known castType values.
--- @field targetAttach integer|nil ID of entity that current aoe is attached to, if found. Value is nil otherwise.
--- @field aoeAnimationInfo aoeAnimationInfo Contains information about the animation that will play when the aoe completes and gets casted.
--- @field aoeEffectInfo aoeEffectInfo Contains information about the aoe's omen/telegraph.
--- @field isAreaTarget boolean If the spell is a free target ability or not, useful for identifying aoes that will attach to target or not.
--- @field startTime number startTime (same units as Now())
--- @field duration number cast duration in seconds

--- @class aoeAnimationInfo
--- Structure that contains information about an aoe's animation. Useful in case there is additional info that can be grabbed to determine cone width/donut inner radius.
--- @field aoeAnimationTypeStart integer
--- @field aoeAnimationTypeEnd integer
--- @field aoeAnimationTimelineHit integer
--- @field aoeCastVFX integer

--- @class aoeEffectInfo
--- Structure that contains information about an omen/telegraph. Useful for identifying cone width and donut inner radius for telegraphed aoes.
--- @field aoeEffectName string Name of omen
--- @field aoeEffectCastType integer If this value is non-zero, then the game override the original aoeCastType with this castType value internally. Argus already updates the original aoeCastType value correctly, so this field can be generally ignored.
--- @field aoeEffectRestrictYScale boolean If true, the aoe will be 10% of its original size. Argus already adjusts the original aoe size values correctly, so this field can be generally ignored.
--- @field aoeEffectLargeScale integer Some value that changes internal orientation for drawing the telegraph effects. Argus already handles this value internally, so it can be generally ignored.

--- @class castType
--- An integer to identify some aoe types. These are not guaranteed for every AOE. But generally, these are how AOEs are categorized in the game.
--- Fields:
--- [2, 5, 7] Circle AOE
--- [3, 13] Directional Cone/arc AOE
--- [4, 12] Directional Line AOE
--- [6] Meteor mechanic (more damage the closer you are to the center), usually unavoidable
--- [8] Line AOE that's targeted to either a position, or specific entity. Argus will adjust the length and heading automatically
--- [10] Donut AOE
--- [11] Cross AOE (new type to Shadowbringers, like last boss of Grand Cosmos)

--- @class onAOECreateFunc
--- This function is called when a directional or ground AOE is created.
--- @param aoe DirectionalAOE|GroundAOE A copy of the created AOE object. Note: This object will not receive position updates.

--- @class onEntityCastFunc
--- This function is called when the server sends a successful entity cast packet to the client.
--- @param entityID integer ID of the entity casting the spell
--- @param actionID integer ID of the spell being cast
--- @param castPosX number|nil X position of the cast; nil if the spell is not cast at a specific position
--- @param castPosY number|nil Y position of the cast; nil if the spell is not cast at a specific position
--- @param castPosZ number|nil Z position of the cast; nil if the spell is not cast at a specific position
--- @param heading number Heading of the casted ability; used for rectangles and cones
--- @param mainTargetID integer ID of the main target of the spell
--- @param targets table List of target IDs the ability is cast on


--- @class onEntityChannelFunc
--- This function is called when an entity starts channeling an ability.
--- @param entityID integer ID of the entity channeling the spell
--- @param channelID integer ID of the spell being channeled
--- @param targetID integer ID of the target that the spell is being channeled on
--- @param channelTimeMax number Duration for which the cast will be channeled

--- @class ArgusEntityCast
--- Represents the parameters of an entity casting a spell.
--- @field entityID integer ID of the entity casting the spell
--- @field actionID integer ID of the spell being cast
--- @field castPosX number|nil X position of the cast; nil if the spell is not cast at a specific position
--- @field castPosY number|nil Y position of the cast; nil if the spell is not cast at a specific position
--- @field castPosZ number|nil Z position of the cast; nil if the spell is not cast at a specific position
--- @field heading number Heading of the casted ability; used for rectangles and cones
--- @field mainTargetID integer ID of the main target of the spell
--- @field targets table List of target IDs the ability is cast on

Argus = {}

--- Registers a function to be called when a directional or ground AOE is created.
--- This must be called in the "Module.Initialize" handler.
--- @param func fun(aoe: DirectionalAOE|GroundAOE)
function Argus.registerOnAOECreateFunc(func)
    -- Implementation to register the function
end

--- Registers a function to be called when an entity casts an action successfully.
--- This must be called in the "Module.Initialize" handler.
--- @param func fun(entityID: integer, actionID: integer, castPosX: number|nil, castPosY: number|nil, castPosZ: number|nil, heading: number, mainTargetID: integer, targets: table)
function Argus.registerOnEntityCast(func)
    -- Implementation to register the function
end

--- Registers a function to be called when an entity starts channeling an ability.
--- This must be called in the "Module.Initialize" handler.
--- @param func fun(entityID: integer, channelID: integer, targetID: integer, channelTimeMax: number)
function Argus.registerOnEntityChannel(func)
    -- Implementation to register the function
end

--- @param func fun(entityID: integer, wasVisible: boolean, isVisible: boolean)
function Argus.registerOnVisibilityChangeFunc(func)
end


--- @type boolean
--- whether a profile is running (e.g. assist/quest)
FFXIV_Common_BotRunning = false

--- @class QuestClass
--- @field IsQuestCompleted fun(self: QuestClass, questId: number, something: boolean): boolean Checks if the quest is complete
--- @field HasQuest fun(self: QuestClass, questId: number, something: boolean): boolean Checks whether the quest is active
--- @field GetQuestCurrentStep fun(self: QuestClass, questId: number, something: boolean|nil): integer Checks whether the quest is active
Quest = {}

--- @param questId integer
--- @return boolean
function HasQuest(questId)
end

--- @param questId integer
--- @return boolean
function QuestCompleted(questId)
end

-- reloads lua
function Reload()
end

---@param command string a command to execute
function SendTextCommand(command)
end

--- @class ServerInfo
--- @field id integer Server ID
--- @field name string Server Name
--- @field ptr integer PTR status (0 for non-PTR servers)

--- @return ServerInfo[] List of available FFXIV servers
function GetServerList()
end

--- @param serverId integer ID of the server to select
--- @return boolean Success status of server selection
function SelectServer(serverId)
end


--- @return number
function MGetGameState()
end

---@param l string
---@param r string
---@return boolean
function string.contains(l, r)
end

--- TensorCore addon
TensorCore = {}

--- Returns whether tensorcore exe is loaded. 
--- @return boolean
function TensorCore.isExeLoaded()
	return false
end

--- Set the auto-follow position for the player
--- @param self Player
--- @param x number The X-coordinate to follow
--- @param y number The Y-coordinate to follow
--- @param z number The Z-coordinate to follow
function Player:SetAutoFollowPos(x, y, z)
end

--- Enables or disables the auto-follow feature for the player.
--- @param enable boolean: If true, auto-follow is enabled; if false, it is disabled.
function Player:SetAutoFollowOn(enable)
end

--- Global clock offset
--- @type number
GlobalOffset = 0

Questing = {}

gQuestProfileIndex = 0
gQuestProfile = "(Latty) 1-70 [ARR-HW-SB]"

--- @type string[]
Questing.profilesDisplay = {"(Latty) 1-70 [ARR-HW-SB]", "(Latty) 1-100 [Testing]"}

--- @param profileName string
function Questing.UpdateSelection(profileName)
end

--- @param path string
--- @return boolean
--- @nodiscard
function direxists(path)
end

--- @param path string
--- @return boolean
function dircreate(path)
end

ml_task_hub = {}

-- some flags for tasks. I don't know what they do
REACTIVE_GOAL = 2
TP_IMMEDIATE = 0

function ml_task_hub:Add(task, goal, prio)
end

--- KDF funcs thing, stores/loads data in C:\MINIONAPP\Bots\FFXIVMinion64\LuaMods\KitanoiFuncs\Settings\Data
kIO = {}

function kIO.save()
end

function kIO.load()
end

--- Whether to auto skip cutscenes
--- @type boolean
gSkipCutscene = false

--- Whether to skip dialogs
--- @type boolean
gSkipTalk = false

--- Whether to skip unskippable cutscenes
--- @type boolean
gSkipUnsafeCutscene = false


--- Whether to do disable city quests
--- @type boolean
QuestOpts_City_Quests = false


--- prio huntlog over quests
--- @type boolean
gQuestPrioritizeHuntlogs = false

KitanoiSettings = {
    SuppressAceLibNavErrors = false,
    SuppressAceLibNavErrorsForce = false,

    --- you can save arbitrary things in kitanoi funcs.
    --- @type any
    CustomVar1 = 0,
}

gBotMode = 'Quest'
gBotModeIndex = 1
gBotModeList = {
    'Assist',
    'Duty'
}

QuestOpts_L_v1_PickGC = "Maelstrom"
QuestOpts_L_v1_PickGC_index = 3
QuestOpts_Q_ChocoboName = "sss"

D = "{[1] = \"Kitanoi\", [7] = \"Kitanoi\", [29] = \"Kitanoi\", [30] = \"Kitanoi\", [32] = \"Kitanoi\", [5] = \"Kitanoi\", [40] = \"Kitanoi\", [3] = \"Kitanoi\", [42] = \"Kitanoi\", [23] = \"Kitanoi\", [21] = \"Kitanoi\"}"

--- @type table<integer, string>
gACRSelectedProfiles = {
    [1] = "Kitanoi",
    [3] = "Kitanoi",
    [5] = "Kitanoi",
    [7] = "Kitanoi",
    [21] = "Kitanoi",
    [23] = "Kitanoi",
    [29] = "Kitanoi",
    [30] = "Kitanoi",
    [32] = "Kitanoi"
}

--- Whether to collect aether currents while doing questing
--- @type boolean
gQuestGatherAetherCurrents = false

BlueMagicLeveling = {}

--- @type table
BlueMagicLeveling.skilldata = {}

--- @type table<integer, table>
BlueMagicLeveling.skillnotlearn = {
    { 
        actionid = 23281,
        learn = false
    }
}

ml_mesh_mgr = {}
--- @param mapId integer
---@param name string
---@param enfore boolean
function ml_mesh_mgr.SetDefaultMesh(mapId, name, enfore)
end

--- @param query string
--- @return Entity[]
function MEntityList(query)
end