.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 7
    sget-object v3, Lh/j;->ButtonBarLayout:[I

    .line 9
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object v0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, v0

    .line 18
    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 21
    sget p1, Lh/j;->ButtonBarLayout_allowStacking:I

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 36
    move-result p1

    .line 37
    if-ne p1, p2, :cond_2b

    .line 39
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 44
    :cond_2b
    return-void
.end method

.method private setStacked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 3
    if-eq v0, p1, :cond_3d

    .line 5
    if-eqz p1, :cond_a

    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 9
    if-eqz v0, :cond_3d

    .line 11
    :cond_a
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    if-eqz p1, :cond_15

    .line 18
    const v0, 0x800005

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/16 v0, 0x50

    .line 24
    :goto_17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    sget v0, Lh/f;->spacer:I

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2b

    .line 35
    if-eqz p1, :cond_27

    .line 37
    const/16 p1, 0x8

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 p1, 0x4

    .line 41
    :goto_28
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, -0x2

    .line 50
    :goto_31
    if-ltz p1, :cond_3d

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 61
    goto :goto_31

    .line 62
    :cond_3d
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_16

    .line 10
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 12
    if-le v0, v1, :cond_14

    .line 14
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 21
    :cond_14
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 23
    :cond_16
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_2b

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 31
    move-result v1

    .line 32
    const/high16 v4, 0x40000000  # 2.0f

    .line 34
    if-ne v1, v4, :cond_2b

    .line 36
    const/high16 v1, -0x80000000

    .line 38
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result v0

    .line 42
    move v1, v3

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    move v0, p1

    .line 45
    move v1, v2

    .line 46
    :goto_2d
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 49
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 51
    if-eqz v0, :cond_4c

    .line 53
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 55
    if-nez v0, :cond_4c

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 60
    move-result v0

    .line 61
    const/high16 v4, -0x1000000

    .line 63
    and-int/2addr v0, v4

    .line 64
    const/high16 v4, 0x1000000

    .line 66
    if-ne v0, v4, :cond_45

    .line 68
    move v0, v3

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v0, v2

    .line 71
    :goto_46
    if-eqz v0, :cond_4c

    .line 73
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 76
    move v1, v3

    .line 77
    :cond_4c
    if-eqz v1, :cond_51

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 82
    :cond_51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    move-result v0

    .line 86
    move v1, v2

    .line 87
    :goto_56
    const/4 v4, -0x1

    .line 88
    if-ge v1, v0, :cond_67

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_64

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_56

    .line 104
    :cond_67
    move v1, v4

    .line 105
    :goto_68
    if-ltz v1, :cond_bd

    .line 107
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 120
    move-result v6

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 124
    move-result v0

    .line 125
    add-int/2addr v0, v6

    .line 126
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    add-int/2addr v0, v6

    .line 129
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 131
    add-int/2addr v0, v5

    .line 132
    add-int/2addr v2, v0

    .line 133
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 135
    if-eqz v0, :cond_b8

    .line 137
    add-int/2addr v1, v3

    .line 138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 141
    move-result v0

    .line 142
    :goto_8d
    if-ge v1, v0, :cond_9e

    .line 144
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_9b

    .line 154
    move v4, v1

    .line 155
    goto :goto_9e

    .line 156
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    .line 158
    goto :goto_8d

    .line 159
    :cond_9e
    :goto_9e
    if-ltz v4, :cond_bd

    .line 161
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 168
    move-result v0

    .line 169
    const/high16 v1, 0x41800000  # 16.0f

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 178
    move-result-object v3

    .line 179
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 181
    mul-float/2addr v3, v1

    .line 182
    float-to-int v1, v3

    .line 183
    add-int/2addr v0, v1

    .line 184
    goto :goto_bc

    .line 185
    :cond_b8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 188
    move-result v0

    .line 189
    :goto_bc
    add-int/2addr v2, v0

    .line 190
    :cond_bd
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 192
    invoke-static {p0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 195
    move-result v0

    .line 196
    if-eq v0, v2, :cond_cd

    .line 198
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 201
    if-nez p2, :cond_cd

    .line 203
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 206
    :cond_cd
    return-void
.end method

.method public setAllowStacking(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 3
    if-eq v0, p1, :cond_13

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 7
    if-nez p1, :cond_10

    .line 9
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 11
    if-eqz p1, :cond_10

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_13
    return-void
.end method
