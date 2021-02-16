sub Init()
    m.top.backgroundColor = "0x191716"
    m.top.backgroundUri= ''
    m.loadingIndicator = m.top.FindNode("loadingIndicator")
    InitScreenStack()
    ShowGridScreen()
    RunContentTask()
end sub