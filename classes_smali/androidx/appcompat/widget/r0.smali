.class public final Landroidx/appcompat/widget/r0;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/r0$d;,
        Landroidx/appcompat/widget/r0$b;,
        Landroidx/appcompat/widget/r0$a;,
        Landroidx/appcompat/widget/r0$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/widget/q0;

.field public b:Landroidx/appcompat/widget/r0$b;

.field public c:Landroidx/appcompat/widget/i0;

.field public d:Landroidx/appcompat/widget/AppCompatSpinner;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/r0$d;

    .line 6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/r0$d;-><init>(Landroidx/appcompat/widget/r0;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    sget-object v1, Lh/j;->ActionBar:[I

    .line 15
    sget v2, Lh/a;->actionBarStyle:I

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 21
    move-result-object v1

    .line 22
    sget v2, Lh/j;->ActionBar_height:I

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v4

    .line 36
    sget v5, Lh/b;->abc_action_bar_embed_tabs:I

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_35

    .line 44
    sget v4, Lh/d;->abc_action_bar_stacked_max_height:I

    .line 46
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v2

    .line 50
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result v0

    .line 54
    :cond_35
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r0;->setContentHeight(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p1

    .line 64
    sget v0, Lh/d;->abc_action_bar_stacked_tab_max_width:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    move-result p1

    .line 70
    iput p1, p0, Landroidx/appcompat/widget/r0;->g:I

    .line 72
    new-instance p1, Landroidx/appcompat/widget/i0;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v0

    .line 78
    sget v1, Lh/a;->actionBarTabBarStyle:I

    .line 80
    invoke-direct {p1, v0, v3, v1}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->setMeasureWithLargestChildEnabled(Z)V

    .line 87
    const/16 v0, 0x11

    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->setGravity(I)V

    .line 92
    new-instance v0, Landroidx/appcompat/widget/i0$a;

    .line 94
    const/4 v1, -0x2

    .line 95
    const/4 v2, -0x1

    .line 96
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/i0$a;-><init>(II)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 104
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 106
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;
    .registers 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/r0$c;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/r0$c;-><init>(Landroidx/appcompat/widget/r0;Landroid/content/Context;Landroidx/appcompat/app/a$d;Z)V

    .line 10
    if-eqz p2, :cond_1b

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    .line 18
    const/4 p2, -0x1

    .line 19
    iget v1, p0, Landroidx/appcompat/widget/r0;->h:I

    .line 21
    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    goto :goto_2f

    .line 28
    :cond_1b
    const/4 p1, 0x1

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 32
    iget-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    .line 34
    if-nez p1, :cond_2a

    .line 36
    new-instance p1, Landroidx/appcompat/widget/r0$b;

    .line 38
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/r0$b;-><init>(Landroidx/appcompat/widget/r0;)V

    .line 41
    iput-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    .line 43
    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :goto_2f
    return-object v0
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 24
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    const/4 v2, -0x2

    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 36
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    .line 43
    return-void
.end method

.method public final c(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/appcompat/widget/r0$c;

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/r0$c;->a()V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 14
    if-eqz p1, :cond_18

    .line 16
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/appcompat/widget/r0$a;

    .line 22
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    :cond_18
    iget-boolean p1, p0, Landroidx/appcompat/widget/r0;->e:Z

    .line 27
    if-eqz p1, :cond_1f

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 32
    :cond_1f
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lh/j;->ActionBar:[I

    .line 10
    sget v1, Lh/a;->actionBarStyle:I

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    move-result-object v0

    .line 18
    sget v1, Lh/j;->ActionBar_height:I

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v3

    .line 32
    sget v4, Lh/b;->abc_action_bar_embed_tabs:I

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_31

    .line 40
    sget v3, Lh/d;->abc_action_bar_stacked_max_height:I

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v1

    .line 50
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/r0;->setContentHeight(I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 60
    sget v0, Lh/d;->abc_action_bar_stacked_tab_max_width:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result p1

    .line 66
    iput p1, p0, Landroidx/appcompat/widget/r0;->g:I

    .line 68
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    check-cast p2, Landroidx/appcompat/widget/r0$c;

    .line 3
    iget-object p1, p2, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->select()V

    .line 8
    return-void
.end method

.method public final onMeasure(II)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/high16 v2, 0x40000000  # 2.0f

    .line 9
    if-ne p2, v2, :cond_c

    .line 11
    move v3, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v0

    .line 14
    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 17
    iget-object v4, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 19
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v4

    .line 23
    const/4 v5, -0x1

    .line 24
    if-le v4, v1, :cond_41

    .line 26
    if-eq p2, v2, :cond_1f

    .line 28
    const/high16 v6, -0x80000000

    .line 30
    if-ne p2, v6, :cond_41

    .line 32
    :cond_1f
    const/4 p2, 0x2

    .line 33
    if-le v4, p2, :cond_2f

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    move-result p2

    .line 39
    int-to-float p2, p2

    .line 40
    const v4, 0x3ecccccd  # 0.4f

    .line 43
    mul-float/2addr p2, v4

    .line 44
    float-to-int p2, p2

    .line 45
    iput p2, p0, Landroidx/appcompat/widget/r0;->f:I

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 51
    move-result v4

    .line 52
    div-int/2addr v4, p2

    .line 53
    iput v4, p0, Landroidx/appcompat/widget/r0;->f:I

    .line 55
    :goto_36
    iget p2, p0, Landroidx/appcompat/widget/r0;->f:I

    .line 57
    iget v4, p0, Landroidx/appcompat/widget/r0;->g:I

    .line 59
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result p2

    .line 63
    iput p2, p0, Landroidx/appcompat/widget/r0;->f:I

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    iput v5, p0, Landroidx/appcompat/widget/r0;->f:I

    .line 68
    :goto_43
    iget p2, p0, Landroidx/appcompat/widget/r0;->h:I

    .line 70
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p2

    .line 74
    if-nez v3, :cond_51

    .line 76
    iget-boolean v2, p0, Landroidx/appcompat/widget/r0;->e:Z

    .line 78
    if-eqz v2, :cond_51

    .line 80
    move v2, v1

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v2, v0

    .line 83
    :goto_52
    if-eqz v2, :cond_c7

    .line 85
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 87
    invoke-virtual {v2, v0, p2}, Landroid/view/View;->measure(II)V

    .line 90
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 95
    move-result v2

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 99
    move-result v4

    .line 100
    if-le v2, v4, :cond_c3

    .line 102
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 104
    if-eqz v2, :cond_70

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    move-result-object v2

    .line 110
    if-ne v2, p0, :cond_70

    .line 112
    move v0, v1

    .line 113
    :cond_70
    if-eqz v0, :cond_73

    .line 115
    goto :goto_ca

    .line 116
    :cond_73
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 118
    const/4 v1, 0x0

    .line 119
    const/4 v2, -0x2

    .line 120
    if-nez v0, :cond_91

    .line 122
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v4

    .line 128
    sget v6, Lh/a;->actionDropDownStyle:I

    .line 130
    invoke-direct {v0, v4, v1, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance v4, Landroidx/appcompat/widget/i0$a;

    .line 135
    invoke-direct {v4, v2, v5}, Landroidx/appcompat/widget/i0$a;-><init>(II)V

    .line 138
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    iput-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 146
    :cond_91
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 153
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 155
    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 163
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 166
    move-result-object v0

    .line 167
    if-nez v0, :cond_b2

    .line 169
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 171
    new-instance v2, Landroidx/appcompat/widget/r0$a;

    .line 173
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/r0$a;-><init>(Landroidx/appcompat/widget/r0;)V

    .line 176
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    :cond_b2
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 181
    if-eqz v0, :cond_bb

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    iput-object v1, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 188
    :cond_bb
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 190
    iget v1, p0, Landroidx/appcompat/widget/r0;->i:I

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 195
    goto :goto_ca

    .line 196
    :cond_c3
    invoke-virtual {p0}, Landroidx/appcompat/widget/r0;->b()V

    .line 199
    goto :goto_ca

    .line 200
    :cond_c7
    invoke-virtual {p0}, Landroidx/appcompat/widget/r0;->b()V

    .line 203
    :goto_ca
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 206
    move-result v0

    .line 207
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 213
    move-result p1

    .line 214
    if-eqz v3, :cond_de

    .line 216
    if-eq v0, p1, :cond_de

    .line 218
    iget p1, p0, Landroidx/appcompat/widget/r0;->i:I

    .line 220
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    .line 223
    :cond_de
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/r0;->e:Z

    .line 3
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/r0;->h:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/r0;->i:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_36

    .line 13
    iget-object v3, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v3

    .line 19
    if-ne v2, p1, :cond_16

    .line 21
    const/4 v4, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v1

    .line 24
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 27
    if-eqz v4, :cond_33

    .line 29
    iget-object v3, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 31
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 37
    if-eqz v4, :cond_29

    .line 39
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    :cond_29
    new-instance v4, Landroidx/appcompat/widget/q0;

    .line 44
    invoke-direct {v4, p0, v3}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V

    .line 47
    iput-object v4, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 49
    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_a

    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 57
    if-eqz v0, :cond_3f

    .line 59
    if-ltz p1, :cond_3f

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 64
    :cond_3f
    return-void
.end method
