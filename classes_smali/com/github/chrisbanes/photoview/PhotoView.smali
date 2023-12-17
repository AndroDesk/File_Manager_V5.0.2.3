.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# instance fields
.field private attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .line 1
    new-instance v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 6
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    .line 6
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMaximumScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMediumScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMinimumScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isZoomEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->isZoomEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 6
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFrame(IIII)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 9
    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 12
    :cond_b
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 11
    :cond_a
    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 11
    :cond_a
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    .line 11
    :cond_a
    return-void
.end method

.method public setMaximumScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 6
    return-void
.end method

.method public setMediumScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 6
    return-void
.end method

.method public setMinimumScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V

    .line 6
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V

    .line 6
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V

    .line 6
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V

    .line 6
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V

    .line 6
    return-void
.end method

.method public setRotationBy(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 6
    return-void
.end method

.method public setRotationTo(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 6
    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    .line 6
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 6
    return-void
.end method

.method public setZoomable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->attacher:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 6
    return-void
.end method
