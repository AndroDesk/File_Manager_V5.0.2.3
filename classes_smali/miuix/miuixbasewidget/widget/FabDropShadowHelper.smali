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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mBlurRadiusPx:F

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/graphics/Canvas;F)V
    .registers 5

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public enableViewShadow(Landroid/view/View;ZI)V
    .registers 8

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    if-ne v0, p2, :cond_5

    return-void

    :cond_5
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mEnableShadow:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    new-array p2, p3, [Z

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    move p2, v0

    :goto_f
    if-ge p2, p3, :cond_44

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_44

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    aput-boolean v3, v2, p2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_2a
    :goto_2a
    if-ge v0, p3, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_41

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_41
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOriginViewParentClipState:[Z

    :cond_44
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mDropShadowConfig:Lmiuix/miuixbasewidget/widget/DropShadowConfig;

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    return-void
.end method

.method public onDensityChanged(FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 6

    iget v0, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetXDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    iget v0, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->offsetYDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    iget p2, p2, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->blurRadiusDp:F

    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mBlurRadiusPx:F

    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetXPx:F

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mOffsetYPx:F

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowColor:I

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public updateShadowRect(IIII)V
    .registers 6

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

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

.method public updateShadowValues(Landroid/content/res/Configuration;FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V
    .registers 5

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p3, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowDarkColor:I

    goto :goto_b

    :cond_9
    iget p1, p3, Lmiuix/miuixbasewidget/widget/DropShadowConfig;->shadowColor:I

    :goto_b
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowColor:I

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1d

    iput p2, p0, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->mLastDensity:F

    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FabDropShadowHelper;->onDensityChanged(FLmiuix/miuixbasewidget/widget/DropShadowConfig;)V

    :cond_1d
    return-void
.end method
