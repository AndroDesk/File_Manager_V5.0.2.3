.class public Lmiuix/responsive/ResponsiveStateHelper;
.super Ljava/lang/Object;
.source "ResponsiveStateHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeResponsiveState(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    invoke-static {p0, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object p0

    return-object p0
.end method

.method public static computeResponsiveStateOnConfigChanged(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    invoke-static {p2, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object p0

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

    const/16 v0, 0x1007

    if-eqz p0, :cond_39

    packed-switch p0, :pswitch_data_3a

    packed-switch p0, :pswitch_data_44

    const-string v1, "Unknown window mode for : "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuixWarning"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_21  #0x1003
    const/16 p0, 0x1004

    return p0

    :pswitch_24  #0x1002
    const/16 p0, 0x1002

    return p0

    :pswitch_27  #0x1001
    const/16 p0, 0x1001

    return p0

    :pswitch_2a  #0x2004
    const/16 p0, 0x2004

    return p0

    :pswitch_2d  #0x2003
    const/16 p0, 0x2003

    return p0

    :pswitch_30  #0x2002
    const/16 p0, 0x2002

    return p0

    :pswitch_33  #0x2001
    const/16 p0, 0x2001

    return p0

    :pswitch_36  #0x2000
    const/16 p0, 0x2000

    return p0

    :cond_39
    return v0

    :pswitch_data_3a
    .packed-switch 0x1001
        :pswitch_27  #00001001
        :pswitch_24  #00001002
        :pswitch_21  #00001003
    .end packed-switch

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

    new-instance p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    invoke-direct {p1}, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;-><init>()V

    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    iget v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/responsive/ResponsiveStateHelper;->windowModeWrapper(I)I

    move-result p0

    iput p0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    return-object p1
.end method

.method private static wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p0

    return-object p0
.end method

.method private static wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 3

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p0

    return-object p0
.end method
