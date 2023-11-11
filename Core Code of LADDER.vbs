Option Explicit

Sub LADDER()

Range("Q2:R20").Interior.Color = xlNone
Range("Q15:R20").Interior.Color = &H7280FA

Dim i

For i = 2 To 13

    If Range("E" & CStr(i)) <= 10 Then
        Range("F" & CStr(i)) = (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf 0 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -10 Then
        Range("F" & CStr(i)) = (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf -10 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -20 Then
        Range("F" & CStr(i)) = 2 * (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = 2 * (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf -20 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -31 Then   '//30的计算有误，会按4倍计算，可能与负数二进制转换的BUG有
        Range("F" & CStr(i)) = 3 * (1 - Range("E" & CStr(i)) / 100)          '所以此处以31为分界线，减少误差的影响
        Range("D" & CStr(i)) = 3 * (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf -31 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -40 Then
        Range("F" & CStr(i)) = 4 * (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = 4 * (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf -40 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -50 Then
        Range("F" & CStr(i)) = 5 * (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = 5 * (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    ElseIf -50 > Range("E" & CStr(i)) And Range("E" & CStr(i)) >= -60 Then
        Range("F" & CStr(i)) = 6 * (1 - Range("E" & CStr(i)) / 100)
        Range("D" & CStr(i)) = 6 * (1 - Range("E" & CStr(i)) / 100) * Range("G" & CStr(i))
    End If

    If Range("L" & CStr(i)) <= 10 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf 0 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -10 Then
        Range("M" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -10 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -20 Then
        Range("M" & CStr(i)) = 2 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 2 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -20 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -31 Then      '//30的计算有误，会按4倍计算，可能与负数二进制转换的BUG有
        Range("M" & CStr(i)) = 3 * (1 - Range("L" & CStr(i)) / 100)             '所以此处以31为分界线，减少误差的影响
        Range("K" & CStr(i)) = 3 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -31 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -40 Then
        Range("M" & CStr(i)) = 4 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 4 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -40 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -50 Then
        Range("M" & CStr(i)) = 5 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 5 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
    ElseIf -50 > Range("L" & CStr(i)) And Range("L" & CStr(i)) >= -60 Then
        Range("M" & CStr(i)) = 6 * (1 - Range("L" & CStr(i)) / 100)
        Range("K" & CStr(i)) = 6 * (1 - Range("L" & CStr(i)) / 100) * Range("N" & CStr(i))
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
