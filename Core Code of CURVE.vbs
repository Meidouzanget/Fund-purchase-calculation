Sub CURVE()
Range("Q9:R14").Interior.Color = &H7280FA
Range("Q3:R6").Interior.Color = xlNone


Dim i

For i = 2 to 13

    If Range("E"&cstr(i)) >= 10 Then
    Range("F"&cstr(i)) = 0
    Range("D"&cstr(i)) = 0
    ElseIf 10 > Range("E"&cstr(i)) And Range("E"&cstr(i)) >= 0 Then
        Range("F"&cstr(i)) = (1 - Range("E"&cstr(i)) / 10)
        Range("D"&cstr(i)) = (1 - Range("E"&cstr(i)) / 10) * Range("G"&cstr(i))
    ElseIf Range("E"&cstr(i)) < 0 Then
        Range("F"&cstr(i)) = (1 - Range("E"&cstr(i)) / 10)
        Range("D"&cstr(i)) = (1 - Range("E"&cstr(i)) / 10) * Range("G"&cstr(i))
    End If

    If Range("L" & CStr(i)) >= 10 Then
        Range("M" & CStr(i)) = 0
        Range("D" & CStr(i)) = 0
    ElseIf 10 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= 0 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 10)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 10) * Range("N" & CStr(i))
    ElseIf Range("L" & CStr(i)) < 0 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 10)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 10) * Range("N" & CStr(i))
    End If

Next


End Sub