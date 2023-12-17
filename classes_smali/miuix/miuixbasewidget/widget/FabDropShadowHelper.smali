.class Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;
.super Ljava/lang/Object;
.source "FabDropShadowHelper.java"


# instance fields
.field public mBlurRadiusPx:F

.field public mContext:Landroid/content/Context;

.field public mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

.field public mEnableShadow:Z

.field public mLastDensity:F

.field public mOffsetXPx:F

.field public mOffsetYPx:F

.field public mOriginViewParentClipState:[Z

.field public mShadowColor:I

.field public mShadowPaint:Landroid/graphics/Paint;

.field public mShadowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    .line 7
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    .line 9
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mBlurRadiusPx:F

    .line 11
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 18
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    .line 22
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 25
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    .line 30
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object p1

    .line 46
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 48
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 51
    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/graphics/Canvas;F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 8
    return-void
.end method

.method public enableViewShadow(Landroid/view/View;ZI)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    .line 3
    if-ne v0, p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_2a

    .line 11
    new-array p2, p3, [Z

    .line 13
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    .line 15
    move p2, v0

    .line 16
    :goto_f
    if-ge p2, p3, :cond_44

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_44

    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    .line 27
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    .line 29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 32
    move-result v3

    .line 33
    aput-boolean v3, v2, p2

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 38
    check-cast p1, Landroid/view/View;

    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    :goto_2a
    if-ge v0, p3, :cond_41

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_41

    .line 51
    move-object p2, p1

    .line 52
    check-cast p2, Landroid/view/ViewGroup;

    .line 54
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    .line 56
    aget-boolean v1, v1, v0

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 61
    check-cast p1, Landroid/view/View;

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_2a

    .line 66
    :cond_41
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    .line 69
    :cond_44
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    mul-float/2addr v0, v1

    .line 7
    const/high16 v1, 0x43200000  # 160.0f

    .line 9
    div-float/2addr v0, v1

    .line 10
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 15
    return-void
.end method

.method public onDensityChanged(FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 6

    .line 1
    iget v0, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    .line 3
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    .line 10
    iget v0, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    .line 12
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    .line 19
    iget p2, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    .line 21
    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mBlurRadiusPx:F

    .line 28
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 30
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    .line 32
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    .line 34
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowColor:I

    .line 36
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 39
    return-void
.end method

.method public updateShadowRect(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 3
    int-to-float p3, p3

    .line 4
    int-to-float p1, p1

    .line 5
    sub-float/2addr p3, p1

    .line 6
    int-to-float p1, p4

    .line 7
    int-to-float p2, p2

    .line 8
    sub-float/2addr p1, p2

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {v0, p2, p2, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    return-void
.end method

.method public updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/res/Configuration;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget p1, p3, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowDarkColor:I

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget p1, p3, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    .line 12
    :goto_b
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowColor:I

    .line 14
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    .line 21
    cmpl-float p1, p1, p2

    .line 23
    if-eqz p1, :cond_1d

    .line 25
    iput p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    .line 27
    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->onDensityChanged(FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    .line 30
    :cond_1d
    return-void
.end method
