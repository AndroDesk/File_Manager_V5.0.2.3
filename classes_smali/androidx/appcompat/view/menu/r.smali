.class public final Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/l;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final x:I


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/view/menu/h;

.field public final d:Landroidx/appcompat/view/menu/g;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Landroidx/appcompat/widget/m0;

.field public final j:Landroidx/appcompat/view/menu/r$a;

.field public final k:Landroidx/appcompat/view/menu/r$b;

.field public l:Landroid/widget/PopupWindow$OnDismissListener;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroidx/appcompat/view/menu/n$a;

.field public p:Landroid/view/ViewTreeObserver;

.field public q:Z

.field public r:Z

.field public s:I

.field public v:I

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lh/g;->abc_popup_menu_item_layout:I

    .line 3
    sput v0, Landroidx/appcompat/view/menu/r;->x:I

    .line 5
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V
    .registers 10

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/r$a;

    .line 6
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$a;-><init>(Landroidx/appcompat/view/menu/r;)V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    .line 11
    new-instance v0, Landroidx/appcompat/view/menu/r$b;

    .line 13
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$b;-><init>(Landroidx/appcompat/view/menu/r;)V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/appcompat/view/menu/r;->v:I

    .line 21
    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    .line 23
    iput-object p5, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 25
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/r;->e:Z

    .line 27
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroidx/appcompat/view/menu/g;

    .line 33
    sget v2, Landroidx/appcompat/view/menu/r;->x:I

    .line 35
    invoke-direct {v1, p5, v0, p6, v2}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    .line 38
    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 40
    iput p1, p0, Landroidx/appcompat/view/menu/r;->g:I

    .line 42
    iput p2, p0, Landroidx/appcompat/view/menu/r;->h:I

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p6

    .line 48
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 56
    sget v1, Lh/d;->abc_config_prefDialogWidth:I

    .line 58
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result p6

    .line 62
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result p6

    .line 66
    iput p6, p0, Landroidx/appcompat/view/menu/r;->f:I

    .line 68
    iput-object p4, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    .line 70
    new-instance p4, Landroidx/appcompat/widget/m0;

    .line 72
    invoke-direct {p4, p3, p1, p2}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;II)V

    .line 75
    iput-object p4, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 77
    invoke-virtual {p5, p0, p3}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    return-void
.end method

.method public final c()Landroidx/appcompat/widget/f0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 5
    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    .line 3
    return-void
.end method

.method public final dismiss()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    .line 12
    :cond_b
    return-void
.end method

.method public final e(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/view/menu/g;->c:Z

    .line 5
    return-void
.end method

.method public final f(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/r;->v:I

    .line 3
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
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 3
    iput p1, v0, Landroidx/appcompat/widget/k0;->f:I

    .line 5
    return-void
.end method

.method public final h(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    .line 3
    return-void
.end method

.method public final i(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    .line 6
    return-void
.end method

.method public final isShowing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 3
    if-eq p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 16
    :cond_f
    return-void
.end method

.method public final onDismiss()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 11
    if-eqz v0, :cond_24

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 27
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 29
    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 37
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 39
    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 44
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 46
    if-eqz v0, :cond_32

    .line 48
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 51
    :cond_32
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
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

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
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7b

    .line 8
    new-instance v0, Landroidx/appcompat/view/menu/m;

    .line 10
    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    .line 12
    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 14
    iget-boolean v8, p0, Landroidx/appcompat/view/menu/r;->e:Z

    .line 16
    iget v3, p0, Landroidx/appcompat/view/menu/r;->g:I

    .line 18
    iget v4, p0, Landroidx/appcompat/view/menu/r;->h:I

    .line 20
    move-object v2, v0

    .line 21
    move-object v7, p1

    .line 22
    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/m;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    .line 25
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    .line 27
    iput-object v2, v0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    .line 29
    iget-object v3, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 31
    if-eqz v3, :cond_23

    .line 33
    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    .line 36
    :cond_23
    invoke-static {p1}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/h;)Z

    .line 39
    move-result v2

    .line 40
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/m;->h:Z

    .line 42
    iget-object v3, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 44
    if-eqz v3, :cond_30

    .line 46
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/l;->e(Z)V

    .line 49
    :cond_30
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 51
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/m;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 54
    const/4 v2, 0x0

    .line 55
    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 57
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 59
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 62
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 64
    iget v3, v2, Landroidx/appcompat/widget/k0;->f:I

    .line 66
    invoke-virtual {v2}, Landroidx/appcompat/widget/k0;->getVerticalOffset()I

    .line 69
    move-result v2

    .line 70
    iget v4, p0, Landroidx/appcompat/view/menu/r;->v:I

    .line 72
    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    .line 74
    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 76
    invoke-static {v5}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 79
    move-result v5

    .line 80
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 83
    move-result v4

    .line 84
    and-int/lit8 v4, v4, 0x7

    .line 86
    const/4 v5, 0x5

    .line 87
    if-ne v4, v5, :cond_5f

    .line 89
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v4

    .line 95
    add-int/2addr v3, v4

    .line 96
    :cond_5f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x1

    .line 101
    if-eqz v4, :cond_67

    .line 103
    goto :goto_70

    .line 104
    :cond_67
    iget-object v4, v0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 106
    if-nez v4, :cond_6d

    .line 108
    move v0, v1

    .line 109
    goto :goto_71

    .line 110
    :cond_6d
    invoke-virtual {v0, v3, v2, v5, v5}, Landroidx/appcompat/view/menu/m;->d(IIZZ)V

    .line 113
    :goto_70
    move v0, v5

    .line 114
    :goto_71
    if-eqz v0, :cond_7b

    .line 116
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    .line 118
    if-eqz v0, :cond_7a

    .line 120
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    .line 123
    :cond_7a
    return v5

    .line 124
    :cond_7b
    return v1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    .line 3
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    return-void
.end method

.method public final show()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_9

    .line 8
    goto/16 :goto_ce

    .line 10
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_cd

    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    .line 17
    if-nez v0, :cond_14

    .line 19
    goto/16 :goto_cd

    .line 21
    :cond_14
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 23
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 25
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 28
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 30
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 35
    iput-boolean v1, v0, Landroidx/appcompat/widget/k0;->A:Z

    .line 37
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 42
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    .line 44
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 46
    if-nez v3, :cond_31

    .line 48
    move v3, v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v3, v2

    .line 51
    :goto_32
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    move-result-object v4

    .line 55
    iput-object v4, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 57
    if-eqz v3, :cond_3f

    .line 59
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    .line 61
    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    :cond_3f
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 71
    iput-object v0, v3, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 73
    iget v0, p0, Landroidx/appcompat/view/menu/r;->v:I

    .line 75
    iput v0, v3, Landroidx/appcompat/widget/k0;->l:I

    .line 77
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->r:Z

    .line 79
    if-nez v0, :cond_5e

    .line 81
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 83
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    .line 85
    iget v4, p0, Landroidx/appcompat/view/menu/r;->f:I

    .line 87
    invoke-static {v0, v3, v4}, Landroidx/appcompat/view/menu/l;->b(Landroidx/appcompat/view/menu/g;Landroid/content/Context;I)I

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Landroidx/appcompat/view/menu/r;->s:I

    .line 93
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r;->r:Z

    .line 95
    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 97
    iget v3, p0, Landroidx/appcompat/view/menu/r;->s:I

    .line 99
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/k0;->e(I)V

    .line 102
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 104
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 112
    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    .line 114
    const/4 v4, 0x0

    .line 115
    if-eqz v3, :cond_7d

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v5, Landroid/graphics/Rect;

    .line 122
    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move-object v5, v4

    .line 127
    :goto_7e
    iput-object v5, v0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    .line 129
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 131
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 134
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 136
    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/r;->w:Z

    .line 143
    if-eqz v3, :cond_c0

    .line 145
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 147
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_c0

    .line 153
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    .line 155
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 158
    move-result-object v3

    .line 159
    sget v5, Lh/g;->abc_popup_menu_header_item_layout:I

    .line 161
    invoke-virtual {v3, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/widget/FrameLayout;

    .line 167
    const v5, 0x1020016

    .line 170
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Landroid/widget/TextView;

    .line 176
    if-eqz v5, :cond_ba

    .line 178
    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    .line 180
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_ba
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 193
    :cond_c0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 195
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 197
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 205
    goto :goto_ce

    .line 206
    :cond_cd
    :goto_cd
    move v1, v2

    .line 207
    :goto_ce
    if-eqz v1, :cond_d1

    .line 209
    return-void

    .line 210
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    .line 214
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    throw v0
.end method

.method public final updateMenuView(Z)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->r:Z

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->notifyDataSetChanged()V

    .line 11
    :cond_a
    return-void
.end method
