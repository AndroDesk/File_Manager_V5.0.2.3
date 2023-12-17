.class public Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "PadFloatingActivityHelper.java"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 4
    return-void
.end method


# virtual methods
.method public execExitAnim()V
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFloatingWindow()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_13

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 22
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 25
    move-result v0

    .line 26
    if-ltz v0, :cond_20

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 30
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 33
    :cond_20
    return-void
.end method

.method public isFloatingModeSupport()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-static {v1}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1c

    .line 20
    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 22
    const/16 v1, 0x2003

    .line 24
    if-ne v0, v1, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v2, v3

    .line 28
    :goto_1b
    return v2

    .line 29
    :cond_1c
    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 31
    const/16 v1, 0x1003

    .line 33
    if-ne v0, v1, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v2, v3

    .line 37
    :goto_24
    return v2
.end method
