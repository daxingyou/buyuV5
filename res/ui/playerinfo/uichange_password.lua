--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Node
local Node=cc.Node:create()
Node:setName("Node")

--Create panel
local panel = ccui.Layout:create()
panel:ignoreContentAdaptWithSize(false)
panel:setClippingEnabled(false)
panel:setBackGroundColorType(1)
panel:setBackGroundColor({r = 150, g = 200, b = 255})
panel:setBackGroundColorOpacity(102)
panel:setTouchEnabled(true);
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(658)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
Node:addChild(panel)

--Create image_bg
local image_bg = ccui.ImageView:create()
image_bg:ignoreContentAdaptWithSize(false)
image_bg:loadTexture("common/layerbg/com_bg_pic_3.png",0)
image_bg:setScale9Enabled(true)
image_bg:setCapInsets({x = 145, y = 92, width = 1, height = 1})
image_bg:setLayoutComponentEnabled(true)
image_bg:setName("image_bg")
image_bg:setTag(177)
image_bg:setCascadeColorEnabled(true)
image_bg:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(image_bg)
layout:setSize({width = 700.0000, height = 456.0000})
layout:setLeftMargin(-350.0000)
layout:setRightMargin(-350.0000)
layout:setTopMargin(-228.0000)
layout:setBottomMargin(-228.0000)
panel:addChild(image_bg)

--Create img_bg_2
local img_bg_2 = ccui.ImageView:create()
img_bg_2:ignoreContentAdaptWithSize(false)
img_bg_2:loadTexture("common/layerbg/com_bg_pic_bsbg.png",0)
img_bg_2:setScale9Enabled(true)
img_bg_2:setCapInsets({x = 37, y = 36, width = 1, height = 1})
img_bg_2:setLayoutComponentEnabled(true)
img_bg_2:setName("img_bg_2")
img_bg_2:setTag(178)
img_bg_2:setCascadeColorEnabled(true)
img_bg_2:setCascadeOpacityEnabled(true)
img_bg_2:setPosition(350.0000, 201.8200)
layout = ccui.LayoutComponent:bindLayoutComponent(img_bg_2)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.4426)
layout:setPercentWidth(0.9486)
layout:setPercentHeight(0.8070)
layout:setSize({width = 664.0000, height = 368.0000})
layout:setLeftMargin(18.0000)
layout:setRightMargin(18.0000)
layout:setTopMargin(70.1800)
layout:setBottomMargin(17.8200)
image_bg:addChild(img_bg_2)

--Create spr_title
local spr_title = cc.Sprite:create("playerinfo/pinf_pic_title_xgmm.png")
spr_title:setName("spr_title")
spr_title:setTag(660)
spr_title:setCascadeColorEnabled(true)
spr_title:setCascadeOpacityEnabled(true)
spr_title:setPosition(0.0000, 185.2776)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_title)
layout:setPositionPercentXEnabled(true)
layout:setSize({width = 162.0000, height = 42.0000})
layout:setLeftMargin(-81.0000)
layout:setRightMargin(-81.0000)
layout:setTopMargin(-206.2776)
layout:setBottomMargin(164.2776)
spr_title:setBlendFunc({src = 1, dst = 771})
panel:addChild(spr_title)

--Create btn_close
local btn_close = ccui.Button:create()
btn_close:ignoreContentAdaptWithSize(false)
btn_close:loadTextureNormal("common/btn/com_btn_close_0.png",0)
btn_close:loadTexturePressed("common/btn/com_btn_close_1.png",0)
btn_close:loadTextureDisabled("common/btn/com_btn_close_1.png",0)
btn_close:setTitleFontSize(14)
btn_close:setTitleColor({r = 65, g = 65, b = 70})
btn_close:setScale9Enabled(true)
btn_close:setCapInsets({x = 15, y = 11, width = 40, height = 48})
btn_close:setLayoutComponentEnabled(true)
btn_close:setName("btn_close")
btn_close:setTag(661)
btn_close:setCascadeColorEnabled(true)
btn_close:setCascadeOpacityEnabled(true)
btn_close:setPosition(324.1149, 191.8861)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_close)
layout:setSize({width = 70.0000, height = 70.0000})
layout:setLeftMargin(289.1149)
layout:setRightMargin(-359.1149)
layout:setTopMargin(-226.8861)
layout:setBottomMargin(156.8861)
panel:addChild(btn_close)

--Create btn_sure
local btn_sure = ccui.Button:create()
btn_sure:ignoreContentAdaptWithSize(false)
btn_sure:loadTextureNormal("common/btn/com_btn_orange_0.png",0)
btn_sure:loadTexturePressed("common/btn/com_btn_orange_1.png",0)
btn_sure:loadTextureDisabled("common/btn/com_btn_orange_1.png",0)
btn_sure:setTitleFontSize(14)
btn_sure:setTitleColor({r = 65, g = 65, b = 70})
btn_sure:setScale9Enabled(true)
btn_sure:setCapInsets({x = 60, y = 40, width = 38, height = 2})
btn_sure:setLayoutComponentEnabled(true)
btn_sure:setName("btn_sure")
btn_sure:setTag(672)
btn_sure:setCascadeColorEnabled(true)
btn_sure:setCascadeOpacityEnabled(true)
btn_sure:setPosition(145.4100, -138.2069)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_sure)
layout:setSize({width = 225.0000, height = 82.0000})
layout:setLeftMargin(32.9100)
layout:setRightMargin(-257.9100)
layout:setTopMargin(97.2069)
layout:setBottomMargin(-179.2069)
panel:addChild(btn_sure)

--Create spr_qd
local spr_qd = cc.Sprite:create("playerinfo/pinf_pic_qd.png")
spr_qd:setName("spr_qd")
spr_qd:setTag(673)
spr_qd:setCascadeColorEnabled(true)
spr_qd:setCascadeOpacityEnabled(true)
spr_qd:setPosition(112.0000, 46.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_qd)
layout:setPositionPercentX(0.4978)
layout:setPositionPercentY(0.5610)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.5366)
layout:setSize({width = 90.0000, height = 44.0000})
layout:setLeftMargin(67.0000)
layout:setRightMargin(68.0000)
layout:setTopMargin(14.0000)
layout:setBottomMargin(24.0000)
spr_qd:setBlendFunc({src = 1, dst = 771})
btn_sure:addChild(spr_qd)

--Create btn_cancel
local btn_cancel = ccui.Button:create()
btn_cancel:ignoreContentAdaptWithSize(false)
btn_cancel:loadTextureNormal("common/btn/com_btn_red_0.png",0)
btn_cancel:loadTexturePressed("common/btn/com_btn_red_1.png",0)
btn_cancel:loadTextureDisabled("common/btn/com_btn_red_1.png",0)
btn_cancel:setTitleFontSize(14)
btn_cancel:setTitleColor({r = 65, g = 65, b = 70})
btn_cancel:setScale9Enabled(true)
btn_cancel:setCapInsets({x = 60, y = 40, width = 38, height = 2})
btn_cancel:setLayoutComponentEnabled(true)
btn_cancel:setName("btn_cancel")
btn_cancel:setTag(674)
btn_cancel:setCascadeColorEnabled(true)
btn_cancel:setCascadeOpacityEnabled(true)
btn_cancel:setPosition(-146.4600, -138.3688)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_cancel)
layout:setSize({width = 225.0000, height = 82.0000})
layout:setLeftMargin(-258.9600)
layout:setRightMargin(33.9600)
layout:setTopMargin(97.3688)
layout:setBottomMargin(-179.3688)
panel:addChild(btn_cancel)

--Create spr_qx
local spr_qx = cc.Sprite:create("playerinfo/pinf_pic_qx.png")
spr_qx:setName("spr_qx")
spr_qx:setTag(675)
spr_qx:setCascadeColorEnabled(true)
spr_qx:setCascadeOpacityEnabled(true)
spr_qx:setPosition(112.0000, 46.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_qx)
layout:setPositionPercentX(0.4978)
layout:setPositionPercentY(0.5610)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.5366)
layout:setSize({width = 90.0000, height = 44.0000})
layout:setLeftMargin(67.0000)
layout:setRightMargin(68.0000)
layout:setTopMargin(14.0000)
layout:setBottomMargin(24.0000)
spr_qx:setBlendFunc({src = 1, dst = 771})
btn_cancel:addChild(spr_qx)

--Create node_initial_password
local node_initial_password=cc.Node:create()
node_initial_password:setName("node_initial_password")
node_initial_password:setTag(662)
node_initial_password:setCascadeColorEnabled(true)
node_initial_password:setCascadeOpacityEnabled(true)
node_initial_password:setPosition(-252.8000, 104.5324)
layout = ccui.LayoutComponent:bindLayoutComponent(node_initial_password)
layout:setLeftMargin(-252.8000)
layout:setRightMargin(252.8000)
layout:setTopMargin(-104.5324)
layout:setBottomMargin(104.5324)
panel:addChild(node_initial_password)

--Create spr_word
local spr_word = cc.Sprite:create("playerinfo/pinf_pic_srmm.png")
spr_word:setName("spr_word")
spr_word:setTag(663)
spr_word:setCascadeColorEnabled(true)
spr_word:setCascadeOpacityEnabled(true)
spr_word:setAnchorPoint(0.0000, 0.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_word)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 116.0000, height = 28.0000})
layout:setRightMargin(-116.0000)
layout:setTopMargin(-14.0000)
layout:setBottomMargin(-14.0000)
spr_word:setBlendFunc({src = 1, dst = 771})
node_initial_password:addChild(spr_word)

--Create image_bg
local image_bg = ccui.ImageView:create()
image_bg:ignoreContentAdaptWithSize(false)
image_bg:loadTexture("common/layerbg/com_pic_insert_bg.png",0)
image_bg:setScale9Enabled(true)
image_bg:setCapInsets({x = 18, y = 19, width = 6, height = 3})
image_bg:setLayoutComponentEnabled(true)
image_bg:setName("image_bg")
image_bg:setTag(664)
image_bg:setCascadeColorEnabled(true)
image_bg:setCascadeOpacityEnabled(true)
image_bg:setPosition(328.6483, 0.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(image_bg)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 352.0000, height = 42.0000})
layout:setLeftMargin(152.6483)
layout:setRightMargin(-504.6483)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
node_initial_password:addChild(image_bg)

--Create tf_initial
local tf_initial = ccui.TextField:create()
tf_initial:ignoreContentAdaptWithSize(false)
tolua.cast(tf_initial:getVirtualRenderer(), "cc.Label"):setLineBreakWithoutSpace(true)
tf_initial:setFontSize(28)
tf_initial:setPlaceHolder("account")
tf_initial:setString([[]])
tf_initial:setMaxLength(10)
tf_initial:setLayoutComponentEnabled(true)
tf_initial:setName("tf_initial")
tf_initial:setTag(665)
tf_initial:setCascadeColorEnabled(true)
tf_initial:setCascadeOpacityEnabled(true)
tf_initial:setAnchorPoint(0.0000, 0.5325)
tf_initial:setPosition(161.4313, 0.0000)
tf_initial:setColor({r = 26, g = 26, b = 26})
layout = ccui.LayoutComponent:bindLayoutComponent(tf_initial)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 342.0000, height = 42.0000})
layout:setLeftMargin(161.4313)
layout:setRightMargin(-503.4313)
layout:setTopMargin(-19.6350)
layout:setBottomMargin(-22.3650)
node_initial_password:addChild(tf_initial)

--Create node_set_password
local node_set_password=cc.Node:create()
node_set_password:setName("node_set_password")
node_set_password:setTag(711)
node_set_password:setCascadeColorEnabled(true)
node_set_password:setCascadeOpacityEnabled(true)
node_set_password:setPosition(-252.8000, 31.5344)
layout = ccui.LayoutComponent:bindLayoutComponent(node_set_password)
layout:setLeftMargin(-252.8000)
layout:setRightMargin(252.8000)
layout:setTopMargin(-31.5344)
layout:setBottomMargin(31.5344)
panel:addChild(node_set_password)

--Create spr_word
local spr_word = cc.Sprite:create("playerinfo/pinf_pic_szmm.png")
spr_word:setName("spr_word")
spr_word:setTag(712)
spr_word:setCascadeColorEnabled(true)
spr_word:setCascadeOpacityEnabled(true)
spr_word:setAnchorPoint(0.0000, 0.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_word)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 114.0000, height = 28.0000})
layout:setRightMargin(-114.0000)
layout:setTopMargin(-14.0000)
layout:setBottomMargin(-14.0000)
spr_word:setBlendFunc({src = 1, dst = 771})
node_set_password:addChild(spr_word)

--Create image_bg
local image_bg = ccui.ImageView:create()
image_bg:ignoreContentAdaptWithSize(false)
image_bg:loadTexture("common/layerbg/com_pic_insert_bg.png",0)
image_bg:setScale9Enabled(true)
image_bg:setCapInsets({x = 18, y = 19, width = 6, height = 3})
image_bg:setLayoutComponentEnabled(true)
image_bg:setName("image_bg")
image_bg:setTag(713)
image_bg:setCascadeColorEnabled(true)
image_bg:setCascadeOpacityEnabled(true)
image_bg:setPosition(328.6483, 0.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(image_bg)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 352.0000, height = 42.0000})
layout:setLeftMargin(152.6483)
layout:setRightMargin(-504.6483)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
node_set_password:addChild(image_bg)

--Create tf_set
local tf_set = ccui.TextField:create()
tf_set:ignoreContentAdaptWithSize(false)
tolua.cast(tf_set:getVirtualRenderer(), "cc.Label"):setLineBreakWithoutSpace(true)
tf_set:setFontSize(28)
tf_set:setPlaceHolder("account")
tf_set:setString([[]])
tf_set:setMaxLength(10)
tf_set:setLayoutComponentEnabled(true)
tf_set:setName("tf_set")
tf_set:setTag(714)
tf_set:setCascadeColorEnabled(true)
tf_set:setCascadeOpacityEnabled(true)
tf_set:setAnchorPoint(0.0000, 0.5325)
tf_set:setPosition(161.4313, 0.0000)
tf_set:setColor({r = 26, g = 26, b = 26})
layout = ccui.LayoutComponent:bindLayoutComponent(tf_set)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 342.0000, height = 42.0000})
layout:setLeftMargin(161.4313)
layout:setRightMargin(-503.4313)
layout:setTopMargin(-19.6350)
layout:setBottomMargin(-22.3650)
node_set_password:addChild(tf_set)

--Create node_sure_password
local node_sure_password=cc.Node:create()
node_sure_password:setName("node_sure_password")
node_sure_password:setTag(715)
node_sure_password:setCascadeColorEnabled(true)
node_sure_password:setCascadeOpacityEnabled(true)
node_sure_password:setPosition(-252.8000, -37.4634)
layout = ccui.LayoutComponent:bindLayoutComponent(node_sure_password)
layout:setLeftMargin(-252.8000)
layout:setRightMargin(252.8000)
layout:setTopMargin(37.4634)
layout:setBottomMargin(-37.4634)
panel:addChild(node_sure_password)

--Create spr_word
local spr_word = cc.Sprite:create("playerinfo/pinf_pic_qrmm.png")
spr_word:setName("spr_word")
spr_word:setTag(716)
spr_word:setCascadeColorEnabled(true)
spr_word:setCascadeOpacityEnabled(true)
spr_word:setAnchorPoint(0.0000, 0.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_word)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 114.0000, height = 28.0000})
layout:setRightMargin(-114.0000)
layout:setTopMargin(-14.0000)
layout:setBottomMargin(-14.0000)
spr_word:setBlendFunc({src = 1, dst = 771})
node_sure_password:addChild(spr_word)

--Create image_bg
local image_bg = ccui.ImageView:create()
image_bg:ignoreContentAdaptWithSize(false)
image_bg:loadTexture("common/layerbg/com_pic_insert_bg.png",0)
image_bg:setScale9Enabled(true)
image_bg:setCapInsets({x = 18, y = 19, width = 6, height = 3})
image_bg:setLayoutComponentEnabled(true)
image_bg:setName("image_bg")
image_bg:setTag(717)
image_bg:setCascadeColorEnabled(true)
image_bg:setCascadeOpacityEnabled(true)
image_bg:setPosition(328.6483, 0.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(image_bg)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 352.0000, height = 42.0000})
layout:setLeftMargin(152.6483)
layout:setRightMargin(-504.6483)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
node_sure_password:addChild(image_bg)

--Create tf_sure
local tf_sure = ccui.TextField:create()
tf_sure:ignoreContentAdaptWithSize(false)
tolua.cast(tf_sure:getVirtualRenderer(), "cc.Label"):setLineBreakWithoutSpace(true)
tf_sure:setFontSize(28)
tf_sure:setPlaceHolder("account")
tf_sure:setString([[]])
tf_sure:setMaxLength(10)
tf_sure:setLayoutComponentEnabled(true)
tf_sure:setName("tf_sure")
tf_sure:setTag(718)
tf_sure:setCascadeColorEnabled(true)
tf_sure:setCascadeOpacityEnabled(true)
tf_sure:setAnchorPoint(0.0000, 0.5325)
tf_sure:setPosition(161.4313, 0.0000)
tf_sure:setColor({r = 26, g = 26, b = 26})
layout = ccui.LayoutComponent:bindLayoutComponent(tf_sure)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 342.0000, height = 42.0000})
layout:setLeftMargin(161.4313)
layout:setRightMargin(-503.4313)
layout:setTopMargin(-19.6350)
layout:setBottomMargin(-22.3650)
node_sure_password:addChild(tf_sure)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Node
return result;
end

return Result

