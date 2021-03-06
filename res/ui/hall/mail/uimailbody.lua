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
panel:setBackGroundColorOpacity(0)
panel:setTouchEnabled(true);
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(658)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
Node:addChild(panel)

--Create image_bg
local image_bg = ccui.ImageView:create()
image_bg:ignoreContentAdaptWithSize(false)
image_bg:loadTexture("common/layerbg/com_bg_pic_3.png",0)
image_bg:setScale9Enabled(true)
image_bg:setCapInsets({x = 145, y = 92, width = 1, height = 1})
image_bg:setLayoutComponentEnabled(true)
image_bg:setName("image_bg")
image_bg:setTag(659)
image_bg:setCascadeColorEnabled(true)
image_bg:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(image_bg)
layout:setSize({width = 1028.0000, height = 568.0000})
layout:setLeftMargin(-514.0000)
layout:setRightMargin(-514.0000)
layout:setTopMargin(-284.0000)
layout:setBottomMargin(-284.0000)
panel:addChild(image_bg)

--Create img_bg_2
local img_bg_2 = ccui.ImageView:create()
img_bg_2:ignoreContentAdaptWithSize(false)
img_bg_2:loadTexture("common/layerbg/com_bg_pic_bsbg.png",0)
img_bg_2:setScale9Enabled(true)
img_bg_2:setCapInsets({x = 37, y = 36, width = 1, height = 1})
img_bg_2:setLayoutComponentEnabled(true)
img_bg_2:setName("img_bg_2")
img_bg_2:setTag(164)
img_bg_2:setCascadeColorEnabled(true)
img_bg_2:setCascadeOpacityEnabled(true)
img_bg_2:setPosition(514.0000, 257.3598)
layout = ccui.LayoutComponent:bindLayoutComponent(img_bg_2)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.4531)
layout:setPercentWidth(0.9669)
layout:setPercentHeight(0.8486)
layout:setSize({width = 994.0000, height = 482.0000})
layout:setLeftMargin(17.0000)
layout:setRightMargin(17.0000)
layout:setTopMargin(69.6402)
layout:setBottomMargin(16.3598)
image_bg:addChild(img_bg_2)

--Create img_line
local img_line = ccui.ImageView:create()
img_line:ignoreContentAdaptWithSize(false)
img_line:loadTexture("common/com_pic_line_1.png",0)
img_line:setScale9Enabled(true)
img_line:setCapInsets({x = 2, y = 2, width = 1, height = 1})
img_line:setLayoutComponentEnabled(true)
img_line:setName("img_line")
img_line:setTag(346)
img_line:setCascadeColorEnabled(true)
img_line:setCascadeOpacityEnabled(true)
img_line:setPosition(0.0000, 148.6402)
layout = ccui.LayoutComponent:bindLayoutComponent(img_line)
layout:setPositionPercentXEnabled(true)
layout:setSize({width = 940.0000, height = 4.0000})
layout:setLeftMargin(-470.0000)
layout:setRightMargin(-470.0000)
layout:setTopMargin(-150.6402)
layout:setBottomMargin(146.6402)
panel:addChild(img_line)

--Create spr_title
local spr_title = cc.Sprite:create("hall/mail/mail_pic_words_nw.png")
spr_title:setName("spr_title")
spr_title:setTag(660)
spr_title:setCascadeColorEnabled(true)
spr_title:setCascadeOpacityEnabled(true)
spr_title:setPosition(0.0000, 241.3661)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_title)
layout:setPositionPercentXEnabled(true)
layout:setSize({width = 86.0000, height = 40.0000})
layout:setLeftMargin(-43.0000)
layout:setRightMargin(-43.0000)
layout:setTopMargin(-261.3661)
layout:setBottomMargin(221.3661)
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
btn_close:setPosition(482.2264, 249.5544)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_close)
layout:setSize({width = 70.0000, height = 70.0000})
layout:setLeftMargin(447.2264)
layout:setRightMargin(-517.2264)
layout:setTopMargin(-284.5544)
layout:setBottomMargin(214.5544)
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
btn_sure:setPosition(-1.0325, -210.3217)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_sure)
layout:setSize({width = 225.0000, height = 82.0000})
layout:setLeftMargin(-113.5325)
layout:setRightMargin(-111.4675)
layout:setTopMargin(169.3217)
layout:setBottomMargin(-251.3217)
panel:addChild(btn_sure)

--Create spr_gb
local spr_gb = cc.Sprite:create("hall/mail/mail_pic_words_gb.png")
spr_gb:setName("spr_gb")
spr_gb:setTag(673)
spr_gb:setCascadeColorEnabled(true)
spr_gb:setCascadeOpacityEnabled(true)
spr_gb:setPosition(112.0000, 46.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_gb)
layout:setPositionPercentX(0.4978)
layout:setPositionPercentY(0.5610)
layout:setPercentWidth(0.3911)
layout:setPercentHeight(0.5366)
layout:setSize({width = 88.0000, height = 44.0000})
layout:setLeftMargin(68.0000)
layout:setRightMargin(69.0000)
layout:setTopMargin(14.0000)
layout:setBottomMargin(24.0000)
spr_gb:setBlendFunc({src = 1, dst = 771})
btn_sure:addChild(spr_gb)

--Create spr_lq
local spr_lq = cc.Sprite:create("hall/mail/mail_pic_words_lq.png")
spr_lq:setName("spr_lq")
spr_lq:setTag(166)
spr_lq:setCascadeColorEnabled(true)
spr_lq:setCascadeOpacityEnabled(true)
spr_lq:setPosition(112.0000, 46.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(spr_lq)
layout:setPositionPercentX(0.4978)
layout:setPositionPercentY(0.5610)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.5366)
layout:setSize({width = 90.0000, height = 44.0000})
layout:setLeftMargin(67.0000)
layout:setRightMargin(68.0000)
layout:setTopMargin(14.0000)
layout:setBottomMargin(24.0000)
spr_lq:setBlendFunc({src = 1, dst = 771})
btn_sure:addChild(spr_lq)

--Create text_title
local text_title = ccui.Text:create()
text_title:ignoreContentAdaptWithSize(true)
text_title:setTextAreaSize({width = 0, height = 0})
text_title:setFontSize(24)
text_title:setString([[大傻瓜傻瓜大傻瓜傻瓜大傻瓜傻瓜]])
text_title:setLayoutComponentEnabled(true)
text_title:setName("text_title")
text_title:setTag(301)
text_title:setCascadeColorEnabled(true)
text_title:setCascadeOpacityEnabled(true)
text_title:setAnchorPoint(0.0000, 0.5000)
text_title:setPosition(-249.0182, 175.0000)
text_title:setTextColor({r = 93, g = 18, b = 235})
layout = ccui.LayoutComponent:bindLayoutComponent(text_title)
layout:setSize({width = 360.0000, height = 24.0000})
layout:setLeftMargin(-249.0182)
layout:setRightMargin(-110.9818)
layout:setTopMargin(-187.0000)
layout:setBottomMargin(163.0000)
panel:addChild(text_title)

--Create text_time
local text_time = ccui.Text:create()
text_time:ignoreContentAdaptWithSize(true)
text_time:setTextAreaSize({width = 0, height = 0})
text_time:setFontSize(24)
text_time:setString([[2017/03/01 12:12:12]])
text_time:setLayoutComponentEnabled(true)
text_time:setName("text_time")
text_time:setTag(300)
text_time:setCascadeColorEnabled(true)
text_time:setCascadeOpacityEnabled(true)
text_time:setAnchorPoint(0.0000, 0.5000)
text_time:setPosition(-468.1085, 175.0000)
text_time:setTextColor({r = 30, g = 79, b = 155})
layout = ccui.LayoutComponent:bindLayoutComponent(text_time)
layout:setSize({width = 228.0000, height = 24.0000})
layout:setLeftMargin(-468.1085)
layout:setRightMargin(240.1085)
layout:setTopMargin(-187.0000)
layout:setBottomMargin(163.0000)
panel:addChild(text_time)

--Create text_sender
local text_sender = ccui.Text:create()
text_sender:ignoreContentAdaptWithSize(true)
text_sender:setTextAreaSize({width = 0, height = 0})
text_sender:setFontSize(24)
text_sender:setString([[发送人发送人发送人发送人发送人]])
text_sender:setLayoutComponentEnabled(true)
text_sender:setName("text_sender")
text_sender:setTag(302)
text_sender:setCascadeColorEnabled(true)
text_sender:setCascadeOpacityEnabled(true)
text_sender:setAnchorPoint(0.0000, 0.5000)
text_sender:setPosition(117.9726, 175.0000)
text_sender:setTextColor({r = 101, g = 113, b = 135})
layout = ccui.LayoutComponent:bindLayoutComponent(text_sender)
layout:setSize({width = 360.0000, height = 24.0000})
layout:setLeftMargin(117.9726)
layout:setRightMargin(-477.9726)
layout:setTopMargin(-187.0000)
layout:setBottomMargin(163.0000)
panel:addChild(text_sender)

--Create text_body
local text_body = ccui.Text:create()
text_body:ignoreContentAdaptWithSize(false)
text_body:setFontSize(24)
text_body:setString([[当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩当玩家有当玩家有当玩]])
text_body:setLayoutComponentEnabled(true)
text_body:setName("text_body")
text_body:setTag(303)
text_body:setCascadeColorEnabled(true)
text_body:setCascadeOpacityEnabled(true)
text_body:setAnchorPoint(0.0000, 1.0000)
text_body:setPosition(-469.3410, 131.5116)
text_body:setTextColor({r = 77, g = 77, b = 77})
layout = ccui.LayoutComponent:bindLayoutComponent(text_body)
layout:setSize({width = 938.0000, height = 300.0000})
layout:setLeftMargin(-469.3410)
layout:setRightMargin(-468.6590)
layout:setTopMargin(-131.5116)
layout:setBottomMargin(-168.4884)
panel:addChild(text_body)

--Create scroll_props
local scroll_props = ccui.ScrollView:create()
scroll_props:setDirection(2)
scroll_props:setInnerContainerSize({width = 992, height = 140})
scroll_props:ignoreContentAdaptWithSize(false)
scroll_props:setClippingEnabled(false)
scroll_props:setBackGroundColorType(1)
scroll_props:setBackGroundColor({r = 255, g = 150, b = 100})
scroll_props:setBackGroundColorOpacity(0)
scroll_props:setLayoutComponentEnabled(true)
scroll_props:setName("scroll_props")
scroll_props:setTag(304)
scroll_props:setCascadeColorEnabled(true)
scroll_props:setCascadeOpacityEnabled(true)
scroll_props:setAnchorPoint(0.5000, 0.5000)
scroll_props:setPosition(0.0000, -80.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(scroll_props)
layout:setSize({width = 992.0000, height = 140.0000})
layout:setLeftMargin(-496.0000)
layout:setRightMargin(-496.0000)
layout:setTopMargin(10.0000)
layout:setBottomMargin(-150.0000)
panel:addChild(scroll_props)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Node
return result;
end

return Result

