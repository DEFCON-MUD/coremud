GUI = GUI or {}
local w,h = getMainWindowSize()

setBorderBottom(h/8)
GUI.BackgroundCSS = CSSMan.new([[
  background-color: rgb(20,0,20);
]])


GUI.Bottom = Geyser.Label:new({
  name = "GUI.Bottom",
  x = "25%", y = "90%",
  width = "50%",
  height = "10%",
})
GUI.Bottom:setStyleSheet(GUI.BackgroundCSS:getCSS())
GUI.Footer = Geyser.HBox:new({
    name = "GUI.Footer",
    x = 0, y = 0,
    width = "100%",
    height = "100%",
  },GUI.Bottom)
  
  GUI.LeftColumn = Geyser.VBox:new({
    name = "GUI.LeftColumn",
  },GUI.Footer)
  
  GUI.RightColumn = Geyser.VBox:new({
    name = "GUI.RightColumn",
  },GUI.Footer)
  
  GUI.GaugeBackCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])
  
  GUI.GaugeFrontCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])
  
  GUI.Health = Geyser.Gauge:new({
    name = "GUI.Health",
  },GUI.LeftColumn)
  GUI.Health.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","red")
  GUI.Health.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Health:setValue(math.random(100),100)
  GUI.Health.front:echo("Health")
  
  GUI.SP = Geyser.Gauge:new({
    name = "GUI.SP",
  },GUI.LeftColumn)
  GUI.SP.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","blue")
  GUI.SP.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.SP:setValue(math.random(100),100)
  GUI.SP.front:echo("Stamina")
  
  GUI.Experience = Geyser.Gauge:new({
    name = "GUI.Experience",
  },GUI.RightColumn)
  GUI.Experience.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","yellow")
  GUI.Experience.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Experience:setValue(math.random(100),100)
  --GUI.Experience.front:echo("Experience")
  GUI.Experience.front:echo([[<span style = "color: black">Experience</span>]])
  
  GUI.Something = Geyser.Gauge:new({
    name = "GUI.Something",
  },GUI.RightColumn)
  GUI.Something.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","purple")
  GUI.Something.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Something:setValue(math.random(100),100)
  GUI.Something.front:echo("Limb Health")
  GUI.BoxCSS = CSSMan.new([[
    background-color: rgba(0,0,0,100);
    border-style: solid;
    border-width: 1px;
    border-radius: 10px;
    border-color: white;
    margin: 10px;
  ]])
  