.class public final Lm0/r0$l;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# direct methods
.method public static a(I)I
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    :goto_3
    const/16 v3, 0x100

    .line 6
    if-gt v2, v3, :cond_53

    .line 8
    and-int v3, p0, v2

    .line 10
    if-eqz v3, :cond_50

    .line 12
    if-eq v2, v0, :cond_4b

    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v2, v3, :cond_46

    .line 17
    const/4 v3, 0x4

    .line 18
    if-eq v2, v3, :cond_41

    .line 20
    const/16 v3, 0x8

    .line 22
    if-eq v2, v3, :cond_3c

    .line 24
    const/16 v3, 0x10

    .line 26
    if-eq v2, v3, :cond_37

    .line 28
    const/16 v3, 0x20

    .line 30
    if-eq v2, v3, :cond_32

    .line 32
    const/16 v3, 0x40

    .line 34
    if-eq v2, v3, :cond_2d

    .line 36
    const/16 v3, 0x80

    .line 38
    if-eq v2, v3, :cond_28

    .line 40
    goto :goto_50

    .line 41
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 44
    move-result v3

    .line 45
    goto :goto_4f

    .line 46
    :cond_2d
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 49
    move-result v3

    .line 50
    goto :goto_4f

    .line 51
    :cond_32
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 54
    move-result v3

    .line 55
    goto :goto_4f

    .line 56
    :cond_37
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 59
    move-result v3

    .line 60
    goto :goto_4f

    .line 61
    :cond_3c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 64
    move-result v3

    .line 65
    goto :goto_4f

    .line 66
    :cond_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 69
    move-result v3

    .line 70
    goto :goto_4f

    .line 71
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 74
    move-result v3

    .line 75
    goto :goto_4f

    .line 76
    :cond_4b
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 79
    move-result v3

    .line 80
    :goto_4f
    or-int/2addr v1, v3

    .line 81
    :cond_50
    :goto_50
    shl-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_53
    return v1
.end method
