local FriendRoomManage = class("FriendRoomManage", nil)

function FriendRoomManage:sendJMsg( name, data )
    if FishGI.hallScene == nil then
        print("-----FishGI.hallScene == nil-----")
    elseif FishGI.hallScene.net == nil then
        print("-----FishGI.hallScene.net == nil-----")
    elseif FishGI.hallScene.net.roommanager == nil then
        print("-----FishGI.hallScene.net.roommanager == nil-----")
    else
        FishGI.hallScene.net.roommanager:sendJMsg( name, data )
    end
    
end

--====================================接收消息====================================================--

function FriendRoomManage:OnJMsg(typeName,data )

    if typeName == "MSGS2CGetFriendStatus" then
        self:OnGetFriendStatus(data);
    elseif typeName == "MSGS2CCreateFriendRoom" then
        self:OnCreateFriendRoom(data);
    elseif typeName == "MSGS2CFriendServerReady" then
        self:OnFriendServerReady(data);
    elseif typeName == "MSGS2CJoinFriendRoom" then  --加入朋友场
        self:OnJoinFriendRoom(data);
    elseif typeName == "MSGS2CGetFriendHistory" then  --获取朋友场历史列表
        self:OnGetFriendHistory(data);
    elseif typeName == "MSGS2CGetFriendDetail" then  --获取朋友场详细信息
        self:OnGetFriendDetail(data);
    elseif typeName == "MSGS2CFriendRefreshRunningList" then  --获取正在进行的代开列表
        self:OnFriendRefreshRunningList(data);
    elseif typeName == "MSGS2CFriendRefreshHelpOpenList" then  --获取正在进行的代开列表
        self:OnFriendRefreshHelpOpenList(data);
    elseif typeName == "MSGS2CFriendRunningStart" then  --代开房间开始游戏
        self:OnFriendRunningStart(data);
    elseif typeName == "MSGS2CFriendPlayerStateChange" then  --玩家状态改变
        self:OnFriendPlayerStateChange(data);
    elseif typeName == "MSGS2CFriendDissolveRoom" then  --确认是否解散
        self:OnFriendDissolveRoom(data);
    end

end

--确认是否解散
function FriendRoomManage:OnFriendDissolveRoom(data)
    print("------OnFriendDissolveRoom-----")
    FishGF.waitNetManager(false,nil,"FriendDissolveRoom")
    local event = cc.EventCustom:new("FriendDissolveRoom")
    event._userdata = data
    cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
end

--玩家状态改变
function FriendRoomManage:OnFriendPlayerStateChange(data)
    print("------OnFriendPlayerStateChange-----")
    local event = cc.EventCustom:new("FriendPlayerStateChange")
    event._userdata = data
    cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
end

--代开房间游戏开始
function FriendRoomManage:OnFriendRunningStart(data)
    print("------OnFriendRunningStart-----")
    local event = cc.EventCustom:new("FriendRunningStart")
    event._userdata = data
    cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
end

--获取正在进行的代开列表
function FriendRoomManage:OnFriendRefreshHelpOpenList(data)
    print("------OnFriendRefreshHelpOpenList-----")
    FishGF.waitNetManager(false,nil,"FriendRefreshHelpOpenList")
    local event = cc.EventCustom:new("FriendRefreshHelpOpenList")
    event._userdata = data
    cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
end

--获取正在进行的代开列表
function FriendRoomManage:OnFriendRefreshRunningList(data)
    print("------OnFriendRefreshRunningList-----")
    FishGF.waitNetManager(false,nil,"FriendRefreshRunningList")
    local event = cc.EventCustom:new("FriendRefreshRunningList")
    event._userdata = data
    cc.Director:getInstance():getEventDispatcher():dispatchEvent(event)
end

--获取朋友场详细信息
function FriendRoomManage:OnGetFriendDetail(data)
    print("------OnGetFriendDetail-----")
    FishGF.waitNetManager(false,nil,"MSGC2SGetFriendDetail")
    if data.success then
        FishGI.hallScene.uiRecordBody:setBodyData(data)
        FishGI.hallScene.uiRecordBody:showLayer()
    else
        FishGF.showToast(FishGF.getChByIndex(800000303))
    end

end

--获取朋友场历史列表
function FriendRoomManage:OnGetFriendHistory(data)
    print("------OnGetFriendHistory-----")
    FishGF.waitNetManager(false,nil,"MSGC2SGetFriendHistory")
    FishGI.hallScene.uiRecord:setUnreadRecordData( data )
    FishGI.hallScene.uiRecord:loadRecord()
    --FishGI.hallScene.uiRecord:showLayer()
end

--获取朋友场状态
function FriendRoomManage:OnGetFriendStatus(data)
    print("------OnGetFriendStatus-----")
    FishGF.waitNetManager(false,nil,"MSGC2SGetFriendStatus")
    data.msgType = FishCD.ViewMessageType.HALL_GET_FRIENDSTATUS;
    FishGI.hallScene:receiveNetData(data);
end

--创建朋友场
function FriendRoomManage:OnCreateFriendRoom(data)
    print("------OnCreateFriendRoom-----")
    FishGF.waitNetManager(false,nil,"MSGC2SCreateFriendRoom")
    data.msgType = FishCD.ViewMessageType.HALL_CREATE_FRIENDSTATUS;
    FishGI.hallScene:receiveNetData(data);   
end

--朋友场服务器就绪
function FriendRoomManage:OnFriendServerReady(data)
    print("--------------------11111111111111111---OnFriendServerReady-----")
    FishGF.waitNetManager(false,nil,"ChangeServery")
    FishGI.isExitRoom = false
    data.msgType = FishCD.ViewMessageType.HALL_CREATE_FRIEND_READY;
    FishGI.hallScene:receiveNetData(data);
end

--加入朋友场
function FriendRoomManage:OnJoinFriendRoom(data)
    print("--------------------11111111111111111---OnJoinFriendRoom-----")
    FishGF.waitNetManager(false,nil,"MSGC2SJoinFriendRoom")
    data.msgType = FishCD.ViewMessageType.HALL_JOIN_FRIEND_ROOM;
    FishGI.hallScene:receiveNetData(data);
end



--====================================发送消息====================================================--

--发送获取朋友场状态
function FriendRoomManage:sendGetFriendStatus()
    FishGF.waitNetManager(true,nil,"MSGC2SGetFriendStatus")
    self:sendJMsg("MSGC2SGetFriendStatus", {})
end

--创建朋友场
function FriendRoomManage:sendCreateFriendRoom(propType,countType,timeType,agent,roomCardType)
    FishGF.waitNetManager(true,nil,"MSGC2SCreateFriendRoom")
    local data = {
        roomPropType = propType,
        roomPeopleCountType = countType,
        roomDurationType = timeType,
        roomCardType = roomCardType,
        agent = agent,

        appId= APP_ID,
        appKey = APP_KEY,
        channelId = CHANNEL_ID,
        version = table.concat(HALL_APP_VERSION,"."),
        areaCode = REGION_CODE,
        token = FishGI.hallScene.net:getSession(),
    }
    print("--------send-------------MSGC2SCreateFriendRoom----------------")
    dump(data)
    self:sendJMsg("MSGC2SCreateFriendRoom", data)

end

--加入朋友场
function FriendRoomManage:sendJoinFriendRoom(friendRoomNo,friendGameId)
    if FishGI.friendCount == nil then
        FishGI.friendCount = 0
    end
    FishGI.friendCount = FishGI.friendCount +1
    FishGF.print("-----------------------------------------------------------------------------------")
    FishGF.print("-----------------------------------------------------------------------------------")
    FishGF.print("-----------------------------friendCount ="..FishGI.friendCount.." ----------------------------------")
    FishGF.print("-----------------------------------------------------------------------------------")
    FishGF.print("-----------------------------------------------------------------------------------")
    FishGI.curGameRoomID = 4
    --FishGF.waitNetManager(true,nil,"MSGC2SJoinFriendRoom")
    local data = {
        friendRoomNo = friendRoomNo,
        friendGameId = friendGameId,
        appId = APP_ID
    }
    self:sendJMsg("MSGC2SJoinFriendRoom",data)
    --self:sendJMsg("MSGC2SJoinFriendRoom",data)
end

--获取朋友场历史列表
function FriendRoomManage:sendGetFriendHistory()
    FishGF.waitNetManager(true,nil,"MSGC2SGetFriendHistory")
    self:sendJMsg("MSGC2SGetFriendHistory", {})
end

--获取朋友场详细信息
function FriendRoomManage:sendGetFriendDetail(friendGameId)
    FishGF.waitNetManager(true,nil,"MSGC2SGetFriendDetail")
    local data = {
        friendGameId = friendGameId,
    }
    self:sendJMsg("MSGC2SGetFriendDetail", data)
end

--离开朋友场游戏
function FriendRoomManage:sendFriendLeaveGame(friendGameId)
    local data = {
        friendGameId = friendGameId,
    }
    self:sendJMsg("MSGC2SFriendLeaveGame", data)
end

--将某一场标记为已读
function FriendRoomManage:sendFriendMarkAsRead(friendGameId)
    local data = {
        friendGameId = friendGameId,
    }
    self:sendJMsg("MSGC2SFriendMarkAsRead", data)
end

--申请刷新正在进行的代开列表
function FriendRoomManage:sendFriendRefreshRunningList()
    FishGF.waitNetManager(true,nil,"FriendRefreshRunningList")
    self:sendJMsg("MSGC2SFriendRefreshRunningList", {})
end

--申请刷新历史代开列表
function FriendRoomManage:sendFriendRefreshHelpOpenList()
    FishGF.waitNetManager(true,nil,"FriendRefreshHelpOpenList")
    self:sendJMsg("MSGC2SFriendRefreshHelpOpenList", {})
end

--申请添加监听代开房间的消息
function FriendRoomManage:sendStartMonitorRunningList()
    print("-----------sendStartMonitorRunningList--------------")
    self:sendJMsg("MSGC2SFriendStartMonitorRunningList", {})
end

--申请取消监听代开房间的消息
function FriendRoomManage:sendCancelMonitorRunningList()
    print("-----------sendCancelMonitorRunningList--------------")
    self:sendJMsg("MSGC2SFriendCancelMonitorRunningList", {})
end

--申请解散房间
function FriendRoomManage:sendFriendDissolveRoom(friendGameId)
    print("-----------sendFriendDissolveRoom--------------"..friendGameId)
    FishGF.waitNetManager(true,nil,"FriendDissolveRoom")
    local data = {
        friendGameId = friendGameId,
    }
    self:sendJMsg("MSGC2SFriendDissolveRoom", data)
end

return FriendRoomManage;

--endregion