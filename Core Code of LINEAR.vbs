Option Explicit

Sub LINEAR()

Range("Q2:R20").Interior.Color = xlNone
Range("Q2:R3").Interior.Color = &H7280FA


Dim i

For i = 2 To 13

    If Range("E" & CStr(i)) >= 10 Then
        Range("F" & CStr(i)) = 0
        Range("D" & CStr(i)) = 0
    Else
        Range("F" & CStr(i)) = (1 - Range("E" & CStr(i)) / 10)
        Range("D" & CStr(i)) = ((1 - Range("E" & CStr(i)) / 10)) * Range("G" & CStr(i))
    End If

    
    If Range("L" & CStr(i)) >= 10 Then
        Range("M" & CStr(i)) = 0
        Range("K" & CStr(i)) = 0
    Else
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 10)
        Range("K" & CStr(i)) = ((1 - Range("L" & CStr(i)) / 10)) * Range("N" & CStr(i))
    End If

Next



For i = 2 To 13
    If Range("G" & CStr(i)) = 0 Then
        Range("B" & CStr(i)) = 0
        Range("C" & CStr(i)) = 1
        Range("F" & CStr(i)) = 0
    End If
    If Range("N" & CStr(i)) = 0 Then
        Range("I" & CStr(i)) = 0
        Range("J" & CStr(i)) = 1
        Range("M" & CStr(i)) = 0
    End If
Next


End Sub
