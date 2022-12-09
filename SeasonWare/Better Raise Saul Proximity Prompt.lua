local FoodBowl = game:GetService("Workspace").Bowls.Food


table.foreach(FoodBowl:GetChildren(), function(i,v)
    local Item = v;

    if Item:FindFirstChild("Prompt") then
        Item = Item.Prompt

        if Item:FindFirstChild("Prompt") then
            
        end
    end
end)