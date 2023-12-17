.class public abstract Lmiuix/graphics/shadow/DropShadowHelper;
.super Ljava/lang/Object;
.source "DropShadowHelper.java"


# instance fields
.field public mBlurRadiusPx:F

.field public mContext:Landroid/content/Context;

.field public mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

.field public mEnableShadow:Z

.field public mLastDensity:F

.field public mOffsetXPx:F

.field public mOffsetYPx:F

.field public mOriginViewParentClipState:[Z

.field public mShadowColor:I

.field public mShadowPaint:Landroid/graphics/Paint;

.field public mShadowRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p3, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/graphics/Canvas;F)V
    .registers 5

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public enableViewShadow(Landroid/view/View;ZI)V
    .registers 8

    iget-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    if-ne v0, p2, :cond_5

    return-void

    :cond_5
    iput-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    new-array p2, p3, [Z

    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    move p2, v0

    :goto_f
    if-ge p2, p3, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_48

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    aput-boolean v3, v2, p2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_2c
    :goto_2c
    if-ge v0, p3, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_45

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_45
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    :cond_48
    return-void
.end method

.method public getShadowRect()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;Z)V
    .registers 4

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    return-void
.end method

.method public onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V
    .registers 4

    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iget p2, p2, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    return-void
.end method

.method public updateShadowRect(IIII)V
    .registers 6

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V
    .registers 5

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget p1, p1, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    goto :goto_b

    :cond_7
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget p1, p1, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    :goto_b
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1d

    iput p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    invoke-virtual {p0, p2, p3}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    :cond_1d
    return-void
.end method
