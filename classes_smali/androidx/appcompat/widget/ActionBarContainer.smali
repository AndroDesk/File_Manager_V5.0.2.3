.class public Landroidx/appcompat/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field public a:Z

.field public b:Landroidx/appcompat/widget/r0;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/b;

    .line 6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/b;-><init>(Landroidx/appcompat/widget/ActionBarContainer;)V

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 14
    sget-object v0, Lh/j;->ActionBar:[I

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    sget p2, Lh/j;->ActionBar_background:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 28
    sget p2, Lh/j;->ActionBar_backgroundStacked:I

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 36
    sget p2, Lh/j;->ActionBar_height:I

    .line 38
    const/4 v0, -0x1

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 42
    move-result p2

    .line 43
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 48
    move-result p2

    .line 49
    sget v0, Lh/f;->split_action_bar:I

    .line 51
    const/4 v1, 0x1

    .line 52
    if-ne p2, v0, :cond_3f

    .line 54
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 56
    sget p2, Lh/j;->ActionBar_backgroundSplit:I

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 69
    const/4 p2, 0x0

    .line 70
    if-eqz p1, :cond_4c

    .line 72
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 74
    if-nez p1, :cond_55

    .line 76
    goto :goto_56

    .line 77
    :cond_4c
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 79
    if-nez p1, :cond_55

    .line 81
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 83
    if-nez p1, :cond_55

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v1, p2

    .line 87
    :goto_56
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 90
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    move-result p0

    .line 11
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    add-int/2addr p0, v1

    .line 14
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 25
    if-eqz v0, :cond_29

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 44
    if-eqz v0, :cond_3c

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3c

    .line 52
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_3c
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 3
    return-object v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 25
    :cond_18
    return-void
.end method

.method public final onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lh/f;->action_bar:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 12
    sget v0, Lh/f;->action_context_bar:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 20
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

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

.method public final onLayout(ZIIII)V
    .registers 10

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 6
    const/16 p3, 0x8

    .line 8
    const/4 p5, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_13

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v1

    .line 16
    if-eq v1, p3, :cond_13

    .line 18
    move v1, p5

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v0

    .line 21
    :goto_14
    if-eqz p1, :cond_33

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v2

    .line 27
    if-eq v2, p3, :cond_33

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    move-result p3

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result v3

    .line 43
    sub-int v3, p3, v3

    .line 45
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 47
    sub-int/2addr v3, v2

    .line 48
    sub-int/2addr p3, v2

    .line 49
    invoke-virtual {p1, p2, v3, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 52
    :cond_33
    iget-boolean p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 54
    if-eqz p2, :cond_4b

    .line 56
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 58
    if-eqz p1, :cond_48

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    move-result p2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    move-result p3

    .line 68
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    goto/16 :goto_be

    .line 73
    :cond_48
    move p5, v0

    .line 74
    goto/16 :goto_be

    .line 76
    :cond_4b
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 78
    if-eqz p2, :cond_a3

    .line 80
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_75

    .line 88
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 92
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 95
    move-result p3

    .line 96
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 98
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 101
    move-result p4

    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 107
    move-result v0

    .line 108
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 113
    move-result v2

    .line 114
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    goto :goto_a2

    .line 118
    :cond_75
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 120
    if-eqz p2, :cond_9d

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 125
    move-result p2

    .line 126
    if-nez p2, :cond_9d

    .line 128
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 135
    move-result p3

    .line 136
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 138
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 141
    move-result p4

    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 147
    move-result v0

    .line 148
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 153
    move-result v2

    .line 154
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    goto :goto_a2

    .line 158
    :cond_9d
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    :goto_a2
    move v0, p5

    .line 164
    :cond_a3
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z

    .line 166
    if-eqz v1, :cond_48

    .line 168
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 170
    if-eqz p2, :cond_48

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 175
    move-result p3

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 179
    move-result p4

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 183
    move-result v0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 187
    move-result p1

    .line 188
    invoke-virtual {p2, p3, p4, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    :goto_be
    if-eqz p5, :cond_c3

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 196
    :cond_c3
    return-void
.end method

.method public final onMeasure(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-nez v0, :cond_1c

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v0

    .line 11
    if-ne v0, v1, :cond_1c

    .line 13
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:I

    .line 15
    if-ltz v0, :cond_1c

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result p2

    .line 21
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p2

    .line 25
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    move-result p2

    .line 29
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 32
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 34
    if-nez p1, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 43
    if-eqz v0, :cond_8d

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result v0

    .line 49
    const/16 v2, 0x8

    .line 51
    if-eq v0, v2, :cond_8d

    .line 53
    const/high16 v0, 0x40000000  # 2.0f

    .line 55
    if-eq p1, v0, :cond_8d

    .line 57
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    if-eqz v0, :cond_4d

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 66
    move-result v5

    .line 67
    if-eq v5, v2, :cond_4d

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4b

    .line 75
    goto :goto_4d

    .line 76
    :cond_4b
    move v0, v4

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    :goto_4d
    move v0, v3

    .line 79
    :goto_4e
    if-nez v0, :cond_57

    .line 81
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 83
    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I

    .line 86
    move-result v4

    .line 87
    goto :goto_71

    .line 88
    :cond_57
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 90
    if-eqz v0, :cond_69

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 95
    move-result v5

    .line 96
    if-eq v5, v2, :cond_69

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_68

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v3, v4

    .line 106
    :cond_69
    :goto_69
    if-nez v3, :cond_71

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;

    .line 110
    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I

    .line 113
    move-result v4

    .line 114
    :cond_71
    :goto_71
    if-ne p1, v1, :cond_78

    .line 116
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 119
    move-result p1

    .line 120
    goto :goto_7b

    .line 121
    :cond_78
    const p1, 0x7fffffff

    .line 124
    :goto_7b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    move-result p2

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 130
    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I

    .line 133
    move-result v0

    .line 134
    add-int/2addr v0, v4

    .line 135
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 138
    move-result p1

    .line 139
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 142
    :cond_8d
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 16
    if-eqz p1, :cond_33

    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 23
    if-eqz p1, :cond_33

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 48
    move-result v3

    .line 49
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    :cond_33
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 54
    const/4 v0, 0x1

    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz p1, :cond_3e

    .line 58
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 60
    if-nez p1, :cond_47

    .line 62
    goto :goto_48

    .line 63
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 65
    if-nez p1, :cond_47

    .line 67
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 69
    if-nez p1, :cond_47

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v0, v1

    .line 73
    :goto_48
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 82
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_28

    .line 19
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 22
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 24
    if-eqz p1, :cond_28

    .line 26
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    if-eqz p1, :cond_28

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    move-result v2

    .line 38
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    :cond_28
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 43
    const/4 v1, 0x1

    .line 44
    if-eqz p1, :cond_33

    .line 46
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 48
    if-nez p1, :cond_3c

    .line 50
    :goto_31
    move v0, v1

    .line 51
    goto :goto_3c

    .line 52
    :cond_33
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 54
    if-nez p1, :cond_3c

    .line 56
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 58
    if-nez p1, :cond_3c

    .line 60
    goto :goto_31

    .line 61
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 70
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    if-eqz p1, :cond_37

    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z

    .line 23
    if-eqz p1, :cond_37

    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 27
    if-eqz p1, :cond_37

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 46
    move-result v2

    .line 47
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    :cond_37
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 58
    const/4 v0, 0x1

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_42

    .line 62
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 64
    if-nez p1, :cond_4b

    .line 66
    goto :goto_4c

    .line 67
    :cond_42
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 69
    if-nez p1, :cond_4b

    .line 71
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 73
    if-nez p1, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v0, v1

    .line 77
    :goto_4c
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 86
    return-void
.end method

.method public setTabContainer(Landroidx/appcompat/widget/r0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroidx/appcompat/widget/r0;

    .line 10
    if-eqz p1, :cond_1c

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    const/4 v1, -0x2

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/r0;->setAllowCollapse(Z)V

    .line 29
    :cond_1c
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Z

    .line 3
    if-eqz p1, :cond_7

    .line 5
    const/high16 p1, 0x60000

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/high16 p1, 0x40000

    .line 10
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 13
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p1, v0

    .line 10
    :goto_9
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v1, :cond_10

    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 24
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 31
    :cond_1e
    return-void
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 1
    if-eqz p3, :cond_7

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;

    .line 11
    if-ne p1, v0, :cond_10

    .line 13
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z

    .line 15
    if-nez v0, :cond_1e

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;

    .line 19
    if-ne p1, v0, :cond_18

    .line 21
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Z

    .line 23
    if-nez v0, :cond_1e

    .line 25
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_20

    .line 31
    :cond_1e
    const/4 p1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method
