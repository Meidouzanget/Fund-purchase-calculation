Sub LADDER()

Range("Q3:R6").Interior.Color = xlNone
Range("Q10:R15").Interior.Color = &H7280FA

Dim i

For i = 2 to 13

    If Range("E"&cstr(i)) >= 0 Then
        Range("F"&cstr(i)) = (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    ElseIf 0 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= -10 Then
        Range("F"&cstr(i)) = (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    ElseIf -10 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= -20 Then
        Range("F"&cstr(i)) = 2 * (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = 2 * (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    ElseIf -20 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= -30 Then
        Range("F"&cstr(i)) = 3 * (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = 3 * (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    ElseIf -30 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= -40 Then
        Range("F"&cstr(i)) = 4 * (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = 4 * (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    ElseIf -40 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= -50 Then
        Range("F"&cstr(i)) = 5 * (1 - Range("E"&cstr(i)) / 100)
        Range("D"&cstr(i)) = 5 * (1 - Range("E"&cstr(i)) / 100) * Range("G"&cstr(i))
    End If

    If Range("L" & CStr(i)) >= 0 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf 0 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -10 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -10 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -20 Then
        Range("M" & CStr(i)) = 2 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 2 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -20 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -30 Then
        Range("M" & CStr(i)) = 3 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 3 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -30 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -40 Then
        Range("M" & CStr(i)) = 4 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 4 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -40 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -50 Then
        Range("M" & CStr(i)) = 5 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 5 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    End If


End Sub