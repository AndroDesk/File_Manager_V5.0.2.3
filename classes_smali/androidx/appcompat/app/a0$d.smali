.class public final Landroidx/appcompat/app/a0$d;
.super Lm/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroidx/appcompat/view/menu/h;

.field public e:Lm/a$a;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Landroidx/appcompat/app/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a0;Landroid/content/Context;Lm/a$a;)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, Lm/a;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/a0$d;->c:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    new-instance p1, Landroidx/appcompat/view/menu/h;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v1, v0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    if-eq v1, p0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->v:Z

    iget-boolean v2, v0, Landroidx/appcompat/app/a0;->w:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    move v3, v4

    :cond_12
    if-nez v3, :cond_1b

    iput-object p0, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    iput-object v1, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    goto :goto_20

    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    invoke-interface {v0, p0}, Lm/a$a;->a(Lm/a;)V

    :goto_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/a0;->animateToMode(Z)V

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v1, v1, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v2, :cond_33

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    :cond_33
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v2, v1, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Landroidx/appcompat/app/a0;->B:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iput-object v0, v1, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final c()Landroidx/appcompat/view/menu/h;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lm/f;

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    if-eq v0, p0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    :try_start_c
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-interface {v0, p0, v1}, Lm/a$a;->d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    return-void

    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public final i(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0$d;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$d;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$d;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .registers 3

    iput-boolean p1, p0, Lm/a;->b:Z

    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0, p2}, Lm/a$a;->c(Lm/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/a0$d;->g()V

    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    iget-object p1, p1, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    :cond_13
    return-void
.end method
