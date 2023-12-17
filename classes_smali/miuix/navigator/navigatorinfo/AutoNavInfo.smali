.class public Lmiuix/navigator/navigatorinfo/AutoNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "AutoNavInfo.java"


# instance fields
.field private final mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

.field private final mContext:Landroid/content/Context;

.field private final mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;Lmiuix/navigator/navigatorinfo/ActivityNavInfo;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    iput-object p2, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    iput-object p4, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->shouldToActivity(Lmiuix/navigator/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mActivityInfo:Lmiuix/navigator/navigatorinfo/ActivityNavInfo;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mFragmentInfo:Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    move-result p1

    return p1
.end method

.method public shouldToActivity(Lmiuix/navigator/Navigator;)Z
    .registers 3

    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AutoNavInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x29e

    if-gt p1, v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method
