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

    sget v0, Lh/g;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/r;->x:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V
    .registers 10

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/r$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$a;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    new-instance v0, Landroidx/appcompat/view/menu/r$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$b;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->v:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    iput-object p5, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/r;->e:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/g;

    sget v2, Landroidx/appcompat/view/menu/r;->x:I

    invoke-direct {v1, p5, v0, p6, v2}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    iput p1, p0, Landroidx/appcompat/view/menu/r;->g:I

    iput p2, p0, Landroidx/appcompat/view/menu/r;->h:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lh/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroidx/appcompat/view/menu/r;->f:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    new-instance p4, Landroidx/appcompat/widget/m0;

    invoke-direct {p4, p3, p1, p2}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {p5, p0, p3}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    return-void
.end method

.method public final c()Landroidx/appcompat/widget/f0;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    return-void
.end method

.method public final dismiss()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->dismiss()V

    :cond_b
    return-void
.end method

.method public final e(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    iput-boolean p1, v0, Landroidx/appcompat/view/menu/g;->c:Z

    return-void
.end method

.method public final f(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/view/menu/r;->v:I

    return-void
.end method

.method public final flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iput p1, v0, Landroidx/appcompat/widget/k0;->f:I

    return-void
.end method

.method public final h(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    return-void
.end method

.method public final i(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/k0;->setVerticalOffset(I)V

    return-void
.end method

.method public final isShowing()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    :cond_f
    return-void
.end method

.method public final onDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    :cond_24
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_32
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

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

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
    .registers 11

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    new-instance v0, Landroidx/appcompat/view/menu/m;

    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    iget-boolean v8, p0, Landroidx/appcompat/view/menu/r;->e:Z

    iget v3, p0, Landroidx/appcompat/view/menu/r;->g:I

    iget v4, p0, Landroidx/appcompat/view/menu/r;->h:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/m;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/h;Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    iput-object v2, v0, Landroidx/appcompat/view/menu/m;->i:Landroidx/appcompat/view/menu/n$a;

    iget-object v3, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    if-eqz v3, :cond_23

    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/n;->setCallback(Landroidx/appcompat/view/menu/n$a;)V

    :cond_23
    invoke-static {p1}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/h;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/m;->h:Z

    iget-object v3, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    if-eqz v3, :cond_30

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/l;->e(Z)V

    :cond_30
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/m;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget v3, v2, Landroidx/appcompat/widget/k0;->f:I

    invoke-virtual {v2}, Landroidx/appcompat/widget/k0;->getVerticalOffset()I

    move-result v2

    iget v4, p0, Landroidx/appcompat/view/menu/r;->v:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5f

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_5f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_67

    goto :goto_70

    :cond_67
    iget-object v4, v0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    if-nez v4, :cond_6d

    move v0, v1

    goto :goto_71

    :cond_6d
    invoke-virtual {v0, v3, v2, v5, v5}, Landroidx/appcompat/view/menu/m;->d(IIZZ)V

    :goto_70
    move v0, v5

    :goto_71
    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    if-eqz v0, :cond_7a

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    :cond_7a
    return v5

    :cond_7b
    return v1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/n$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/n$a;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final show()V
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    goto/16 :goto_ce

    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->q:Z

    const/4 v2, 0x0

    if-nez v0, :cond_cd

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/View;

    if-nez v0, :cond_14

    goto/16 :goto_cd

    :cond_14
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iput-boolean v1, v0, Landroidx/appcompat/widget/k0;->A:Z

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_31

    move v3, v1

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/view/menu/r$a;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3f
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->k:Landroidx/appcompat/view/menu/r$b;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iput-object v0, v3, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/r;->v:I

    iput v0, v3, Landroidx/appcompat/widget/k0;->l:I

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->r:Z

    if-nez v0, :cond_5e

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/r;->f:I

    invoke-static {v0, v3, v4}, Landroidx/appcompat/view/menu/l;->b(Landroidx/appcompat/view/menu/g;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->s:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r;->r:Z

    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget v3, p0, Landroidx/appcompat/view/menu/r;->s:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/k0;->e(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_7d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_7e

    :cond_7d
    move-object v5, v4

    :goto_7e
    iput-object v5, v0, Landroidx/appcompat/widget/k0;->z:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-object v0, v0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/r;->w:Z

    if-eqz v3, :cond_c0

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_c0

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lh/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v3, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_ba

    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ba
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_c0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->i:Landroidx/appcompat/widget/m0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    goto :goto_ce

    :cond_cd
    :goto_cd
    move v1, v2

    :goto_ce
    if-eqz v1, :cond_d1

    return-void

    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateMenuView(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->r:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method
