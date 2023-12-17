.class public Lmiuix/smooth/SmoothContainerDrawableForCardView;
.super Lmiuix/smooth/SmoothContainerDrawable2;
.source "SmoothContainerDrawableForCardView.java"


# instance fields
.field private path:Landroid/graphics/Path;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3a

    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    move-result v2

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawableForCardView;->path:Landroid/graphics/Path;

    invoke-static {p1, v0}, Landroidx/core/content/a;->n(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_45

    :cond_3a
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->getCornerRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_45
    return-void
.end method
