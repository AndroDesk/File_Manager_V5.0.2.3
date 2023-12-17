.class public Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;
.super Ljava/lang/Object;
.source "CommonActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .registers 11

    .line 1
    if-eqz p1, :cond_8b

    .line 3
    if-eqz p2, :cond_8b

    .line 5
    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    .line 7
    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    .line 10
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    .line 12
    const/16 v1, 0x3c0

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    if-lt v0, v1, :cond_19

    .line 18
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 20
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 22
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 24
    goto/16 :goto_8c

    .line 26
    :cond_19
    int-to-float v1, v0

    .line 27
    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    .line 29
    int-to-float v5, v4

    .line 30
    const v6, 0x3f4ccccd  # 0.8f

    .line 33
    mul-float/2addr v5, v6

    .line 34
    cmpg-float v1, v1, v5

    .line 36
    const/16 v5, 0x29e

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x2

    .line 40
    if-gez v1, :cond_44

    .line 42
    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    .line 44
    const/16 v1, 0x19a

    .line 46
    if-ne p2, v7, :cond_31

    .line 48
    if-gt v4, v5, :cond_33

    .line 50
    :cond_31
    if-le v0, v1, :cond_3f

    .line 52
    :cond_33
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 54
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 56
    if-ge v0, v1, :cond_3c

    .line 58
    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 60
    goto :goto_8c

    .line 61
    :cond_3c
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 63
    goto :goto_8c

    .line 64
    :cond_3f
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 66
    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 68
    goto :goto_8c

    .line 69
    :cond_44
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    .line 71
    if-ne v0, v7, :cond_4a

    .line 73
    if-gt v4, v5, :cond_62

    .line 75
    :cond_4a
    if-ne v0, v6, :cond_50

    .line 77
    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 79
    if-gt v4, v1, :cond_62

    .line 81
    :cond_50
    if-ne v0, v2, :cond_67

    .line 83
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 85
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x226

    .line 91
    if-gt v0, v1, :cond_67

    .line 93
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    .line 95
    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 97
    if-le v0, v1, :cond_67

    .line 99
    :cond_62
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 101
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 103
    goto :goto_88

    .line 104
    :cond_67
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    .line 106
    invoke-static {v0}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_86

    .line 112
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    .line 114
    if-eq v0, v7, :cond_86

    .line 116
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 118
    int-to-float v0, v0

    .line 119
    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    .line 121
    int-to-float p2, p2

    .line 122
    div-float/2addr v0, p2

    .line 123
    const p2, 0x3fd9999a  # 1.7f

    .line 126
    cmpg-float p2, v0, p2

    .line 128
    if-gez p2, :cond_88

    .line 130
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 132
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 137
    :cond_88
    :goto_88
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    const/4 p1, 0x0

    .line 141
    :goto_8c
    return-object p1
.end method
