.class public Lmiuix/graphics/shadow/DropShadowMaskHelper;
.super Lmiuix/graphics/shadow/DropShadowHelper;
.source "DropShadowMaskHelper.java"


# instance fields
.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/graphics/shadow/DropShadowHelper;-><init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 4
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    .line 6
    iget v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    .line 8
    iget-object p2, p2, Lmiuix/graphics/shadow/DropShadowConfig;->blurStyle:Landroid/graphics/BlurMaskFilter$Blur;

    .line 10
    invoke-direct {p1, v0, p2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 13
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowMaskHelper;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 15
    iget-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 20
    return-void
.end method

.method public updateShadowRect(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowRect(IIII)V

    .line 4
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 6
    iget p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 8
    iget p3, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    return-void
.end method
