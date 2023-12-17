.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/i0;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$b;
.implements Landroidx/appcompat/view/menu/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/h;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:Z

.field public e:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public f:Landroidx/appcompat/view/menu/n$a;

.field public g:Landroidx/appcompat/view/menu/h$a;

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroidx/appcompat/widget/ActionMenuView$e;


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/i0;->setBaselineAligned(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 4
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    .line 7
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    return-void
.end method

.method public static b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    .line 1
    const/16 v0, 0x10

    .line 3
    if-eqz p0, :cond_1c

    .line 5
    instance-of v1, p0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 7
    if-eqz v1, :cond_10

    .line 9
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 11
    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 13
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 19
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :goto_15
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 24
    if-gtz p0, :cond_1b

    .line 26
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    :cond_1b
    return-object v1

    .line 29
    :cond_1c
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    .line 34
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 36
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/j;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final c(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v3

    .line 19
    if-ge p1, v3, :cond_1f

    .line 21
    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 23
    if-eqz v3, :cond_1f

    .line 25
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 27
    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->needsDividerAfter()Z

    .line 30
    move-result v1

    .line 31
    or-int/2addr v0, v1

    .line 32
    :cond_1f
    if-lez p1, :cond_2c

    .line 34
    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 36
    if-eqz p1, :cond_2c

    .line 38
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 40
    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->needsDividerBefore()Z

    .line 43
    move-result p1

    .line 44
    or-int/2addr v0, p1

    .line 45
    :cond_2c
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 3
    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroidx/appcompat/widget/i0$a;
    .registers 3

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/i0$a;
    .registers 4

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/i0$a;
    .registers 2

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    if-nez v0, :cond_3e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/h;

    .line 11
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 16
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    .line 18
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 24
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 26
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 34
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    .line 36
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/view/menu/n$a;

    .line 38
    if-eqz v0, :cond_28

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$b;

    .line 43
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    .line 46
    :goto_2d
    iput-object v0, v1, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 48
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 50
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 57
    iput-object p0, v0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 59
    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 61
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 63
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 65
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 8
    if-eqz v1, :cond_e

    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 17
    if-eqz v1, :cond_15

    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    if-eqz p1, :cond_1d

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1d

    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 30
    :cond_1d
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    if-eqz v0, :cond_19

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_19

    .line 21
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 23
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 26
    :cond_19
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    .line 5
    if-nez v1, :cond_a

    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/i0;->onLayout(ZIIII)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/i0;->getDividerWidth()I

    .line 22
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 39
    move-result v6

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_2a
    const/16 v11, 0x8

    .line 45
    const/4 v12, 0x1

    .line 46
    if-ge v8, v1, :cond_8d

    .line 48
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    move-result-object v13

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 55
    move-result v14

    .line 56
    if-ne v14, v11, :cond_3a

    .line 58
    goto :goto_8a

    .line 59
    :cond_3a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object v11

    .line 63
    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 65
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 67
    if-eqz v14, :cond_7a

    .line 69
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    move-result v9

    .line 73
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->c(I)Z

    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_4f

    .line 79
    add-int/2addr v9, v3

    .line 80
    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    move-result v14

    .line 84
    if-eqz v6, :cond_5f

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 89
    move-result v15

    .line 90
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    add-int/2addr v15, v11

    .line 93
    add-int v11, v15, v9

    .line 95
    goto :goto_6f

    .line 96
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 99
    move-result v15

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 103
    move-result v16

    .line 104
    sub-int v15, v15, v16

    .line 106
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 108
    sub-int v11, v15, v11

    .line 110
    sub-int v15, v11, v9

    .line 112
    :goto_6f
    div-int/lit8 v16, v14, 0x2

    .line 114
    sub-int v7, v2, v16

    .line 116
    add-int/2addr v14, v7

    .line 117
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    .line 120
    sub-int/2addr v5, v9

    .line 121
    move v9, v12

    .line 122
    goto :goto_8a

    .line 123
    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    move-result v7

    .line 127
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 129
    add-int/2addr v7, v12

    .line 130
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    add-int/2addr v7, v11

    .line 133
    sub-int/2addr v5, v7

    .line 134
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->c(I)Z

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 139
    :goto_8a
    add-int/lit8 v8, v8, 0x1

    .line 141
    goto :goto_2a

    .line 142
    :cond_8d
    if-ne v1, v12, :cond_ac

    .line 144
    if-nez v9, :cond_ac

    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 154
    move-result v3

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 158
    move-result v5

    .line 159
    div-int/lit8 v4, v4, 0x2

    .line 161
    div-int/lit8 v6, v3, 0x2

    .line 163
    sub-int/2addr v4, v6

    .line 164
    div-int/lit8 v6, v5, 0x2

    .line 166
    sub-int/2addr v2, v6

    .line 167
    add-int/2addr v3, v4

    .line 168
    add-int/2addr v5, v2

    .line 169
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 172
    return-void

    .line 173
    :cond_ac
    xor-int/lit8 v3, v9, 0x1

    .line 175
    sub-int/2addr v10, v3

    .line 176
    if-lez v10, :cond_b4

    .line 178
    div-int v3, v5, v10

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    const/4 v3, 0x0

    .line 182
    :goto_b5
    const/4 v4, 0x0

    .line 183
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 186
    move-result v3

    .line 187
    if-eqz v6, :cond_fa

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 192
    move-result v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 196
    move-result v6

    .line 197
    sub-int/2addr v5, v6

    .line 198
    move v7, v4

    .line 199
    :goto_c6
    if-ge v7, v1, :cond_134

    .line 201
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 208
    move-result-object v6

    .line 209
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 211
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 214
    move-result v8

    .line 215
    if-eq v8, v11, :cond_f7

    .line 217
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 219
    if-eqz v8, :cond_dd

    .line 221
    goto :goto_f7

    .line 222
    :cond_dd
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 224
    sub-int/2addr v5, v8

    .line 225
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 228
    move-result v8

    .line 229
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 232
    move-result v9

    .line 233
    div-int/lit8 v10, v9, 0x2

    .line 235
    sub-int v10, v2, v10

    .line 237
    sub-int v12, v5, v8

    .line 239
    add-int/2addr v9, v10

    .line 240
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 243
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 245
    add-int/2addr v8, v4

    .line 246
    add-int/2addr v8, v3

    .line 247
    sub-int/2addr v5, v8

    .line 248
    :cond_f7
    :goto_f7
    add-int/lit8 v7, v7, 0x1

    .line 250
    goto :goto_c6

    .line 251
    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 254
    move-result v5

    .line 255
    move v7, v4

    .line 256
    :goto_ff
    if-ge v7, v1, :cond_134

    .line 258
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    move-result-object v6

    .line 266
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 268
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 271
    move-result v8

    .line 272
    if-eq v8, v11, :cond_131

    .line 274
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 276
    if-eqz v8, :cond_116

    .line 278
    goto :goto_131

    .line 279
    :cond_116
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    add-int/2addr v5, v8

    .line 282
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 285
    move-result v8

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 289
    move-result v9

    .line 290
    div-int/lit8 v10, v9, 0x2

    .line 292
    sub-int v10, v2, v10

    .line 294
    add-int v12, v5, v8

    .line 296
    add-int/2addr v9, v10

    .line 297
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 300
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 302
    add-int/2addr v8, v4

    .line 303
    add-int/2addr v8, v3

    .line 304
    add-int/2addr v8, v5

    .line 305
    move v5, v8

    .line 306
    :cond_131
    :goto_131
    add-int/lit8 v7, v7, 0x1

    .line 308
    goto :goto_ff

    .line 309
    :cond_134
    return-void
.end method

.method public final onMeasure(II)V
    .registers 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v2

    .line 9
    const/high16 v3, 0x40000000  # 2.0f

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v2, v3, :cond_10

    .line 15
    move v2, v5

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v2, v4

    .line 18
    :goto_11
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    .line 20
    if-eq v1, v2, :cond_17

    .line 22
    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    .line 24
    :cond_17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    .line 30
    if-eqz v2, :cond_2c

    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 34
    if-eqz v2, :cond_2c

    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    .line 38
    if-eq v1, v6, :cond_2c

    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    .line 42
    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 45
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    .line 51
    if-eqz v2, :cond_2f1

    .line 53
    if-lez v1, :cond_2f1

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 66
    move-result v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 70
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 79
    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 95
    div-int v10, v2, v8

    .line 97
    rem-int v11, v2, v8

    .line 99
    if-nez v10, :cond_69

    .line 101
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 104
    goto/16 :goto_30b

    .line 106
    :cond_69
    div-int/2addr v11, v10

    .line 107
    add-int/2addr v11, v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 111
    move-result v8

    .line 112
    move v5, v4

    .line 113
    move v12, v5

    .line 114
    move v13, v12

    .line 115
    move v14, v13

    .line 116
    move v15, v14

    .line 117
    move/from16 v18, v15

    .line 119
    const-wide/16 v16, 0x0

    .line 121
    :goto_78
    if-ge v14, v8, :cond_164

    .line 123
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 130
    move-result v4

    .line 131
    move/from16 v19, v6

    .line 133
    const/16 v6, 0x8

    .line 135
    if-ne v4, v6, :cond_90

    .line 137
    move/from16 v23, v1

    .line 139
    move/from16 v22, v2

    .line 141
    move/from16 v21, v9

    .line 143
    goto/16 :goto_157

    .line 145
    :cond_90
    instance-of v4, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 147
    add-int/lit8 v12, v12, 0x1

    .line 149
    if-eqz v4, :cond_9f

    .line 151
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    .line 153
    move/from16 v20, v12

    .line 155
    const/4 v12, 0x0

    .line 156
    invoke-virtual {v3, v6, v12, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    goto :goto_a2

    .line 160
    :cond_9f
    move/from16 v20, v12

    .line 162
    const/4 v12, 0x0

    .line 163
    :goto_a2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 169
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 171
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 173
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 175
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 177
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 179
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 181
    if-eqz v4, :cond_c1

    .line 183
    move-object v12, v3

    .line 184
    check-cast v12, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 186
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_c1

    .line 192
    const/4 v12, 0x1

    .line 193
    goto :goto_c2

    .line 194
    :cond_c1
    const/4 v12, 0x0

    .line 195
    :goto_c2
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 197
    iget-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 199
    if-eqz v12, :cond_ca

    .line 201
    const/4 v12, 0x1

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move v12, v10

    .line 204
    :goto_cb
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    move-result-object v21

    .line 208
    move/from16 v22, v2

    .line 210
    move-object/from16 v2, v21

    .line 212
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 214
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 217
    move-result v21

    .line 218
    move/from16 v23, v1

    .line 220
    sub-int v1, v21, v9

    .line 222
    move/from16 v21, v9

    .line 224
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 227
    move-result v9

    .line 228
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 231
    move-result v1

    .line 232
    if-eqz v4, :cond_ed

    .line 234
    move-object v4, v3

    .line 235
    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    const/4 v4, 0x0

    .line 239
    :goto_ee
    if-eqz v4, :cond_f8

    .line 241
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_f8

    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_f9

    .line 249
    :cond_f8
    const/4 v4, 0x0

    .line 250
    :goto_f9
    if-lez v12, :cond_11c

    .line 252
    if-eqz v4, :cond_100

    .line 254
    const/4 v9, 0x2

    .line 255
    if-lt v12, v9, :cond_11c

    .line 257
    :cond_100
    mul-int/2addr v12, v11

    .line 258
    const/high16 v9, -0x80000000

    .line 260
    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 263
    move-result v9

    .line 264
    invoke-virtual {v3, v9, v1}, Landroid/view/View;->measure(II)V

    .line 267
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 270
    move-result v9

    .line 271
    div-int v12, v9, v11

    .line 273
    rem-int/2addr v9, v11

    .line 274
    if-eqz v9, :cond_115

    .line 276
    add-int/lit8 v12, v12, 0x1

    .line 278
    :cond_115
    if-eqz v4, :cond_11d

    .line 280
    const/4 v9, 0x2

    .line 281
    if-ge v12, v9, :cond_11d

    .line 283
    const/4 v12, 0x2

    .line 284
    goto :goto_11d

    .line 285
    :cond_11c
    const/4 v12, 0x0

    .line 286
    :cond_11d
    :goto_11d
    iget-boolean v9, v2, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 288
    if-nez v9, :cond_125

    .line 290
    if-eqz v4, :cond_125

    .line 292
    const/4 v4, 0x1

    .line 293
    goto :goto_126

    .line 294
    :cond_125
    const/4 v4, 0x0

    .line 295
    :goto_126
    iput-boolean v4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 297
    iput v12, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 299
    mul-int v2, v11, v12

    .line 301
    const/high16 v4, 0x40000000  # 2.0f

    .line 303
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 306
    move-result v2

    .line 307
    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 310
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 313
    move-result v13

    .line 314
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 316
    if-eqz v1, :cond_13f

    .line 318
    add-int/lit8 v18, v18, 0x1

    .line 320
    :cond_13f
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 322
    if-eqz v1, :cond_144

    .line 324
    const/4 v15, 0x1

    .line 325
    :cond_144
    sub-int/2addr v10, v12

    .line 326
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 329
    move-result v1

    .line 330
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 333
    move-result v5

    .line 334
    const/4 v1, 0x1

    .line 335
    if-ne v12, v1, :cond_155

    .line 337
    shl-int v2, v1, v14

    .line 339
    int-to-long v1, v2

    .line 340
    or-long v16, v16, v1

    .line 342
    :cond_155
    move/from16 v12, v20

    .line 344
    :goto_157
    add-int/lit8 v14, v14, 0x1

    .line 346
    move/from16 v6, v19

    .line 348
    move/from16 v9, v21

    .line 350
    move/from16 v2, v22

    .line 352
    move/from16 v1, v23

    .line 354
    const/4 v4, 0x0

    .line 355
    goto/16 :goto_78

    .line 357
    :cond_164
    move/from16 v23, v1

    .line 359
    move/from16 v22, v2

    .line 361
    move/from16 v19, v6

    .line 363
    if-eqz v15, :cond_171

    .line 365
    const/4 v1, 0x2

    .line 366
    if-ne v12, v1, :cond_171

    .line 368
    const/4 v1, 0x1

    .line 369
    goto :goto_172

    .line 370
    :cond_171
    const/4 v1, 0x0

    .line 371
    :goto_172
    const/4 v2, 0x0

    .line 372
    :goto_173
    if-lez v18, :cond_1ad

    .line 374
    if-lez v10, :cond_1ad

    .line 376
    const v6, 0x7fffffff

    .line 379
    const/4 v9, 0x0

    .line 380
    const/4 v14, 0x0

    .line 381
    const-wide/16 v20, 0x0

    .line 383
    :goto_17e
    if-ge v14, v8, :cond_1a9

    .line 385
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 388
    move-result-object v24

    .line 389
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 392
    move-result-object v24

    .line 393
    move-object/from16 v3, v24

    .line 395
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 397
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 399
    if-nez v4, :cond_191

    .line 401
    goto :goto_1a6

    .line 402
    :cond_191
    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 404
    const-wide/16 v24, 0x1

    .line 406
    if-ge v3, v6, :cond_19c

    .line 408
    shl-long v20, v24, v14

    .line 410
    move v6, v3

    .line 411
    const/4 v9, 0x1

    .line 412
    goto :goto_1a6

    .line 413
    :cond_19c
    if-ne v3, v6, :cond_1a6

    .line 415
    shl-long v3, v24, v14

    .line 417
    or-long v3, v20, v3

    .line 419
    add-int/lit8 v9, v9, 0x1

    .line 421
    move-wide/from16 v20, v3

    .line 423
    :cond_1a6
    :goto_1a6
    add-int/lit8 v14, v14, 0x1

    .line 425
    goto :goto_17e

    .line 426
    :cond_1a9
    or-long v16, v16, v20

    .line 428
    if-le v9, v10, :cond_1b1

    .line 430
    :cond_1ad
    move v9, v7

    .line 431
    move/from16 v24, v8

    .line 433
    goto :goto_1fa

    .line 434
    :cond_1b1
    add-int/lit8 v6, v6, 0x1

    .line 436
    const/4 v2, 0x0

    .line 437
    :goto_1b4
    if-ge v2, v8, :cond_1f7

    .line 439
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 446
    move-result-object v4

    .line 447
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 449
    const/4 v9, 0x1

    .line 450
    shl-int v14, v9, v2

    .line 452
    move v9, v7

    .line 453
    move/from16 v24, v8

    .line 455
    int-to-long v7, v14

    .line 456
    and-long v25, v20, v7

    .line 458
    const-wide/16 v27, 0x0

    .line 460
    cmp-long v14, v25, v27

    .line 462
    if-nez v14, :cond_1d6

    .line 464
    iget v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 466
    if-ne v3, v6, :cond_1f1

    .line 468
    or-long v16, v16, v7

    .line 470
    goto :goto_1f1

    .line 471
    :cond_1d6
    if-eqz v1, :cond_1e7

    .line 473
    iget-boolean v7, v4, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 475
    if-eqz v7, :cond_1e7

    .line 477
    const/4 v7, 0x1

    .line 478
    if-ne v10, v7, :cond_1e7

    .line 480
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    .line 482
    add-int v14, v8, v11

    .line 484
    const/4 v7, 0x0

    .line 485
    invoke-virtual {v3, v14, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 488
    :cond_1e7
    iget v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 490
    const/4 v7, 0x1

    .line 491
    add-int/2addr v3, v7

    .line 492
    iput v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 494
    iput-boolean v7, v4, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 496
    add-int/lit8 v10, v10, -0x1

    .line 498
    :cond_1f1
    :goto_1f1
    add-int/lit8 v2, v2, 0x1

    .line 500
    move v7, v9

    .line 501
    move/from16 v8, v24

    .line 503
    goto :goto_1b4

    .line 504
    :cond_1f7
    const/4 v2, 0x1

    .line 505
    goto/16 :goto_173

    .line 507
    :goto_1fa
    const/4 v1, 0x1

    .line 508
    if-nez v15, :cond_201

    .line 510
    if-ne v12, v1, :cond_201

    .line 512
    move v3, v1

    .line 513
    goto :goto_202

    .line 514
    :cond_201
    const/4 v3, 0x0

    .line 515
    :goto_202
    if-lez v10, :cond_2b7

    .line 517
    const-wide/16 v6, 0x0

    .line 519
    cmp-long v4, v16, v6

    .line 521
    if-eqz v4, :cond_2b7

    .line 523
    sub-int/2addr v12, v1

    .line 524
    if-lt v10, v12, :cond_211

    .line 526
    if-nez v3, :cond_211

    .line 528
    if-le v13, v1, :cond_2b7

    .line 530
    :cond_211
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    .line 533
    move-result v1

    .line 534
    int-to-float v1, v1

    .line 535
    if-nez v3, :cond_251

    .line 537
    const-wide/16 v3, 0x1

    .line 539
    and-long v3, v16, v3

    .line 541
    const-wide/16 v6, 0x0

    .line 543
    cmp-long v3, v3, v6

    .line 545
    const/high16 v4, 0x3f000000  # 0.5f

    .line 547
    if-eqz v3, :cond_234

    .line 549
    const/4 v3, 0x0

    .line 550
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 553
    move-result-object v6

    .line 554
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 560
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 562
    if-nez v3, :cond_234

    .line 564
    sub-float/2addr v1, v4

    .line 565
    :cond_234
    add-int/lit8 v8, v24, -0x1

    .line 567
    const/4 v3, 0x1

    .line 568
    shl-int v6, v3, v8

    .line 570
    int-to-long v6, v6

    .line 571
    and-long v6, v16, v6

    .line 573
    const-wide/16 v12, 0x0

    .line 575
    cmp-long v3, v6, v12

    .line 577
    if-eqz v3, :cond_251

    .line 579
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    move-result-object v3

    .line 587
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 589
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 591
    if-nez v3, :cond_251

    .line 593
    sub-float/2addr v1, v4

    .line 594
    :cond_251
    const/4 v3, 0x0

    .line 595
    cmpl-float v3, v1, v3

    .line 597
    if-lez v3, :cond_25b

    .line 599
    mul-int/2addr v10, v11

    .line 600
    int-to-float v3, v10

    .line 601
    div-float/2addr v3, v1

    .line 602
    float-to-int v12, v3

    .line 603
    goto :goto_25c

    .line 604
    :cond_25b
    const/4 v12, 0x0

    .line 605
    :goto_25c
    move v1, v2

    .line 606
    move/from16 v3, v24

    .line 608
    const/4 v2, 0x0

    .line 609
    :goto_260
    if-ge v2, v3, :cond_2b5

    .line 611
    const/4 v4, 0x1

    .line 612
    shl-int v6, v4, v2

    .line 614
    int-to-long v6, v6

    .line 615
    and-long v6, v16, v6

    .line 617
    const-wide/16 v13, 0x0

    .line 619
    cmp-long v4, v6, v13

    .line 621
    if-nez v4, :cond_270

    .line 623
    const/4 v4, 0x2

    .line 624
    goto :goto_291

    .line 625
    :cond_270
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 632
    move-result-object v6

    .line 633
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 635
    instance-of v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 637
    if-eqz v4, :cond_293

    .line 639
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 641
    const/4 v1, 0x1

    .line 642
    iput-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 644
    if-nez v2, :cond_28f

    .line 646
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 648
    if-nez v1, :cond_28f

    .line 650
    neg-int v1, v12

    .line 651
    const/4 v4, 0x2

    .line 652
    div-int/2addr v1, v4

    .line 653
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 655
    goto :goto_290

    .line 656
    :cond_28f
    const/4 v4, 0x2

    .line 657
    :goto_290
    const/4 v1, 0x1

    .line 658
    :goto_291
    const/4 v7, 0x1

    .line 659
    goto :goto_2b2

    .line 660
    :cond_293
    const/4 v4, 0x2

    .line 661
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 663
    if-eqz v7, :cond_2a3

    .line 665
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 667
    const/4 v7, 0x1

    .line 668
    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 670
    neg-int v1, v12

    .line 671
    div-int/2addr v1, v4

    .line 672
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 674
    move v1, v7

    .line 675
    goto :goto_2b2

    .line 676
    :cond_2a3
    const/4 v7, 0x1

    .line 677
    if-eqz v2, :cond_2aa

    .line 679
    div-int/lit8 v8, v12, 0x2

    .line 681
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 683
    :cond_2aa
    add-int/lit8 v8, v3, -0x1

    .line 685
    if-eq v2, v8, :cond_2b2

    .line 687
    div-int/lit8 v8, v12, 0x2

    .line 689
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 691
    :cond_2b2
    :goto_2b2
    add-int/lit8 v2, v2, 0x1

    .line 693
    goto :goto_260

    .line 694
    :cond_2b5
    move v2, v1

    .line 695
    goto :goto_2b9

    .line 696
    :cond_2b7
    move/from16 v3, v24

    .line 698
    :goto_2b9
    if-eqz v2, :cond_2e1

    .line 700
    const/4 v4, 0x0

    .line 701
    :goto_2bc
    if-ge v4, v3, :cond_2e1

    .line 703
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 710
    move-result-object v2

    .line 711
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 713
    iget-boolean v6, v2, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 715
    if-nez v6, :cond_2cf

    .line 717
    const/high16 v2, 0x40000000  # 2.0f

    .line 719
    goto :goto_2de

    .line 720
    :cond_2cf
    iget v6, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 722
    mul-int/2addr v6, v11

    .line 723
    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 725
    add-int/2addr v6, v2

    .line 726
    const/high16 v2, 0x40000000  # 2.0f

    .line 728
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 731
    move-result v6

    .line 732
    invoke-virtual {v1, v6, v9}, Landroid/view/View;->measure(II)V

    .line 735
    :goto_2de
    add-int/lit8 v4, v4, 0x1

    .line 737
    goto :goto_2bc

    .line 738
    :cond_2e1
    const/high16 v2, 0x40000000  # 2.0f

    .line 740
    move/from16 v1, v23

    .line 742
    if-eq v1, v2, :cond_2e9

    .line 744
    move v6, v5

    .line 745
    goto :goto_2eb

    .line 746
    :cond_2e9
    move/from16 v6, v19

    .line 748
    :goto_2eb
    move/from16 v2, v22

    .line 750
    invoke-virtual {v0, v2, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 753
    goto :goto_30b

    .line 754
    :cond_2f1
    move/from16 v10, p2

    .line 756
    const/4 v12, 0x0

    .line 757
    :goto_2f4
    if-ge v12, v1, :cond_308

    .line 759
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 762
    move-result-object v2

    .line 763
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 766
    move-result-object v2

    .line 767
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 769
    const/4 v3, 0x0

    .line 770
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 772
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 774
    add-int/lit8 v12, v12, 0x1

    .line 776
    goto :goto_2f4

    .line 777
    :cond_308
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/i0;->onMeasure(II)V

    .line 780
    :goto_30b
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    .line 5
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->l:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 8
    if-eqz v1, :cond_d

    .line 10
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 17
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    .line 19
    :goto_12
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Z

    .line 3
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    .line 3
    if-eq v0, p1, :cond_1a

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    .line 7
    if-nez p1, :cond_f

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iput-object p0, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 5
    iget-object p1, p1, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 9
    return-void
.end method
