.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/a;
.source "ActionBarContextView.java"


# instance fields
.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/LinearLayout;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:I

.field public r:I

.field public s:Z

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    sget v0, Lh/a;->actionModeStyle:I

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    sget-object v1, Lh/j;->ActionMode:[I

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p2

    .line 13
    sget v0, Lh/j;->ActionMode_background:I

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1f

    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1f

    .line 27
    invoke-static {p1, v1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p1

    .line 36
    :goto_23
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 38
    invoke-static {p0, p1}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    sget p1, Lh/j;->ActionMode_titleTextStyle:I

    .line 43
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    .line 49
    sget p1, Lh/j;->ActionMode_subtitleTextStyle:I

    .line 51
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    move-result p1

    .line 55
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    .line 57
    sget p1, Lh/j;->ActionMode_height:I

    .line 59
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 62
    move-result p1

    .line 63
    iput p1, p0, Landroidx/appcompat/widget/a;->e:I

    .line 65
    sget p1, Lh/j;->ActionMode_closeItemLayout:I

    .line 67
    sget v0, Lh/g;->abc_action_mode_close_item_material:I

    .line 69
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    move-result p1

    .line 73
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:I

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method


# virtual methods
.method public final f(Lm/a;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_19

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 14
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:I

    .line 16
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    goto :goto_24

    .line 26
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_24

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 39
    sget v2, Lh/f;->action_mode_close_button:I

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 47
    new-instance v2, Landroidx/appcompat/widget/ActionBarContextView$a;

    .line 49
    invoke-direct {v2, p1}, Landroidx/appcompat/widget/ActionBarContextView$a;-><init>(Lm/a;)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1}, Lm/a;->c()Landroidx/appcompat/view/menu/h;

    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 61
    if-eqz v0, :cond_50

    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 66
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 68
    if-eqz v0, :cond_50

    .line 70
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_50

    .line 76
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 78
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 81
    :cond_50
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 92
    const/4 v2, 0x1

    .line 93
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 95
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    .line 97
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 99
    const/4 v3, -0x2

    .line 100
    const/4 v4, -0x1

    .line 101
    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    iget-object v3, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 106
    iget-object v4, p0, Landroidx/appcompat/widget/a;->b:Landroid/content/Context;

    .line 108
    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 111
    iget-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 113
    iget-object v3, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 115
    if-nez v3, :cond_88

    .line 117
    iget-object v4, p1, Landroidx/appcompat/view/menu/b;->d:Landroid/view/LayoutInflater;

    .line 119
    iget v5, p1, Landroidx/appcompat/view/menu/b;->f:I

    .line 121
    invoke-virtual {v4, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroidx/appcompat/view/menu/o;

    .line 127
    iput-object v1, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 129
    iget-object v4, p1, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 131
    invoke-interface {v1, v4}, Landroidx/appcompat/view/menu/o;->initialize(Landroidx/appcompat/view/menu/h;)V

    .line 134
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 137
    :cond_88
    iget-object v1, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 139
    if-eq v3, v1, :cond_92

    .line 141
    move-object v2, v1

    .line 142
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    .line 144
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 147
    :cond_92
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    .line 149
    iput-object v1, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 151
    const/4 p1, 0x0

    .line 152
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 154
    invoke-static {v1, p1}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object p1, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void
.end method

.method public final g()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 3
    if-nez v0, :cond_53

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    sget v1, Lh/g;->abc_action_bar_title_item:I

    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 32
    sget v1, Lh/f;->action_bar_title:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 44
    sget v1, Lh/f;->action_bar_subtitle:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 54
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    .line 56
    if-eqz v0, :cond_44

    .line 58
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 64
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    :cond_44
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    .line 71
    if-eqz v0, :cond_53

    .line 73
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 79
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_53
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v0

    .line 104
    xor-int/lit8 v0, v0, 0x1

    .line 106
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v1

    .line 112
    xor-int/lit8 v1, v1, 0x1

    .line 114
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 116
    const/4 v3, 0x0

    .line 117
    const/16 v4, 0x8

    .line 119
    if-eqz v1, :cond_7a

    .line 121
    move v5, v3

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v5, v4

    .line 124
    :goto_7b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 129
    if-nez v0, :cond_86

    .line 131
    if-eqz v1, :cond_85

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move v3, v4

    .line 135
    :cond_86
    :goto_86
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    move-result-object v0

    .line 144
    if-nez v0, :cond_96

    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    :cond_96
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/a;->getAnimatedVisibility()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/a;->getContentHeight()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final h()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 13
    if-eqz v1, :cond_11

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_11
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 15
    if-eqz v0, :cond_1b

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 25
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 28
    :cond_1b
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 10

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_e

    .line 7
    sub-int v0, p4, p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v0

    .line 19
    :goto_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result v1

    .line 23
    sub-int/2addr p5, p3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    move-result p3

    .line 28
    sub-int/2addr p5, p3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    move-result p3

    .line 33
    sub-int/2addr p5, p3

    .line 34
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 36
    const/16 v2, 0x8

    .line 38
    if-eqz p3, :cond_55

    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 43
    move-result p3

    .line 44
    if-eq p3, v2, :cond_55

    .line 46
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 48
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    if-eqz p1, :cond_3a

    .line 56
    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 61
    :goto_3c
    if-eqz p1, :cond_41

    .line 63
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 68
    :goto_43
    if-eqz p1, :cond_47

    .line 70
    sub-int/2addr v0, v3

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    add-int/2addr v0, v3

    .line 73
    :goto_48
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 75
    invoke-static {v3, v0, v1, p5, p1}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    .line 78
    move-result v3

    .line 79
    add-int/2addr v3, v0

    .line 80
    if-eqz p1, :cond_53

    .line 82
    sub-int/2addr v3, p3

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    add-int/2addr v3, p3

    .line 85
    :goto_54
    move v0, v3

    .line 86
    :cond_55
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 88
    if-eqz p3, :cond_6a

    .line 90
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 92
    if-nez v3, :cond_6a

    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 97
    move-result p3

    .line 98
    if-eq p3, v2, :cond_6a

    .line 100
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 102
    invoke-static {p3, v0, v1, p5, p1}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    .line 105
    move-result p3

    .line 106
    add-int/2addr v0, p3

    .line 107
    :cond_6a
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 109
    if-eqz p3, :cond_71

    .line 111
    invoke-static {p3, v0, v1, p5, p1}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    .line 114
    :cond_71
    if-eqz p1, :cond_78

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 119
    move-result p2

    .line 120
    goto :goto_7f

    .line 121
    :cond_78
    sub-int/2addr p4, p2

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 125
    move-result p2

    .line 126
    sub-int p2, p4, p2

    .line 128
    :goto_7f
    iget-object p3, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 130
    if-eqz p3, :cond_88

    .line 132
    xor-int/lit8 p1, p1, 0x1

    .line 134
    invoke-static {p3, p2, v1, p5, p1}, Landroidx/appcompat/widget/a;->d(Landroid/view/View;IIIZ)I

    .line 137
    :cond_88
    return-void
.end method

.method public final onMeasure(II)V
    .registers 13

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000  # 2.0f

    .line 7
    if-ne v0, v1, :cond_101

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_e2

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Landroidx/appcompat/widget/a;->e:I

    .line 21
    if-lez v0, :cond_17

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result v0

    .line 28
    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    move-result p2

    .line 41
    sub-int p2, p1, p2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 46
    move-result v3

    .line 47
    sub-int/2addr p2, v3

    .line 48
    sub-int v3, v0, v2

    .line 50
    const/high16 v4, -0x80000000

    .line 52
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 55
    move-result v5

    .line 56
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 58
    const/4 v7, 0x0

    .line 59
    if-eqz v6, :cond_4e

    .line 61
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;II)I

    .line 64
    move-result p2

    .line 65
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 73
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 75
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 77
    add-int/2addr v8, v6

    .line 78
    sub-int/2addr p2, v8

    .line 79
    :cond_4e
    iget-object v6, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 81
    if-eqz v6, :cond_5e

    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    move-result-object v6

    .line 87
    if-ne v6, p0, :cond_5e

    .line 89
    iget-object v6, p0, Landroidx/appcompat/widget/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 91
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;II)I

    .line 94
    move-result p2

    .line 95
    :cond_5e
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 97
    if-eqz v6, :cond_91

    .line 99
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 101
    if-nez v8, :cond_91

    .line 103
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 105
    if-eqz v8, :cond_8d

    .line 107
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 110
    move-result v6

    .line 111
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {v8, v6, v5}, Landroid/view/View;->measure(II)V

    .line 116
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 121
    move-result v5

    .line 122
    if-gt v5, p2, :cond_7d

    .line 124
    const/4 v6, 0x1

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move v6, v7

    .line 127
    :goto_7e
    if-eqz v6, :cond_81

    .line 129
    sub-int/2addr p2, v5

    .line 130
    :cond_81
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 132
    if-eqz v6, :cond_87

    .line 134
    move v6, v7

    .line 135
    goto :goto_89

    .line 136
    :cond_87
    const/16 v6, 0x8

    .line 138
    :goto_89
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 141
    goto :goto_91

    .line 142
    :cond_8d
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;II)I

    .line 145
    move-result p2

    .line 146
    :cond_91
    :goto_91
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 148
    if-eqz v5, :cond_c0

    .line 150
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    move-result-object v5

    .line 154
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    const/4 v8, -0x2

    .line 157
    if-eq v6, v8, :cond_a0

    .line 159
    move v9, v1

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v9, v4

    .line 162
    :goto_a1
    if-ltz v6, :cond_a7

    .line 164
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    .line 167
    move-result p2

    .line 168
    :cond_a7
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    if-eq v5, v8, :cond_ac

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v1, v4

    .line 174
    :goto_ad
    if-ltz v5, :cond_b3

    .line 176
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 179
    move-result v3

    .line 180
    :cond_b3
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 182
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 185
    move-result p2

    .line 186
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 189
    move-result v1

    .line 190
    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    .line 193
    :cond_c0
    iget p2, p0, Landroidx/appcompat/widget/a;->e:I

    .line 195
    if-gtz p2, :cond_de

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 200
    move-result p2

    .line 201
    move v0, v7

    .line 202
    :goto_c9
    if-ge v7, p2, :cond_da

    .line 204
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 211
    move-result v1

    .line 212
    add-int/2addr v1, v2

    .line 213
    if-le v1, v0, :cond_d7

    .line 215
    move v0, v1

    .line 216
    :cond_d7
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto :goto_c9

    .line 219
    :cond_da
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 222
    goto :goto_e1

    .line 223
    :cond_de
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 226
    :goto_e1
    return-void

    .line 227
    :cond_e2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v0, " can only be used with android:layout_height=\"wrap_content\""

    .line 247
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object p2

    .line 254
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    throw p1

    .line 258
    :cond_101
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v0, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    .line 278
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object p2

    .line 285
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 288
    throw p1
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/a;->e:I

    .line 3
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 10
    if-eqz p1, :cond_15

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 14
    if-eqz v0, :cond_15

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 22
    :cond_15
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->g()V

    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->g()V

    .line 6
    invoke-static {p0, p1}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_7
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 10
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/a;->setVisibility(I)V

    .line 4
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
