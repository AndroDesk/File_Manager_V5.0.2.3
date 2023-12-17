.class public Lcom/google/android/material/internal/ForegroundLinearLayout;
.super Landroidx/appcompat/widget/i0;
.source "ForegroundLinearLayout.java"


# instance fields
.field private foreground:Landroid/graphics/drawable/Drawable;

.field public foregroundBoundsChanged:Z

.field private foregroundGravity:I

.field public mForegroundInPadding:Z

.field private final overlayBounds:Landroid/graphics/Rect;

.field private final selfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    const/16 v0, 0x77

    .line 6
    iput v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 9
    sget-object v4, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout:[I

    new-array v7, v1, [I

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 10
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    iget p3, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 13
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_3c
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_54

    .line 8
    iget-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 10
    if-eqz v1, :cond_51

    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 15
    iget-object v2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 17
    iget-object v3, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 26
    move-result v5

    .line 27
    sub-int/2addr v4, v5

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 31
    move-result v5

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 35
    move-result v6

    .line 36
    sub-int/2addr v5, v6

    .line 37
    iget-boolean v6, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 39
    if-eqz v6, :cond_2c

    .line 41
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    goto :goto_41

    .line 45
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 52
    move-result v6

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 56
    move-result v7

    .line 57
    sub-int/2addr v4, v7

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 61
    move-result v7

    .line 62
    sub-int/2addr v5, v7

    .line 63
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    :goto_41
    iget v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 71
    move-result v4

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 75
    move-result v5

    .line 76
    invoke-static {v1, v4, v5, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 82
    :cond_51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_54
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 11
    :cond_a
    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 23
    :cond_16
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getForegroundGravity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 3
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_a
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/i0;->onLayout(ZIIII)V

    .line 4
    iget-boolean p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 6
    or-int/2addr p1, p2

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 9
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 7
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_40

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_f
    iput-object p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz p1, :cond_36

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_27

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 40
    :cond_27
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 42
    const/16 v1, 0x77

    .line 44
    if-ne v0, v1, :cond_3a

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 65
    :cond_40
    return-void
.end method

.method public setForegroundGravity(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 3
    if-eq v0, p1, :cond_2b

    .line 5
    const v0, 0x800007

    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_e

    .line 11
    const v0, 0x800003

    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_e
    and-int/lit8 v0, p1, 0x70

    .line 17
    if-nez v0, :cond_14

    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 21
    :cond_14
    iput p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 23
    const/16 v0, 0x77

    .line 25
    if-ne p1, v0, :cond_28

    .line 27
    iget-object p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 29
    if-eqz p1, :cond_28

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    .line 33
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 41
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 44
    :cond_2b
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 9
    if-ne p1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method
