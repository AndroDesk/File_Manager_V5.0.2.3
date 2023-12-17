.class public final Lr0/b;
.super Ljava/lang/Object;
.source "FocusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/b$b;,
        Lr0/b$a;,
        Lr0/b$c;
    }
.end annotation


# direct methods
.method public static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 13

    .line 1
    invoke-static {p0, p1, p2}, Lr0/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p3}, Lr0/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_7d

    .line 12
    if-nez v0, :cond_f

    .line 14
    goto/16 :goto_7d

    .line 16
    :cond_f
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 18
    const/16 v1, 0x82

    .line 20
    const/16 v3, 0x21

    .line 22
    const/16 v4, 0x42

    .line 24
    const/16 v5, 0x11

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq p0, v5, :cond_3d

    .line 29
    if-eq p0, v3, :cond_36

    .line 31
    if-eq p0, v4, :cond_2f

    .line 33
    if-ne p0, v1, :cond_29

    .line 35
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget v8, p3, Landroid/graphics/Rect;->top:I

    .line 39
    if-gt v7, v8, :cond_45

    .line 41
    goto :goto_43

    .line 42
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 48
    :cond_2f
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 50
    iget v8, p3, Landroid/graphics/Rect;->left:I

    .line 52
    if-gt v7, v8, :cond_45

    .line 54
    goto :goto_43

    .line 55
    :cond_36
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 57
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 59
    if-lt v7, v8, :cond_45

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 64
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 66
    if-lt v7, v8, :cond_45

    .line 68
    :goto_43
    move v7, v6

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v7, v2

    .line 71
    :goto_46
    if-nez v7, :cond_49

    .line 73
    return v6

    .line 74
    :cond_49
    if-eq p0, v5, :cond_7c

    .line 76
    if-ne p0, v4, :cond_4e

    .line 78
    goto :goto_7c

    .line 79
    :cond_4e
    invoke-static {p0, p1, p2}, Lr0/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 82
    move-result p2

    .line 83
    if-eq p0, v5, :cond_6f

    .line 85
    if-eq p0, v3, :cond_6a

    .line 87
    if-eq p0, v4, :cond_65

    .line 89
    if-ne p0, v1, :cond_5f

    .line 91
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 93
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 95
    goto :goto_73

    .line 96
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0

    .line 102
    :cond_65
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 104
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 106
    goto :goto_73

    .line 107
    :cond_6a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 109
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 111
    goto :goto_73

    .line 112
    :cond_6f
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 114
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 116
    :goto_73
    sub-int/2addr p0, p1

    .line 117
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 120
    move-result p0

    .line 121
    if-ge p2, p0, :cond_7b

    .line 123
    move v2, v6

    .line 124
    :cond_7b
    return v2

    .line 125
    :cond_7c
    :goto_7c
    return v6

    .line 126
    :cond_7d
    :goto_7d
    return v2
.end method

.method public static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 1
    const/16 v0, 0x11

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p0, v0, :cond_2a

    .line 7
    const/16 v0, 0x21

    .line 9
    if-eq p0, v0, :cond_1b

    .line 11
    const/16 v0, 0x42

    .line 13
    if-eq p0, v0, :cond_2a

    .line 15
    const/16 v0, 0x82

    .line 17
    if-ne p0, v0, :cond_13

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 28
    :cond_1b
    :goto_1b
    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 30
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 32
    if-lt p0, v0, :cond_28

    .line 34
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 36
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 38
    if-gt p0, p1, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v1, v2

    .line 42
    :goto_29
    return v1

    .line 43
    :cond_2a
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 45
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 47
    if-lt p0, v0, :cond_37

    .line 49
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 51
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 53
    if-gt p0, p1, :cond_37

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v1, v2

    .line 57
    :goto_38
    return v1
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 1
    const/16 v0, 0x11

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p0, v0, :cond_53

    .line 7
    const/16 v0, 0x21

    .line 9
    if-eq p0, v0, :cond_40

    .line 11
    const/16 v0, 0x42

    .line 13
    if-eq p0, v0, :cond_2d

    .line 15
    const/16 v0, 0x82

    .line 17
    if-ne p0, v0, :cond_25

    .line 19
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 21
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 23
    if-lt p0, v0, :cond_1c

    .line 25
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    if-gt p0, v0, :cond_23

    .line 29
    :cond_1c
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 33
    if-ge p0, p1, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, v2

    .line 37
    :goto_24
    return v1

    .line 38
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 46
    :cond_2d
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 48
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 50
    if-lt p0, v0, :cond_37

    .line 52
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 54
    if-gt p0, v0, :cond_3e

    .line 56
    :cond_37
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 58
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 60
    if-ge p0, p1, :cond_3e

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v1, v2

    .line 64
    :goto_3f
    return v1

    .line 65
    :cond_40
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 69
    if-gt p0, v0, :cond_4a

    .line 71
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 73
    if-lt p0, v0, :cond_51

    .line 75
    :cond_4a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 77
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 79
    if-le p0, p1, :cond_51

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v1, v2

    .line 83
    :goto_52
    return v1

    .line 84
    :cond_53
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 86
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 88
    if-gt p0, v0, :cond_5d

    .line 90
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 92
    if-lt p0, v0, :cond_64

    .line 94
    :cond_5d
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 96
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 98
    if-le p0, p1, :cond_64

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move v1, v2

    .line 102
    :goto_65
    return v1
.end method

.method public static d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    .line 1
    const/16 v0, 0x11

    .line 3
    if-eq p0, v0, :cond_27

    .line 5
    const/16 v0, 0x21

    .line 7
    if-eq p0, v0, :cond_22

    .line 9
    const/16 v0, 0x42

    .line 11
    if-eq p0, v0, :cond_1d

    .line 13
    const/16 v0, 0x82

    .line 15
    if-ne p0, v0, :cond_15

    .line 17
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    goto :goto_2b

    .line 22
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1d
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 32
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    :goto_2b
    sub-int/2addr p0, p1

    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    .line 1
    const/16 v0, 0x11

    .line 3
    if-eq p0, v0, :cond_31

    .line 5
    const/16 v0, 0x21

    .line 7
    if-eq p0, v0, :cond_19

    .line 9
    const/16 v0, 0x42

    .line 11
    if-eq p0, v0, :cond_31

    .line 13
    const/16 v0, 0x82

    .line 15
    if-ne p0, v0, :cond_11

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :cond_19
    :goto_19
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 34
    add-int/2addr p1, p0

    .line 35
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result p2

    .line 41
    div-int/lit8 p2, p2, 0x2

    .line 43
    add-int/2addr p2, p0

    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_31
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result p1

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 58
    add-int/2addr p1, p0

    .line 59
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 64
    move-result p2

    .line 65
    div-int/lit8 p2, p2, 0x2

    .line 67
    add-int/2addr p2, p0

    .line 68
    sub-int/2addr p1, p2

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 72
    move-result p0

    .line 73
    return p0
.end method
