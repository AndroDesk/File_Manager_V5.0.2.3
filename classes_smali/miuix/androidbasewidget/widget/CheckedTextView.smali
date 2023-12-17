.class public Lmiuix/androidbasewidget/widget/CheckedTextView;
.super Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final CHECK_MARK_PADDING:I


# instance fields
.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkMarginToText:I

.field private mDrawCheckMark:Z

.field private mDrawTextOffsetInRtl:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x10103c8

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, p2

    .line 6
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$dimen;->miuix_appcompat_checked_text_view_addition_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkMarginToText:I

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;Z)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_71

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result v1

    .line 15
    if-eqz p2, :cond_19

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 24
    move-result v2

    .line 25
    goto :goto_27

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr p2, v2

    .line 35
    sub-int/2addr p2, v1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 39
    move-result v2

    .line 40
    :goto_27
    add-int/2addr v2, p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    move-result v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 56
    move-result v5

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v6

    .line 61
    instance-of v6, v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 63
    if-eqz v6, :cond_4c

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    move-result v3

    .line 69
    sub-int/2addr v3, p2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    move-result v4

    .line 74
    sub-int v5, v3, v4

    .line 76
    goto :goto_69

    .line 77
    :cond_4c
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 80
    move-result v6

    .line 81
    and-int/lit8 v6, v6, 0x70

    .line 83
    const/16 v7, 0x10

    .line 85
    if-eq v6, v7, :cond_61

    .line 87
    const/16 v3, 0x50

    .line 89
    if-eq v6, v3, :cond_5b

    .line 91
    goto :goto_69

    .line 92
    :cond_5b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 95
    move-result p2

    .line 96
    sub-int/2addr p2, v5

    .line 97
    goto :goto_69

    .line 98
    :cond_61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 101
    move-result p2

    .line 102
    invoke-static {p2, v5, v3, v4}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkPositionY(IIII)I

    .line 105
    move-result p2

    .line 106
    :goto_69
    add-int/2addr v1, v2

    .line 107
    add-int/2addr v5, p2

    .line 108
    invoke-virtual {v0, v2, p2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    :cond_71
    return-void
.end method

.method public static getCheckMarkPositionY(IIII)I
    .registers 4

    .line 1
    sub-int/2addr p0, p2

    .line 2
    sub-int/2addr p0, p3

    .line 3
    sub-int/2addr p0, p1

    .line 4
    div-int/lit8 p0, p0, 0x2

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method private getCheckWidth()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    :cond_13
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    sget v0, Lmiuix/androidbasewidget/R$dimen;->miuix_appcompat_checked_text_view_addition_margin:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    iput p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkMarginToText:I

    .line 21
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 18
    :cond_11
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v2, v1

    .line 11
    :goto_a
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/CheckedTextView;->drawCheckMark(Landroid/graphics/Canvas;Z)V

    .line 18
    :cond_11
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_28

    .line 24
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v0

    .line 32
    const-class v1, Landroid/graphics/drawable/StateListDrawable;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 43
    :goto_2a
    if-eqz v2, :cond_40

    .line 45
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 47
    if-eqz v0, :cond_40

    .line 49
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 51
    if-eqz v0, :cond_40

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    .line 59
    move-result v0

    .line 60
    int-to-float v0, v0

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    :cond_40
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    if-eqz v2, :cond_50

    .line 70
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 72
    if-eqz v0, :cond_50

    .line 74
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawTextOffsetInRtl:Z

    .line 76
    if-eqz v0, :cond_50

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    :cond_50
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_3b

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_2b

    .line 23
    iput-boolean v4, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 28
    move-result p1

    .line 29
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result p1

    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 47
    move-result v3

    .line 48
    sub-int v3, v0, v3

    .line 50
    mul-int/lit8 v5, v1, 0x2

    .line 52
    if-ge v3, v5, :cond_39

    .line 54
    iput-boolean v2, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 56
    move v1, v2

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    iput-boolean v4, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 60
    :cond_3b
    :goto_3b
    sub-int/2addr v0, v1

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 64
    move-result p1

    .line 65
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 68
    move-result p1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 72
    if-nez v1, :cond_4a

    .line 74
    return-void

    .line 75
    :cond_4a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    move-result p1

    .line 79
    add-int/2addr p1, v1

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    move-result p2

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    if-eqz p1, :cond_32

    .line 16
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v1

    .line 29
    :goto_1c
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 32
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    :cond_32
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
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
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

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
