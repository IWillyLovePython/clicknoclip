local mouse = game:GetService("Players").LocalPlayer:GetMouse()

mouse.Button1Down:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
        return 
    end
    if not Mouse.Target then
        return
    end
    
    if Mouse.Target.Transparency == 0 then
        Mouse.Target.Transparency = 1
        Mouse.Target.CanCollide = false
    elseif Mouse.Target.Transparency == 1 then
        Mouse.Target.Transparency = 0
        Mouse.Target.CanCollide = true
    end
end)
