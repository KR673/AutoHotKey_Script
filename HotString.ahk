﻿; ----------------------------
; 热字符串
; ----------------------------

:*:13p::13838530526
:*:jpw::123456
:*:vq::张崎_13989{tab}123456{tab}123456
::ru::http://localhost:8003/#/home {Enter}
::crm::http://localhost:8001/#/home {Enter}

::xy::这个问题请您联系学员服务
::hc::清空浏览器缓存试一下 ctrl {+} shift {+} delete ; 大括号可以提示autohotkey发送原始字符
::xz::您可以联系您部门的行政处理
::ilv::好的, 已经给您联系技术处理了, 请您稍等
::dq::单Q
::jt::您把页面截个全图吧, 我看一下
::rdl::您重新登陆一下试试
::zil::好的, 已经在处理呢, 您稍等

; ----------------------------
; 常用sql
; ----------------------------
::hsql::
; 示例: 要求选项与参数的简单输入框:
Gui, New
;Gui, Add, Edit, vsqlSelect ym ; ym 选项开始一个新的控件列。
Gui, color, 000000, 000000
Gui, Add, Text, x12 y19 w50 h20 Cwhite, SQL: 
Gui, Add, Text, x12 y49 w50 h20 Cwhite, PARAM:
Gui, Add, Edit, x62 y19 w130 h20 Cwhite vsqlSelect ;放在第一位可以默认有一个光标, v[参数名]可以声明一个变量
Gui, Add, Edit, x62 y49 w130 h20 Cwhite vparam
Gui, Add, Button, x192 y19 w50 h50 default, OK ;ButtonOK（如果存在）会在此按钮被按下时运行。 default会默认选中按钮
Gui, Show, x493 y410 h151 w257, SQLSELECT
WinSet, Transparent, 200 ,SQLSELECT ;设置窗口SQLSELECT 的透明度
;Gui, Add, Progress, x170 y1030 w30 h0 , 25
Gui, Font, S8 Cwhite, Verdana
Gui, Font, S8 Cwhite, Verdana
Gui, Font, S8 Cwhite, Verdana
Gui, Add, ListBox, x12 y79 w230 h70 Cwhite, 1. Common 2. UserYuanGong 3. Crm_JiHui
Return ;自动运行段结束。在用户进行操作前脚本会一直保持空闲状态.

GuiClose:
ButtonOK:
Gui, Submit  ; 保存用户的输入到每个控件的关联变量中.
If sqlSelect = 1
    {
        send select * from CommonDict where TypeIndex in (select TableId from CommonDict where TypeName like '`%%param%`%')
    }
If sqlSelect = 2
    {
        send select * from UserYuanGong where DengLuZhangHao like '`%%param%`%' or xingming like '`%%param%`%' or userGroupId = %param%
    }
If sqlSelect = 3
    {
        send select * from Crm_JiHui where mobile = '%param%'
    }
Return


