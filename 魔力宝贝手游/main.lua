-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")

app_bid = {}
app_bid.mlbb = "com.tencent.mlbb"
screen.init(1)


ml={}
ml.游戏主界面ok={{{1110,142,0x453934},{1098,134,0xf0ebde},}, 85}
	ml.游戏主界面ok_没有对话框={{{954,140,0x834428},}, 85}
	ml.游戏主界面ok_使用={{{1024,471,0xf8e8d8},{1023,471,0x27180a},{1017,476,0x6a5440},}, 85, 996, 462, 1081, 488}	
	ml.游戏主界面ok_主线任务={{{939, 187, 0xb1e35a},}, 85}

ml.自动战斗界面={{{1075,563,0xaa3a2b},{1087,571,0x923024},}, 85}
ml.自动战斗界面_按钮={{{1072,564,0x896254},{1083,563,0x58433a},}, 85}




function game()
	local TimeLine = os.time()
	local UserTime = 60 * (n or 10)
	
	while os.time()-TimeLine < UserTime do
		if active(app_bid.mlbb,5)then
			if d(ml.游戏主界面ok,"ml.游戏主界面ok")then
				if not(d(ml.游戏主界面ok_没有对话框,"游戏主界面ok_没有对话框"))then
					click(1096,586)
				elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then
				elseif d(ml.游戏主界面ok_主线任务,"ml.游戏主界面ok_主线任务",true,1)then
					delay(3)
				end
			elseif d(ml.自动战斗界面,"ml.自动战斗界面")then
				log("正在战斗中")
				delay(3)
			elseif d(ml.自动战斗界面_按钮,"ml.自动战斗界面_按钮",true,1)then
				
				
			else
				if tips()then
				else
				click(1096,586)			--all other UI
				end
			end
		end
		delay(math.random(20,200)/1000)
	end
end


ml.tips={}
ml.tips_宠物卡片确定={{{683,561,0x9d571b},{683,560,0x5a4232},}, 85}
ml.tips_完成就职={{{929,560,0xf9f2bc},{931,560,0x283308},}, 85}
ml.tips_就职确定={{{636, 492, 0x262e10},{637, 492, 0x7a7b65},}, 85}
ml.tips_获得伙伴确定={{{732, 556, 0x713e16},{734, 557, 0xf7ecdf},}, 85}

function tips()
	
	while true do
		if active(app_bid.mlbb,5)then
			if d(ml.tips_宠物卡片确定,"ml.tips_宠物卡片确定",true,1)then
			elseif d(ml.tips_完成就职,"ml.tips_完成就职",true,1)then
			elseif d(ml.tips_就职确定,"ml.tips_就职确定",true,1)then
			elseif d(ml.tips_获得伙伴确定,"ml.tips_获得伙伴确定",true,1)then
			end	
		end
	end
end


game()



















