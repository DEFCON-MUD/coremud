function update_gmcp()
  GUI.Health:setValue(gmcp.Char.Vitals.hp,gmcp.Char.Vitals.maxhp)
  GUI.SP:setValue(gmcp.Char.Vitals.sp,gmcp.Char.Vitals.maxsp)
  GUI.Something:setValue(gmcp.Char.Vitals.limb_health,100)
end