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

    .line 1
    sget v0, Lh/g;->abc_cascading_menu_item_layout:I

    .line 3
    sput v0, Landroidx/appcompat/view/menu/d;->D:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    .line 20
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 23
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    .line 25
    new-instance v0, Landroidx/appcompat/view/menu/d$b;

    .line 27
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$b;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 30
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    .line 32
    new-instance v0, Landroidx/appcompat/view/menu/d$c;

    .line 34
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$c;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 37
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->l:Landroidx/appcompat/view/menu/d$c;

    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    .line 42
    iput v0, p0, Landroidx/appcompat/view/menu/d;->n:I

    .line 44
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 48
    iput p3, p0, Landroidx/appcompat/view/menu/d;->d:I

    .line 50
    iput p4, p0, Landroidx/appcompat/view/menu/d;->e:I

    .line 52
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/d;->f:Z

    .line 54
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->x:Z

    .line 56
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 58
    invoke-static {p2}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 61
    move-result p2

    .line 62
    const/4 p3, 0x1

    .line 63
    if-ne p2, p3, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v0, p3

    .line 67
    :goto_42
    iput v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 76
    move-result-object p2

    .line 77
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    div-int/lit8 p2, p2, 0x2

    .line 81
    sget p3, Lh/d;->abc_config_prefDialogWidth:I

    .line 83
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    move-result p1

    .line 87
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 90
    move-result p1

    .line 91
    iput p1, p0, Landroidx/appcompat/view/menu/d;->c:I

    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 95
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 98
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->g:Landroid/os/Handler;

    .line 100
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->k(Landroidx/appcompat/view/menu/h;)V

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_14
    return-void
.end method

.method public final c()Landroidx/appcompat/widget/f0;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_1c

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 25
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 27
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 29
    :goto_1c
    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 7
    iget v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/view/menu/d;->n:I

    .line 21
    :cond_14
    return-void
.end method

.method public final dismiss()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_26

    .line 9
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 11
    new-array v2, v0, [Landroidx/appcompat/view/menu/d$d;

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, [Landroidx/appcompat/view/menu/d$d;

    .line 19
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, -0x1

    .line 21
    if-ltz v0, :cond_26

    .line 23
    aget-object v2, v1, v0

    .line 25
    iget-object v3, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 27
    invoke-virtual {v3}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_12

    .line 33
    iget-object v2, v2, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    return-void
.end method

.method public final e(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->x:Z

    .line 3
    return-void
.end method

.method public final f(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/d;->m:I

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput p1, p0, Landroidx/appcompat/view/menu/d;->m:I

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/view/menu/d;->n:I

    .line 21
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

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->r:Z

    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/d;->v:I

    .line 6
    return-void
.end method

.method public final h(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->y:Z

    .line 3
    return-void
.end method

.method public final i(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->s:Z

    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/d;->w:I

    .line 6
    return-void
.end method

.method public final isShowing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_1a

    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 18
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public final k(Landroidx/appcompat/view/menu/h;)V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Landroidx/appcompat/view/menu/g;

    .line 13
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->f:Z

    .line 15
    sget v5, Landroidx/appcompat/view/menu/d;->D:I

    .line 17
    invoke-direct {v3, v1, v2, v4, v5}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v4, :cond_21

    .line 27
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->x:Z

    .line 29
    if-eqz v4, :cond_21

    .line 31
    iput-boolean v5, v3, Landroidx/appcompat/view/menu/g;->c:Z

    .line 33
    goto :goto_2d

    .line 34
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2d

    .line 40
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/h;)Z

    .line 43
    move-result v4

    .line 44
    iput-boolean v4, v3, Landroidx/appcompat/view/menu/g;->c:Z

    .line 46
    :cond_2d
    :goto_2d
    iget-object v4, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 48
    iget v6, v0, Landroidx/appcompat/view/menu/d;->c:I

    .line 50
    invoke-static {v3, v4, v6}, Landroidx/appcompat/view/menu/l;->b(Landroidx/appcompat/view/menu/g;Landroid/content/Context;I)I

    .line 53
    move-result v4

    .line 54
    new-instance v6, Landroidx/appcompat/widget/m0;

    .line 56
    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 58
    iget v8, v0, Landroidx/appcompat/view/menu/d;->d:I

    .line 60
    iget v9, v0, Landroidx/appcompat/view/menu/d;->e:I

    .line 62
    invoke-direct {v6, v7, v8, v9}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;II)V

    .line 65
    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->l:Landroidx/appcompat/view/menu/d$c;

    .line 67
    iput-object v7, v6, Landroidx/appcompat/widget/m0;->E:Landroidx/appcompat/widget/l0;

    .line 69
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/k0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 75
    iget-object v7, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 77
    iput-object v7, v6, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 79
    iget v7, v0, Landroidx/appcompat/view/menu/d;->n:I

    .line 81
    iput v7, v6, Landroidx/appcompat/widget/k0;->l:I

    .line 83
    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->A:Z

    .line 85
    iget-object v7, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 87
    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 90
    iget-object v7, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 92
    const/4 v8, 0x2

    .line 93
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 96
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/k0;->e(I)V

    .line 102
    iget v3, v0, Landroidx/appcompat/view/menu/d;->n:I

    .line 104
    iput v3, v6, Landroidx/appcompat/widget/k0;->l:I

    .line 106
    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v3

    .line 112
    const/4 v7, 0x0

    .line 113
    if-lez v3, :cond_e6

    .line 115
    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 120
    move-result v10

    .line 121
    sub-int/2addr v10, v5

    .line 122
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    .line 128
    iget-object v10, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 130
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/h;->size()I

    .line 133
    move-result v11

    .line 134
    move v12, v7

    .line 135
    :goto_86
    if-ge v12, v11, :cond_9c

    .line 137
    invoke-virtual {v10, v12}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 140
    move-result-object v13

    .line 141
    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 144
    move-result v14

    .line 145
    if-eqz v14, :cond_99

    .line 147
    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 150
    move-result-object v14

    .line 151
    if-ne v1, v14, :cond_99

    .line 153
    goto :goto_9d

    .line 154
    :cond_99
    add-int/lit8 v12, v12, 0x1

    .line 156
    goto :goto_86

    .line 157
    :cond_9c
    const/4 v13, 0x0

    .line 158
    :goto_9d
    if-nez v13, :cond_a0

    .line 160
    goto :goto_e7

    .line 161
    :cond_a0
    iget-object v10, v3, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 163
    iget-object v10, v10, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 165
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 168
    move-result-object v11

    .line 169
    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    .line 171
    if-eqz v12, :cond_b9

    .line 173
    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    .line 175
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 178
    move-result v12

    .line 179
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Landroidx/appcompat/view/menu/g;

    .line 185
    goto :goto_bc

    .line 186
    :cond_b9
    check-cast v11, Landroidx/appcompat/view/menu/g;

    .line 188
    move v12, v7

    .line 189
    :goto_bc
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/g;->getCount()I

    .line 192
    move-result v14

    .line 193
    move v15, v7

    .line 194
    :goto_c1
    const/4 v8, -0x1

    .line 195
    if-ge v15, v14, :cond_ce

    .line 197
    invoke-virtual {v11, v15}, Landroidx/appcompat/view/menu/g;->c(I)Landroidx/appcompat/view/menu/j;

    .line 200
    move-result-object v9

    .line 201
    if-ne v13, v9, :cond_cb

    .line 203
    goto :goto_cf

    .line 204
    :cond_cb
    add-int/lit8 v15, v15, 0x1

    .line 206
    goto :goto_c1

    .line 207
    :cond_ce
    move v15, v8

    .line 208
    :goto_cf
    if-ne v15, v8, :cond_d2

    .line 210
    goto :goto_e7

    .line 211
    :cond_d2
    add-int/2addr v15, v12

    .line 212
    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 215
    move-result v8

    .line 216
    sub-int/2addr v15, v8

    .line 217
    if-ltz v15, :cond_e7

    .line 219
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 222
    move-result v8

    .line 223
    if-lt v15, v8, :cond_e1

    .line 225
    goto :goto_e7

    .line 226
    :cond_e1
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 229
    move-result-object v8

    .line 230
    goto :goto_e8

    .line 231
    :cond_e6
    const/4 v3, 0x0

    .line 232
    :cond_e7
    :goto_e7
    const/4 v8, 0x0

    .line 233
    :goto_e8
    if-eqz v8, :cond_1b2

    .line 235
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 237
    const/16 v10, 0x1c

    .line 239
    if-gt v9, v10, :cond_108

    .line 241
    sget-object v9, Landroidx/appcompat/widget/m0;->F:Ljava/lang/reflect/Method;

    .line 243
    if-eqz v9, :cond_10d

    .line 245
    :try_start_f4
    iget-object v10, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 247
    new-array v11, v5, [Ljava/lang/Object;

    .line 249
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 251
    aput-object v12, v11, v7

    .line 253
    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_ff} :catch_100

    .line 256
    goto :goto_10d

    .line 257
    :catch_100
    const-string v9, "MenuPopupWindow"

    .line 259
    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 261
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    goto :goto_10d

    .line 265
    :cond_108
    iget-object v9, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 267
    invoke-static {v9, v7}, Landroidx/appcompat/widget/m0$b;->a(Landroid/widget/PopupWindow;Z)V

    .line 270
    :cond_10d
    :goto_10d
    iget-object v9, v6, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 272
    const/4 v10, 0x0

    .line 273
    invoke-static {v9, v10}, Landroidx/appcompat/widget/m0$a;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 276
    iget-object v9, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 281
    move-result v10

    .line 282
    sub-int/2addr v10, v5

    .line 283
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v9

    .line 287
    check-cast v9, Landroidx/appcompat/view/menu/d$d;

    .line 289
    iget-object v9, v9, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 291
    iget-object v9, v9, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 293
    const/4 v10, 0x2

    .line 294
    new-array v11, v10, [I

    .line 296
    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 299
    new-instance v10, Landroid/graphics/Rect;

    .line 301
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 304
    iget-object v12, v0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    .line 306
    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 309
    iget v12, v0, Landroidx/appcompat/view/menu/d;->q:I

    .line 311
    if-ne v12, v5, :cond_145

    .line 313
    aget v11, v11, v7

    .line 315
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 318
    move-result v9

    .line 319
    add-int/2addr v9, v11

    .line 320
    add-int/2addr v9, v4

    .line 321
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 323
    if-le v9, v10, :cond_14a

    .line 325
    goto :goto_14c

    .line 326
    :cond_145
    aget v9, v11, v7

    .line 328
    sub-int/2addr v9, v4

    .line 329
    if-gez v9, :cond_14c

    .line 331
    :cond_14a
    move v9, v5

    .line 332
    goto :goto_14d

    .line 333
    :cond_14c
    :goto_14c
    move v9, v7

    .line 334
    :goto_14d
    if-ne v9, v5, :cond_151

    .line 336
    move v10, v5

    .line 337
    goto :goto_152

    .line 338
    :cond_151
    move v10, v7

    .line 339
    :goto_152
    iput v9, v0, Landroidx/appcompat/view/menu/d;->q:I

    .line 341
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    const/16 v11, 0x1a

    .line 345
    const/4 v12, 0x5

    .line 346
    if-lt v9, v11, :cond_160

    .line 348
    iput-object v8, v6, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 350
    move v9, v7

    .line 351
    move v13, v9

    .line 352
    goto :goto_191

    .line 353
    :cond_160
    const/4 v9, 0x2

    .line 354
    new-array v11, v9, [I

    .line 356
    iget-object v13, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 358
    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 361
    new-array v9, v9, [I

    .line 363
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 366
    iget v13, v0, Landroidx/appcompat/view/menu/d;->n:I

    .line 368
    and-int/lit8 v13, v13, 0x7

    .line 370
    if-ne v13, v12, :cond_187

    .line 372
    aget v13, v11, v7

    .line 374
    iget-object v14, v0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 376
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 379
    move-result v14

    .line 380
    add-int/2addr v14, v13

    .line 381
    aput v14, v11, v7

    .line 383
    aget v13, v9, v7

    .line 385
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 388
    move-result v14

    .line 389
    add-int/2addr v14, v13

    .line 390
    aput v14, v9, v7

    .line 392
    :cond_187
    aget v13, v9, v7

    .line 394
    aget v14, v11, v7

    .line 396
    sub-int/2addr v13, v14

    .line 397
    aget v9, v9, v5

    .line 399
    aget v11, v11, v5

    .line 401
    sub-int/2addr v9, v11

    .line 402
    :goto_191
    iget v11, v0, Landroidx/appcompat/view/menu/d;->n:I

    .line 404
    and-int/2addr v11, v12

    .line 405
    if-ne v11, v12, :cond_19f

    .line 407
    if-eqz v10, :cond_19a

    .line 409
    add-int/2addr v13, v4

    .line 410
    goto :goto_1a8

    .line 411
    :cond_19a
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 414
    move-result v4

    .line 415
    goto :goto_1a7

    .line 416
    :cond_19f
    if-eqz v10, :cond_1a7

    .line 418
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 421
    move-result v4

    .line 422
    add-int/2addr v13, v4

    .line 423
    goto :goto_1a8

    .line 424
    :cond_1a7
    :goto_1a7
    sub-int/2addr v13, v4

    .line 425
    :goto_1a8
    iput v13, v6, Landroidx/appcompat/widget/k0;->f:I

    .line 427
    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->k:Z

    .line 429
    iput-boolean v5, v6, Landroidx/appcompat/widget/k0;->j:Z

    .line 431
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    .line 434
    goto :goto_1d0

    .line 435
    :cond_1b2
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->r:Z

    .line 437
    if-eqz v4, :cond_1ba

    .line 439
    iget v4, v0, Landroidx/appcompat/view/menu/d;->v:I

    .line 441
    iput v4, v6, Landroidx/appcompat/widget/k0;->f:I

    .line 443
    :cond_1ba
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/d;->s:Z

    .line 445
    if-eqz v4, :cond_1c3

    .line 447
    iget v4, v0, Landroidx/appcompat/view/menu/d;->w:I

    .line 449
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    .line 452
    :cond_1c3
    iget-object v4, v0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    .line 454
    if-eqz v4, :cond_1cd

    .line 456
    new-instance v10, Landroid/graphics/Rect;

    .line 458
    invoke-direct {v10, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 461
    goto :goto_1ce

    .line 462
    :cond_1cd
    const/4 v10, 0x0

    .line 463
    :goto_1ce
    iput-object v10, v6, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    .line 465
    :goto_1d0
    new-instance v4, Landroidx/appcompat/view/menu/d$d;

    .line 467
    iget v5, v0, Landroidx/appcompat/view/menu/d;->q:I

    .line 469
    invoke-direct {v4, v6, v1, v5}, Landroidx/appcompat/view/menu/d$d;-><init>(Landroidx/appcompat/widget/m0;Landroidx/appcompat/view/menu/h;I)V

    .line 472
    iget-object v5, v0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 474
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v6}, Landroidx/appcompat/widget/k0;->show()V

    .line 480
    iget-object v4, v6, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 482
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 485
    if-nez v3, :cond_212

    .line 487
    iget-boolean v3, v0, Landroidx/appcompat/view/menu/d;->y:Z

    .line 489
    if-eqz v3, :cond_212

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 494
    move-result-object v3

    .line 495
    if-eqz v3, :cond_212

    .line 497
    sget v3, Lh/g;->abc_popup_menu_header_item_layout:I

    .line 499
    invoke-virtual {v2, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Landroid/widget/FrameLayout;

    .line 505
    const v3, 0x1020016

    .line 508
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 511
    move-result-object v3

    .line 512
    check-cast v3, Landroid/widget/TextView;

    .line 514
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    const/4 v1, 0x0

    .line 525
    invoke-virtual {v4, v2, v1, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 528
    invoke-virtual {v6}, Landroidx/appcompat/widget/k0;->show()V

    .line 531
    :cond_212
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_1a

    .line 11
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    .line 19
    iget-object v3, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 21
    if-ne p1, v3, :cond_17

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    const/4 v2, -0x1

    .line 28
    :goto_1b
    if-gez v2, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    .line 33
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v3

    .line 39
    if-ge v0, v3, :cond_35

    .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 49
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 51
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 54
    :cond_35
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 62
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 64
    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 67
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->C:Z

    .line 69
    const/4 v3, 0x0

    .line 70
    if-eqz v2, :cond_55

    .line 72
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 74
    iget-object v2, v2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 76
    invoke-static {v2, v3}, Landroidx/appcompat/widget/m0$a;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 79
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 81
    iget-object v2, v2, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 83
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 86
    :cond_55
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 91
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v0

    .line 97
    const/4 v2, 0x1

    .line 98
    if-lez v0, :cond_72

    .line 100
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 102
    add-int/lit8 v5, v0, -0x1

    .line 104
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroidx/appcompat/view/menu/d$d;

    .line 110
    iget v4, v4, Landroidx/appcompat/view/menu/d$d;->c:I

    .line 112
    iput v4, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 114
    goto :goto_81

    .line 115
    :cond_72
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 117
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 119
    invoke-static {v4}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 122
    move-result v4

    .line 123
    if-ne v4, v2, :cond_7e

    .line 125
    move v4, v1

    .line 126
    goto :goto_7f

    .line 127
    :cond_7e
    move v4, v2

    .line 128
    :goto_7f
    iput v4, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 130
    :goto_81
    if-nez v0, :cond_ad

    .line 132
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    .line 135
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    .line 137
    if-eqz p2, :cond_8d

    .line 139
    invoke-interface {p2, p1, v2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 142
    :cond_8d
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 144
    if-eqz p1, :cond_a0

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_9e

    .line 152
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 154
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 159
    :cond_9e
    iput-object v3, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 161
    :cond_a0
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    .line 163
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 168
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    .line 170
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 173
    goto :goto_bc

    .line 174
    :cond_ad
    if-eqz p2, :cond_bc

    .line 176
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroidx/appcompat/view/menu/d$d;

    .line 184
    iget-object p1, p1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 186
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 189
    :cond_bc
    :goto_bc
    return-void
.end method

.method public final onDismiss()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 11
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/appcompat/view/menu/d$d;

    .line 19
    iget-object v4, v3, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 21
    invoke-virtual {v4}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1b

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    const/4 v3, 0x0

    .line 32
    :goto_1f
    if-eqz v3, :cond_26

    .line 34
    iget-object v0, v3, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 36
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 39
    :cond_26
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_f

    .line 8
    const/16 p1, 0x52

    .line 10
    if-ne p2, p1, :cond_f

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    .line 15
    return p3

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
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

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1f

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/appcompat/view/menu/d$d;

    .line 20
    iget-object v3, v1, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/h;

    .line 22
    if-ne p1, v3, :cond_6

    .line 24
    iget-object p1, v1, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 26
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 31
    return v2

    .line 32
    :cond_1f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_30

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/h;)V

    .line 41
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    .line 43
    if-eqz v0, :cond_2f

    .line 45
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    .line 48
    :cond_2f
    return v2

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->z:Landroidx/appcompat/view/menu/n$a;

    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    return-void
.end method

.method public final show()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/appcompat/view/menu/h;

    .line 26
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/d;->k(Landroidx/appcompat/view/menu/h;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->h:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View;

    .line 37
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    .line 39
    if-eqz v0, :cond_43

    .line 41
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 43
    if-nez v1, :cond_2e

    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v1, 0x0

    .line 48
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->A:Landroid/view/ViewTreeObserver;

    .line 54
    if-eqz v1, :cond_3c

    .line 56
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Landroidx/appcompat/view/menu/d$a;

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/View;

    .line 63
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->k:Landroidx/appcompat/view/menu/d$b;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 68
    :cond_43
    return-void
.end method

.method public final updateMenuView(Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2d

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/appcompat/view/menu/d$d;

    .line 19
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/m0;

    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 23
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 29
    if-eqz v1, :cond_27

    .line 31
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 33
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 42
    :goto_29
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->notifyDataSetChanged()V

    .line 45
    goto :goto_6

    .line 46
    :cond_2d
    return-void
.end method
