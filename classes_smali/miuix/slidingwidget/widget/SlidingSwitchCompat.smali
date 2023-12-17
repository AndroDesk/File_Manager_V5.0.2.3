.class public Lmiuix/slidingwidget/widget/SlidingSwitchCompat;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SlidingSwitchCompat.java"


# instance fields
.field private mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/slidingwidget/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 5
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    .line 6
    sget-object v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    sget v1, Lmiuix/slidingwidget/R$style;->Widget_SlidingButton_DayNight:I

    .line 7
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    iget-object p3, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p3, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 11
    :cond_a
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getAlpha()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/view/View;->getAlpha()F

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    .line 11
    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 12
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onHoverEvent(Landroid/view/MotionEvent;)V

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredWidth()I

    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 9
    invoke-virtual {p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredHeight()I

    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 18
    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setParentClipChildren()V

    .line 21
    return-void
.end method

.method public onSetAlpha(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setAlpha(F)V

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_14

    .line 7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setChecked(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 6
    if-eqz p2, :cond_a

    .line 8
    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setLayerType(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setPressed(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_13

    .line 7
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitchCompat;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method
