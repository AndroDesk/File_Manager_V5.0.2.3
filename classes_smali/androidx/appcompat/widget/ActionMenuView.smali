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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/i0;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    return-void
.end method

.method public static b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    const/16 v0, 0x10

    if-eqz p0, :cond_1c

    instance-of v1, p0, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz v1, :cond_10

    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    goto :goto_15

    :cond_10
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_15
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1b

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1b
    return-object v1

    :cond_1c
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/j;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public final c(I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1f

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v3, :cond_1f

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->needsDividerAfter()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1f
    if-lez p1, :cond_2c

    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p1, :cond_2c

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2c
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroidx/appcompat/widget/i0$a;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/i0$a;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/i0$a;
    .registers 2

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/h;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/view/menu/n$a;

    if-eqz v0, :cond_28

    goto :goto_2d

    :cond_28
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    :goto_2d
    iput-object v0, v1, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iput-object p0, v0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    iget-object v0, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_16

    :cond_e
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    :cond_1d
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    :cond_19
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/i0;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/i0;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2a
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_8d

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3a

    goto :goto_8a

    :cond_3a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v14, :cond_7a

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->c(I)Z

    move-result v14

    if-eqz v14, :cond_4f

    add-int/2addr v9, v3

    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_6f

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    :goto_6f
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_8a

    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->c(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_8d
    if-ne v1, v12, :cond_ac

    if-nez v9, :cond_ac

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ac
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_b4

    div-int v3, v5, v10

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_fa

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_c6
    if-ge v7, v1, :cond_134

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f7

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v8, :cond_dd

    goto :goto_f7

    :cond_dd
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_f7
    :goto_f7
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_ff
    if-ge v7, v1, :cond_134

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_131

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v8, :cond_116

    goto :goto_131

    :cond_116
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v8, v5

    move v5, v8

    :cond_131
    :goto_131
    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    :cond_134
    return-void
.end method

.method public final onMeasure(II)V
    .registers 32

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_10

    move v2, v5

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-eq v1, v2, :cond_17

    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    :cond_17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-eqz v2, :cond_2c

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    if-eqz v2, :cond_2c

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    if-eq v1, v6, :cond_2c

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Z

    if-eqz v2, :cond_2f1

    if-lez v1, :cond_2f1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, -0x2

    move/from16 v10, p2

    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    sub-int/2addr v2, v8

    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    div-int v10, v2, v8

    rem-int v11, v2, v8

    if-nez v10, :cond_69

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_30b

    :cond_69
    div-int/2addr v11, v10

    add-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v5, v4

    move v12, v5

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v18, v15

    const-wide/16 v16, 0x0

    :goto_78
    if-ge v14, v8, :cond_164

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v19, v6

    const/16 v6, 0x8

    if-ne v4, v6, :cond_90

    move/from16 v23, v1

    move/from16 v22, v2

    move/from16 v21, v9

    goto/16 :goto_157

    :cond_90
    instance-of v4, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v12, v12, 0x1

    if-eqz v4, :cond_9f

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    move/from16 v20, v12

    const/4 v12, 0x0

    invoke-virtual {v3, v6, v12, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a2

    :cond_9f
    move/from16 v20, v12

    const/4 v12, 0x0

    :goto_a2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v4, :cond_c1

    move-object v12, v3

    check-cast v12, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    move-result v12

    if-eqz v12, :cond_c1

    const/4 v12, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v12, 0x0

    :goto_c2
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    iget-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v12, :cond_ca

    const/4 v12, 0x1

    goto :goto_cb

    :cond_ca
    move v12, v10

    :goto_cb
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v23, v1

    sub-int v1, v21, v9

    move/from16 v21, v9

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-eqz v4, :cond_ed

    move-object v4, v3

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_ee

    :cond_ed
    const/4 v4, 0x0

    :goto_ee
    if-eqz v4, :cond_f8

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    move-result v4

    if-eqz v4, :cond_f8

    const/4 v4, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v4, 0x0

    :goto_f9
    if-lez v12, :cond_11c

    if-eqz v4, :cond_100

    const/4 v9, 0x2

    if-lt v12, v9, :cond_11c

    :cond_100
    mul-int/2addr v12, v11

    const/high16 v9, -0x80000000

    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v3, v9, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int v12, v9, v11

    rem-int/2addr v9, v11

    if-eqz v9, :cond_115

    add-int/lit8 v12, v12, 0x1

    :cond_115
    if-eqz v4, :cond_11d

    const/4 v9, 0x2

    if-ge v12, v9, :cond_11d

    const/4 v12, 0x2

    goto :goto_11d

    :cond_11c
    const/4 v12, 0x0

    :cond_11d
    :goto_11d
    iget-boolean v9, v2, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez v9, :cond_125

    if-eqz v4, :cond_125

    const/4 v4, 0x1

    goto :goto_126

    :cond_125
    const/4 v4, 0x0

    :goto_126
    iput-boolean v4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    iput v12, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int v2, v11, v12

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-eqz v1, :cond_13f

    add-int/lit8 v18, v18, 0x1

    :cond_13f
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v1, :cond_144

    const/4 v15, 0x1

    :cond_144
    sub-int/2addr v10, v12

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v1, 0x1

    if-ne v12, v1, :cond_155

    shl-int v2, v1, v14

    int-to-long v1, v2

    or-long v16, v16, v1

    :cond_155
    move/from16 v12, v20

    :goto_157
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v19

    move/from16 v9, v21

    move/from16 v2, v22

    move/from16 v1, v23

    const/4 v4, 0x0

    goto/16 :goto_78

    :cond_164
    move/from16 v23, v1

    move/from16 v22, v2

    move/from16 v19, v6

    if-eqz v15, :cond_171

    const/4 v1, 0x2

    if-ne v12, v1, :cond_171

    const/4 v1, 0x1

    goto :goto_172

    :cond_171
    const/4 v1, 0x0

    :goto_172
    const/4 v2, 0x0

    :goto_173
    if-lez v18, :cond_1ad

    if-lez v10, :cond_1ad

    const v6, 0x7fffffff

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-wide/16 v20, 0x0

    :goto_17e
    if-ge v14, v8, :cond_1a9

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v3, v24

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-nez v4, :cond_191

    goto :goto_1a6

    :cond_191
    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    const-wide/16 v24, 0x1

    if-ge v3, v6, :cond_19c

    shl-long v20, v24, v14

    move v6, v3

    const/4 v9, 0x1

    goto :goto_1a6

    :cond_19c
    if-ne v3, v6, :cond_1a6

    shl-long v3, v24, v14

    or-long v3, v20, v3

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v3

    :cond_1a6
    :goto_1a6
    add-int/lit8 v14, v14, 0x1

    goto :goto_17e

    :cond_1a9
    or-long v16, v16, v20

    if-le v9, v10, :cond_1b1

    :cond_1ad
    move v9, v7

    move/from16 v24, v8

    goto :goto_1fa

    :cond_1b1
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    :goto_1b4
    if-ge v2, v8, :cond_1f7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v9, 0x1

    shl-int v14, v9, v2

    move v9, v7

    move/from16 v24, v8

    int-to-long v7, v14

    and-long v25, v20, v7

    const-wide/16 v27, 0x0

    cmp-long v14, v25, v27

    if-nez v14, :cond_1d6

    iget v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v3, v6, :cond_1f1

    or-long v16, v16, v7

    goto :goto_1f1

    :cond_1d6
    if-eqz v1, :cond_1e7

    iget-boolean v7, v4, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-eqz v7, :cond_1e7

    const/4 v7, 0x1

    if-ne v10, v7, :cond_1e7

    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    add-int v14, v8, v11

    const/4 v7, 0x0

    invoke-virtual {v3, v14, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_1e7
    iget v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    iput v3, v4, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    iput-boolean v7, v4, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    add-int/lit8 v10, v10, -0x1

    :cond_1f1
    :goto_1f1
    add-int/lit8 v2, v2, 0x1

    move v7, v9

    move/from16 v8, v24

    goto :goto_1b4

    :cond_1f7
    const/4 v2, 0x1

    goto/16 :goto_173

    :goto_1fa
    const/4 v1, 0x1

    if-nez v15, :cond_201

    if-ne v12, v1, :cond_201

    move v3, v1

    goto :goto_202

    :cond_201
    const/4 v3, 0x0

    :goto_202
    if-lez v10, :cond_2b7

    const-wide/16 v6, 0x0

    cmp-long v4, v16, v6

    if-eqz v4, :cond_2b7

    sub-int/2addr v12, v1

    if-lt v10, v12, :cond_211

    if-nez v3, :cond_211

    if-le v13, v1, :cond_2b7

    :cond_211
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v3, :cond_251

    const-wide/16 v3, 0x1

    and-long v3, v16, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz v3, :cond_234

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v3, :cond_234

    sub-float/2addr v1, v4

    :cond_234
    add-int/lit8 v8, v24, -0x1

    const/4 v3, 0x1

    shl-int v6, v3, v8

    int-to-long v6, v6

    and-long v6, v16, v6

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-eqz v3, :cond_251

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v3, :cond_251

    sub-float/2addr v1, v4

    :cond_251
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_25b

    mul-int/2addr v10, v11

    int-to-float v3, v10

    div-float/2addr v3, v1

    float-to-int v12, v3

    goto :goto_25c

    :cond_25b
    const/4 v12, 0x0

    :goto_25c
    move v1, v2

    move/from16 v3, v24

    const/4 v2, 0x0

    :goto_260
    if-ge v2, v3, :cond_2b5

    const/4 v4, 0x1

    shl-int v6, v4, v2

    int-to-long v6, v6

    and-long v6, v16, v6

    const-wide/16 v13, 0x0

    cmp-long v4, v6, v13

    if-nez v4, :cond_270

    const/4 v4, 0x2

    goto :goto_291

    :cond_270
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    instance-of v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_293

    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    const/4 v1, 0x1

    iput-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v2, :cond_28f

    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v1, :cond_28f

    neg-int v1, v12

    const/4 v4, 0x2

    div-int/2addr v1, v4

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_290

    :cond_28f
    const/4 v4, 0x2

    :goto_290
    const/4 v1, 0x1

    :goto_291
    const/4 v7, 0x1

    goto :goto_2b2

    :cond_293
    const/4 v4, 0x2

    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v7, :cond_2a3

    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    neg-int v1, v12

    div-int/2addr v1, v4

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v1, v7

    goto :goto_2b2

    :cond_2a3
    const/4 v7, 0x1

    if-eqz v2, :cond_2aa

    div-int/lit8 v8, v12, 0x2

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_2aa
    add-int/lit8 v8, v3, -0x1

    if-eq v2, v8, :cond_2b2

    div-int/lit8 v8, v12, 0x2

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2b2
    :goto_2b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_260

    :cond_2b5
    move v2, v1

    goto :goto_2b9

    :cond_2b7
    move/from16 v3, v24

    :goto_2b9
    if-eqz v2, :cond_2e1

    const/4 v4, 0x0

    :goto_2bc
    if-ge v4, v3, :cond_2e1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v6, v2, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v6, :cond_2cf

    const/high16 v2, 0x40000000  # 2.0f

    goto :goto_2de

    :cond_2cf
    iget v6, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int/2addr v6, v11

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    add-int/2addr v6, v2

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v6, v9}, Landroid/view/View;->measure(II)V

    :goto_2de
    add-int/lit8 v4, v4, 0x1

    goto :goto_2bc

    :cond_2e1
    const/high16 v2, 0x40000000  # 2.0f

    move/from16 v1, v23

    if-eq v1, v2, :cond_2e9

    move v6, v5

    goto :goto_2eb

    :cond_2e9
    move/from16 v6, v19

    :goto_2eb
    move/from16 v2, v22

    invoke-virtual {v0, v2, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_30b

    :cond_2f1
    move/from16 v10, p2

    const/4 v12, 0x0

    :goto_2f4
    if-ge v12, v1, :cond_308

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_2f4

    :cond_308
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/i0;->onMeasure(II)V

    :goto_30b
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->l:Landroidx/appcompat/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    :goto_12
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    if-eq v0, p1, :cond_1a

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    goto :goto_1a

    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iput-object p0, p1, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    iget-object p1, p1, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    return-void
.end method
