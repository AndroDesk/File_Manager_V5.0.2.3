.class public Lmiuix/smooth/SmoothContainerDrawableForCardView;
.super Lmiuix/smooth/SmoothContainerDrawable2;
.source "SmoothContainerDrawableForCardView.java"


# instance fields
.field private path:Landroid/graphics/Path;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->rectF:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    .line 18
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_3a

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 12
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getBoundsInner()Landroid/graphics/Rect;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->rectF:Landroid/graphics/RectF;

    .line 18
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 20
    int-to-float v2, v2

    .line 21
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 23
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v2, v2

    .line 26
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 28
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 30
    int-to-float v2, v2

    .line 31
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 33
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 35
    int-to-float v0, v0

    .line 36
    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 38
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    .line 40
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    .line 47
    move-result v3

    .line 48
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 53
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    .line 55
    invoke-static {p1, v0}, Landroidx/core/content/a;->n(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 58
    goto :goto_45

    .line 59
    :cond_3a
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getBoundsInner()Landroid/graphics/Rect;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 70
    :goto_45
    return-void
.end method
