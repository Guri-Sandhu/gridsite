sub InitScreenStack()
    m.screenstack = []
end sub

sub ShowScreen(node as Object)
    prev = m.screenStack.Peek()
    if prev <> invalid
        prev.visible = false
    end if

    m.top.AppendChild(node)
    node.visible = true
    node.SetFocus(true)
    m.ScreenStack.Push(node)
end sub

sub CloseScreen(node as Object)
    if node = invalid OR (m.ScreenStack.Peek() <> invalid AND m.screenStack.Peek().IsSameNode(node))
        last = m.screenStack.Pop()
        last.visible = false
        m.top.RemoveChild(node)

        prev = m.screenStack.Peek()
        if prev <> invalid
            prev.visible = true
            prev.SetFocus(true)
        end if

    end if
end sub


