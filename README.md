[toc]

# AutoHotKeyScript

autoHotKey脚本

## 热键&热字符串

### 热键

* 方式一: `^A::` 
  * ctrl + a 
* 方式二: `A & B::`
  * 同时按下ab时起作用, **只能连续两个**, 如果想要一个修饰符, 可以使用`#IF, GetKeyState("")`

### 热字符串

* 方式一 : `::[短语]::[字符串]`
    > 短语末尾加上终止符上屏  `-()[]{}':;"/\,.?!`n `t`（注意 `n 是回车，`t 是 Tab，且在它们之间还有一个原义的空格）
* 方式二 : `:*:[短语]::[字符串]`   
    > 不需要终止符, 打上短语时上屏 

热字符串中也可以使用按键, 需要加上`{}`

**#Hotstring** :  改变热字串选项或终止符。

## 循环

### 1. for

只能作用于对象

### 2. loop

### 3. switch

## GUI

> 可以使用smartGui快速布局
`Gui,2: Add, ...` 其他类比, 可是使用这种形式为窗口加上编号, 这样就可以使用`2GuiClose`这种形式关闭指定窗口, 避免报错

## **注意:**
1. 字符串拼接直接连续写上就可以了, 不用使用`+` 