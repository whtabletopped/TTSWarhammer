--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    --[[ print('onLoad!') --]]
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
    --[[ print('onUpdate loop!') --]]
end


function showGlobalUI(params)
    local player_color = params.player_color

    local ui_xml = [[
        <Panel id="viewportPanel" 
               width="100%" height="200" 
               color="#FFFFFF" 
               rectAlignment="LowerCenter" 
               offsetXY="0 0"
               borderColor="#FFFFFF" 
               borderThickness="5"
               allowDragging="false">
            <HorizontalLayout spacing="20" childAlignment="LowerLeft">
                <VerticalLayout spacing="5" childAlignment="UpperCenter">
                    <Text id="text1" text="Text Block 1" fontSize="18" color="#000000" alignment="UpperCenter"/>
                    <Text id="text2" text="Text Block 2" fontSize="18" color="#000000" alignment="UpperCenter"/>
                    <Text id="text3" text="Text Block 3" fontSize="18" color="#000000" alignment="UpperCenter"/>
                </VerticalLayout>
                <Panel width="340" height="180" color="#F0F0F0" padding="10 10 10 10" rectAlignment="MiddleRight">
                    <HorizontalLayout spacing="10" childAlignment="MiddleRight">
                        <Button id="btn_bolter" width="75" height="160" colors="#E0E0E0|#D0D0D0|#C0C0C0|#B0B0B0" padding="10" rectAlignment="MiddleRight" onClick="onWeaponCardClick">
                            <VerticalLayout spacing="2" childAlignment="UpperCenter">
                                <Text text="Bolter" fontSize="16" color="#222222" alignment="MiddleCenter"/>
                                <Text text="A: 2" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="BS: 3+" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="D: 1" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                            </VerticalLayout>
                        </Button>
                        <Button id="btn_plasma" width="75" height="160" colors="#E0E0E0|#D0D0D0|#C0C0C0|#B0B0B0" padding="10" rectAlignment="MiddleRight" onClick="onWeaponCardClick">
                            <VerticalLayout spacing="2" childAlignment="UpperCenter">
                                <Text text="Plasma" fontSize="16" color="#222222" alignment="MiddleCenter"/>
                                <Text text="A: 1" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="BS: 4+" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="D: 2" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                            </VerticalLayout>
                        </Button>
                        <Button id="btn_melta" width="75" height="160" colors="#E0E0E0|#D0D0D0|#C0C0C0|#B0B0B0" padding="10" rectAlignment="MiddleRight" onClick="onWeaponCardClick">
                            <VerticalLayout spacing="2" childAlignment="UpperCenter">
                                <Text text="Melta" fontSize="16" color="#222222" alignment="MiddleCenter"/>
                                <Text text="A: 1" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="BS: 4+" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="D: 6" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                            </VerticalLayout>
                        </Button>
                        <Button id="btn_flamer" width="75" height="160" colors="#E0E0E0|#D0D0D0|#C0C0C0|#B0B0B0" padding="10" rectAlignment="MiddleRight" onClick="onWeaponCardClick">
                            <VerticalLayout spacing="2" childAlignment="UpperCenter">
                                <Text text="Flamer" fontSize="16" color="#222222" alignment="MiddleCenter"/>
                                <Text text="A: D6" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="BS: Auto" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                                <Text text="D: 1" fontSize="14" color="#333333" alignment="MiddleLeft"/>
                            </VerticalLayout>
                        </Button>
                    </HorizontalLayout>
                </Panel>
            </HorizontalLayout>
        </Panel>
    ]]

    -- Show UI only to that player:
    UI.setXml(ui_xml)
    UI.show(player_color)

end

function onWeaponCardClick(player, value, id)
    print("Weapon card clicked: " .. tostring(id) .. " by " .. tostring(player))
end