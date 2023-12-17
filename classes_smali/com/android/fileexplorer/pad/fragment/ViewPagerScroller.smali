.class public Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;
.super Landroid/widget/Scroller;
.source "ViewPagerScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x15e


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x15e

    .line 2
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4
    :goto_d
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const/16 p1, 0x15e

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->mDuration:I

    .line 3
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11

    .line 1
    iget v5, p0, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12

    .line 2
    iget v5, p0, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
