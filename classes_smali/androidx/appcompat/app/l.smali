.class public final Landroidx/appcompat/app/l;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lm0/v;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 18

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    move-result v1

    move-object v2, p0

    iget-object v3, v2, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    move-result v4

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_13c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_13c

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_12a

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    if-nez v0, :cond_41

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    :cond_41
    iget-object v9, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->c()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->d()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->b()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget-object v11, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_71

    const/4 v12, 0x2

    :try_start_5f
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v6

    aput-object v0, v12, v8

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_69

    goto :goto_71

    :catch_69
    move-exception v0

    const-string v10, "ViewUtils"

    const-string v11, "Could not invoke computeFitSystemWindows"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    :goto_71
    iget v0, v9, Landroid/graphics/Rect;->top:I

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v11, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget-object v12, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v11}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    move-result-object v11

    if-nez v11, :cond_83

    move v12, v6

    goto :goto_87

    :cond_83
    invoke-virtual {v11}, Lm0/r0;->c()I

    move-result v12

    :goto_87
    if-nez v11, :cond_8b

    move v11, v6

    goto :goto_8f

    :cond_8b
    invoke-virtual {v11}, Lm0/r0;->d()I

    move-result v11

    :goto_8f
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v0, :cond_9e

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v10, :cond_9e

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v9, :cond_9c

    goto :goto_9e

    :cond_9c
    move v9, v6

    goto :goto_a5

    :cond_9e
    :goto_9e
    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v9, v8

    :goto_a5
    if-lez v0, :cond_cd

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    if-nez v0, :cond_cd

    new-instance v0, Landroid/view/View;

    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v13, 0x33

    const/4 v14, -0x1

    invoke-direct {v0, v14, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    iget-object v11, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    invoke-virtual {v10, v11, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f0

    :cond_cd
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v10, v13, :cond_e5

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v10, v12, :cond_e5

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v10, v11, :cond_f0

    :cond_e5
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f0
    :goto_f0
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    if-eqz v0, :cond_f6

    move v10, v8

    goto :goto_f7

    :cond_f6
    move v10, v6

    :goto_f7
    if-eqz v10, :cond_121

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    invoke-static {v0}, Lm0/g0$d;->g(Landroid/view/View;)I

    move-result v11

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_10a

    goto :goto_10b

    :cond_10a
    move v8, v6

    :goto_10b
    if-eqz v8, :cond_116

    iget-object v8, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    sget v11, Lh/c;->abc_decor_view_status_guard_light:I

    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    goto :goto_11e

    :cond_116
    iget-object v8, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    sget v11, Lh/c;->abc_decor_view_status_guard:I

    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    :goto_11e
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_121
    iget-boolean v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v0, :cond_128

    if-eqz v10, :cond_128

    move v4, v6

    :cond_128
    move v8, v9

    goto :goto_134

    :cond_12a
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_132

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v10, v6

    goto :goto_134

    :cond_132
    move v8, v6

    move v10, v8

    :goto_134
    if-eqz v8, :cond_13d

    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13d

    :cond_13c
    move v10, v6

    :cond_13d
    :goto_13d
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    if-eqz v0, :cond_147

    if-eqz v10, :cond_144

    move v5, v6

    :cond_144
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_147
    if-eq v1, v4, :cond_15e

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->c()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->d()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lm0/r0;->b()I

    move-result v3

    move-object/from16 v5, p2

    invoke-virtual {v5, v0, v4, v1, v3}, Lm0/r0;->g(IIII)Lm0/r0;

    move-result-object v0

    move-object/from16 v1, p1

    goto :goto_163

    :cond_15e
    move-object/from16 v5, p2

    move-object/from16 v1, p1

    move-object v0, v5

    :goto_163
    invoke-static {v1, v0}, Lm0/g0;->h(Landroid/view/View;Lm0/r0;)Lm0/r0;

    move-result-object v0

    return-object v0
.end method
