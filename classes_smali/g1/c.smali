.class public abstract Lg1/c;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1}, Lg0/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final clearColorFilter()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 12
    return-void
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final getMinimumHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final getMinimumWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final getState()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final jumpToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8
    :cond_7
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 12
    return-void
.end method

.method public onLevelChange(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final setChangingConfigurations(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 12
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public final setHotspot(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1, p2}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    .line 8
    :cond_7
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    .line 8
    :cond_7
    return-void
.end method

.method public final setState([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
