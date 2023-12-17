.class public Lmiuix/navigator/navigatorinfo/AutoNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "AutoNavInfo.java"


# instance fields
.field private final mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

.field private final mContext:Landroid/content/Context;

.field private final mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;Lmiuix/navigator/navigatorinfo/ActivityNavInfo;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    .line 4
    iput-object p2, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    .line 8
    iput-object p4, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->shouldToActivity(Lmiuix/navigator/Navigator;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public shouldToActivity(Lmiuix/navigator/Navigator;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 v0, 0x3f800000  # 1.0f

    .line 12
    mul-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 25
    div-float/2addr p1, v0

    .line 26
    float-to-int p1, p1

    .line 27
    const/16 v0, 0x29e

    .line 29
    if-gt p1, v0, :cond_20

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method
