.class final Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothContainerDrawable2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerState"
.end annotation


# instance fields
.field public mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

.field public mLayerType:I

.field public mRadii:[F

.field public mRadius:F

.field public mStrokeColor:I

.field public mStrokeWidth:I

.field public mUseSmooth:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 3
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 6
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>(Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 7
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 8
    iget-object p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    iput-object p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    .line 9
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 10
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 11
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 12
    iget-boolean p1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    iput-boolean p1, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 2
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 3
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 9
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 10
    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 8
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 8
    return-void
.end method
