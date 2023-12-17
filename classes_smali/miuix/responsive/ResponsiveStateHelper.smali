.class public Lmiuix/responsive/ResponsiveStateHelper;
.super Ljava/lang/Object;
.source "ResponsiveStateHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeResponsiveState(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static computeResponsiveStateOnConfigChanged(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static detectResponsiveWindowType(II)I
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x29e

    if-gt p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x3c0

    if-lt p0, v1, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    const/16 p0, 0x226

    if-le p1, p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    return v0
.end method

.method public static detectResponsiveWindowType(IIII)I
    .registers 4

    if-lez p0, :cond_3

    goto :goto_4

    :cond_3
    move p0, p2

    :goto_4
    const/16 p1, 0x29e

    const/4 p2, 0x1

    if-gt p0, p1, :cond_a

    return p2

    :cond_a
    const/16 p1, 0x3c0

    if-lt p0, p1, :cond_10

    const/4 p0, 0x3

    return p0

    :cond_10
    const/16 p0, 0x226

    if-le p3, p0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    return p2
.end method

.method public static isLargerThanCompact(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private static windowModeWrapper(I)I
    .registers 3

    .line 1
    const/16 v0, 0x1007

    .line 3
    if-eqz p0, :cond_39

    .line 5
    packed-switch p0, :pswitch_data_3a

    .line 8
    packed-switch p0, :pswitch_data_44

    .line 11
    const-string v1, "Unknown window mode for : "

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    const-string v1, "MiuixWarning"

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v0

    .line 34
    :pswitch_21  #0x1003
    const/16 p0, 0x1004

    .line 36
    return p0

    .line 37
    :pswitch_24  #0x1002
    const/16 p0, 0x1002

    .line 39
    return p0

    .line 40
    :pswitch_27  #0x1001
    const/16 p0, 0x1001

    .line 42
    return p0

    .line 43
    :pswitch_2a  #0x2004
    const/16 p0, 0x2004

    .line 45
    return p0

    .line 46
    :pswitch_2d  #0x2003
    const/16 p0, 0x2003

    .line 48
    return p0

    .line 49
    :pswitch_30  #0x2002
    const/16 p0, 0x2002

    .line 51
    return p0

    .line 52
    :pswitch_33  #0x2001
    const/16 p0, 0x2001

    .line 54
    return p0

    .line 55
    :pswitch_36  #0x2000
    const/16 p0, 0x2000

    .line 57
    return p0

    .line 58
    :cond_39
    return v0

    .line 59
    :pswitch_data_3a
    .packed-switch 0x1001
        :pswitch_27  #00001001
        :pswitch_24  #00001002
        :pswitch_21  #00001003
    .end packed-switch

    .line 69
    :pswitch_data_44
    .packed-switch 0x2000
        :pswitch_36  #00002000
        :pswitch_33  #00002001
        :pswitch_30  #00002002
        :pswitch_2d  #00002003
        :pswitch_2a  #00002004
    .end packed-switch
.end method

.method private static wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 4

    .line 1
    new-instance p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    .line 3
    invoke-direct {p1}, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;-><init>()V

    .line 6
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 8
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 10
    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    .line 12
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 14
    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    .line 16
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 18
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 20
    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    .line 22
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 24
    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    .line 26
    iget v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 28
    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    .line 30
    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 32
    invoke-static {p0}, Lmiuix/responsive/ResponsiveStateHelper;->windowModeWrapper(I)I

    .line 35
    move-result p0

    .line 36
    iput p0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    .line 38
    return-object p1
.end method

.method private static wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 3

    .line 1
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3
    int-to-float p0, p0

    .line 4
    const/high16 v0, 0x43200000  # 160.0f

    .line 6
    div-float/2addr p0, v0

    .line 7
    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
