.class public final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/l;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/d$d;
    }
.end annotation


# static fields
.field public static final D:I


# instance fields
.field public A:Landroid/view/ViewTreeObserver;

.field public B:Landroid/widget/PopupWindow$OnDismissListener;

.field public C:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Landroidx/appcompat/view/menu/d$a;

.field public final k:Landroidx/appcompat/view/menu/d$b;

.field public final l:Landroidx/appcompat/view/menu/d$c;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Landroidx/appcompat/view/menu/n$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lh/g;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/d;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    new-instance v0, Landroidx/appcompat/view/menu/d$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$b;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    new-instance v0, Landroidx/appcompat/view/menu/d$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$c;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->l:Landroidx/appcompat/view/menu/d$c;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    iput v0, p0, Landroidx/appcompat/view/menu/d;->n:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    iput p3, p0, Landroidx/appcompat/view/menu/d;->d:I

    iput p4, p0, Landroidx/appcompat/view/menu/d;->e:I

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/d;->f:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->x:Z

    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_41

    goto :goto_42

    :cond_41
    move v0, p3

    :goto_42
    iput v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lh/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->c:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->k(Landroidx/appcompat/view/menu/h;)V

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void
.end method

.method public final c()Landroidx/appcompat/widget/f0;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1c

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    :goto_1c
    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    if-eq v0, p1, :cond_14

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->n:I

    :cond_14
    return-void
.end method

.method public final dismiss()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    new-array v2, v0, [Landroidx/appcompat/view/menu/d$d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/d$d;

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_26

    aget-object v2, v1, v0

    iget-object v3, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {v3}, Landroidx/appcompat/widget/k0;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v2, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {v2}, Landroidx/appcompat/widget/k0;->dismiss()V

    goto :goto_12

    :cond_26
    return-void
.end method

.method public final e(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->x:Z

    return-void
.end method

.method public final f(I)V
    .registers 4

    iget v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    if-eq v0, p1, :cond_14

    iput p1, p0, Landroidx/appcompat/view/menu/d;->m:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->n:I

    :cond_14
    return-void
.end method

.method public final flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->r:Z

    iput p1, p0, Landroidx/appcompat/view/menu/d;->v:I

    return-void
.end method

.method public final h(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->y:Z

    return-void
.end method

.method public final i(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->s:Z

    iput p1, p0, Landroidx/appcompat/view/menu/d;->w:I

    return-void
.end method

.method public final isShowing()Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public final k(Landroidx/appcompat/view/menu/h;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/view/menu/g;

    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->f:Z

    sget v5, Landroidx/appcompat/view/menu/d;->D:I

    invoke-direct {v3, v1, v2, v4, v5}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_21

    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->x:Z

    if-eqz v4, :cond_21

    iput-boolean v5, v3, Landroidx/appcompat/view/menu/g;->c:Z

    goto :goto_2d

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/h;)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/view/menu/g;->c:Z

    :cond_2d
    :goto_2d
    iget-object v4, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget v6, v0, Landroidx/appcompat/view/menu/d;->c:I

    invoke-static {v3, v4, v6}, Landroidx/appcompat/view/menu/l;->b(Landroidx/appcompat/view/menu/g;Landroid/content/Context;I)I

    move-result v4

    new-instance v6, Landroidx/appcompat/widget/m0;

    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget v8, v0, Landroidx/appcompat/view/menu/d;->d:I

    iget v9, v0, Landroidx/appcompat/view/menu/d;->e:I

    invoke-direct {v6, v7, v8, v9}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;II)V

    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->l:Landroidx/appcompat/view/menu/d$c;

    iput-object v7, v6, Landroidx/appcompat/widget/m0;->E:Landroidx/appcompat/widget/l0;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/k0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    iput-object v7, v6, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    iget v7, v0, Landroidx/appcompat/view/menu/d;->n:I

    iput v7, v6, Landroidx/appcompat/widget/k0;->l:I

    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->A:Z

    iget-object v7, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v7, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/k0;->e(I)V

    iget v3, v0, Landroidx/appcompat/view/menu/d;->n:I

    iput v3, v6, Landroidx/appcompat/widget/k0;->l:I

    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    if-lez v3, :cond_e6

    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    iget-object v10, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v11

    move v12, v7

    :goto_86
    if-ge v12, v11, :cond_9c

    invoke-virtual {v10, v12}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_99

    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v1, v14, :cond_99

    goto :goto_9d

    :cond_99
    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    :cond_9c
    const/4 v13, 0x0

    :goto_9d
    if-nez v13, :cond_a0

    goto :goto_e7

    :cond_a0
    iget-object v10, v3, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v10, v10, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_b9

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/g;

    goto :goto_bc

    :cond_b9
    check-cast v11, Landroidx/appcompat/view/menu/g;

    move v12, v7

    :goto_bc
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/g;->getCount()I

    move-result v14

    move v15, v7

    :goto_c1
    const/4 v8, -0x1

    if-ge v15, v14, :cond_ce

    invoke-virtual {v11, v15}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    move-result-object v9

    if-ne v13, v9, :cond_cb

    goto :goto_cf

    :cond_cb
    add-int/lit8 v15, v15, 0x1

    goto :goto_c1

    :cond_ce
    move v15, v8

    :goto_cf
    if-ne v15, v8, :cond_d2

    goto :goto_e7

    :cond_d2
    add-int/2addr v15, v12

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v15, v8

    if-ltz v15, :cond_e7

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v15, v8, :cond_e1

    goto :goto_e7

    :cond_e1
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_e8

    :cond_e6
    const/4 v3, 0x0

    :cond_e7
    :goto_e7
    const/4 v8, 0x0

    :goto_e8
    if-eqz v8, :cond_1b2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-gt v9, v10, :cond_108

    sget-object v9, Landroidx/appcompat/widget/m0;->F:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_10d

    :try_start_f4
    iget-object v10, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_ff} :catch_100

    goto :goto_10d

    :catch_100
    const-string v9, "MenuPopupWindow"

    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    :cond_108
    iget-object v9, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-static {v9, v7}, Landroidx/appcompat/widget/m0$b;->a(Landroid/widget/PopupWindow;Z)V

    :cond_10d
    :goto_10d
    iget-object v9, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroidx/appcompat/widget/m0$a;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    iget-object v9, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/d$d;

    iget-object v9, v9, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v9, v9, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    const/4 v10, 0x2

    new-array v11, v10, [I

    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v0, Landroidx/appcompat/view/menu/d;->q:I

    if-ne v12, v5, :cond_145

    aget v11, v11, v7

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_14a

    goto :goto_14c

    :cond_145
    aget v9, v11, v7

    sub-int/2addr v9, v4

    if-gez v9, :cond_14c

    :cond_14a
    move v9, v5

    goto :goto_14d

    :cond_14c
    :goto_14c
    move v9, v7

    :goto_14d
    if-ne v9, v5, :cond_151

    move v10, v5

    goto :goto_152

    :cond_151
    move v10, v7

    :goto_152
    iput v9, v0, Landroidx/appcompat/view/menu/d;->q:I

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    const/4 v12, 0x5

    if-lt v9, v11, :cond_160

    iput-object v8, v6, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    move v9, v7

    move v13, v9

    goto :goto_191

    :cond_160
    const/4 v9, 0x2

    new-array v11, v9, [I

    iget-object v13, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v9, v9, [I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v13, v0, Landroidx/appcompat/view/menu/d;->n:I

    and-int/lit8 v13, v13, 0x7

    if-ne v13, v12, :cond_187

    aget v13, v11, v7

    iget-object v14, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v11, v7

    aget v13, v9, v7

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v9, v7

    :cond_187
    aget v13, v9, v7

    aget v14, v11, v7

    sub-int/2addr v13, v14

    aget v9, v9, v5

    aget v11, v11, v5

    sub-int/2addr v9, v11

    :goto_191
    iget v11, v0, Landroidx/appcompat/view/menu/d;->n:I

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_19f

    if-eqz v10, :cond_19a

    add-int/2addr v13, v4

    goto :goto_1a8

    :cond_19a
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1a7

    :cond_19f
    if-eqz v10, :cond_1a7

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v13, v4

    goto :goto_1a8

    :cond_1a7
    :goto_1a7
    sub-int/2addr v13, v4

    :goto_1a8
    iput v13, v6, Landroidx/appcompat/widget/k0;->f:I

    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->k:Z

    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->j:Z

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    goto :goto_1d0

    :cond_1b2
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->r:Z

    if-eqz v4, :cond_1ba

    iget v4, v0, Landroidx/appcompat/view/menu/d;->v:I

    iput v4, v6, Landroidx/appcompat/widget/k0;->f:I

    :cond_1ba
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->s:Z

    if-eqz v4, :cond_1c3

    iget v4, v0, Landroidx/appcompat/view/menu/d;->w:I

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    :cond_1c3
    iget-object v4, v0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    if-eqz v4, :cond_1cd

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1ce

    :cond_1cd
    const/4 v10, 0x0

    :goto_1ce
    iput-object v10, v6, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    :goto_1d0
    new-instance v4, Landroidx/appcompat/view/menu/d$d;

    iget v5, v0, Landroidx/appcompat/view/menu/d;->q:I

    invoke-direct {v4, v6, v1, v5}, Landroidx/appcompat/view/menu/d$d;-><init>(Landroidx/appcompat/widget/m0;Landroidx/appcompat/view/menu/h;I)V

    iget-object v5, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/appcompat/widget/k0;->show()V

    iget-object v4, v6, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_212

    iget-boolean v3, v0, Landroidx/appcompat/view/menu/d;->y:Z

    if-eqz v3, :cond_212

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_212

    sget v3, Lh/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v2, v1, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Landroidx/appcompat/widget/k0;->show()V

    :cond_212
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    iget-object v3, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    if-ne p1, v3, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    if-gez v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    :cond_35
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->C:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v2, v2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-static {v2, v3}, Landroidx/appcompat/widget/m0$a;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v2, v2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_55
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_72

    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/d$d;

    iget v4, v4, Landroidx/appcompat/view/menu/d$d;->c:I

    iput v4, p0, Landroidx/appcompat/view/menu/d;->q:I

    goto :goto_81

    :cond_72
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_7e

    move v4, v1

    goto :goto_7f

    :cond_7e
    move v4, v2

    :goto_7f
    iput v4, p0, Landroidx/appcompat/view/menu/d;->q:I

    :goto_81
    if-nez v0, :cond_ad

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    if-eqz p2, :cond_8d

    invoke-interface {p2, p1, v2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    :cond_8d
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9e

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9e
    iput-object v3, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    :cond_a0
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_bc

    :cond_ad
    if-eqz p2, :cond_bc

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/d$d;

    iget-object p1, p1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method public final onDismiss()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1e

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    iget-object v4, v3, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {v4}, Landroidx/appcompat/widget/k0;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_26

    iget-object v0, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    :cond_26
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/d$d;

    iget-object v3, v1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    if-ne p1, v3, :cond_6

    iget-object p1, v1, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object p1, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/h;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    if-eqz v0, :cond_2f

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    :cond_2f
    return v2

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final show()V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/h;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/d;->k(Landroidx/appcompat/view/menu/h;)V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    if-eqz v0, :cond_43

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_43
    return-void
.end method

.method public final updateMenuView(Z)V
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    goto :goto_29

    :cond_27
    check-cast v0, Landroidx/appcompat/view/menu/g;

    :goto_29
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->notifyDataSetChanged()V

    goto :goto_6

    :cond_2d
    return-void
.end method
