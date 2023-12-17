.class public Lmiuix/graphics/shadow/DropShadowLayerHelper;
.super Lmiuix/graphics/shadow/DropShadowHelper;
.source "DropShadowLayerHelper.java"


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
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 4
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 6
    iget p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    .line 8
    iget v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 10
    iget v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 12
    iget v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    .line 14
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 17
    return-void
.end method
