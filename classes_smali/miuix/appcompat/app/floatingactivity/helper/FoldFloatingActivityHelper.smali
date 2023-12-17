.class public Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "FoldFloatingActivityHelper.java"


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
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/16 v4, 0x258

    .line 17
    if-lt v1, v4, :cond_14

    .line 19
    move v1, v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v1, v3

    .line 22
    :goto_15
    if-eqz v1, :cond_28

    .line 24
    iget v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 26
    invoke-static {v1}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_27

    .line 32
    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 34
    const/16 v1, 0x2003

    .line 36
    if-ne v0, v1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v2, v3

    .line 40
    :cond_27
    :goto_27
    return v2

    .line 41
    :cond_28
    return v3
.end method
