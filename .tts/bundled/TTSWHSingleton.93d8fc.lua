function showAttackUI(params)
    local ui_xml = [[
        <Panel id="viewportPanel" 
               width="200" height="100" 
               color="#FFFFFF" 
               rectAlignment="UpperCenter" 
               position="0 -50" 
               borderColor="#FFFFFF" 
               borderThickness="5"
               allowDragging="true">
        </Panel>
    ]]
    self.UI.setXml(ui_xml)
    self.UI.show("White") -- Show the UI for the White player
end