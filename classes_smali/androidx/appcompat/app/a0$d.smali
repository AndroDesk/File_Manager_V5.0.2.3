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
.method public constructor <init>(Landroidx/appcompat/app/a0;Landroid/content/Context;Lm/a$a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    invoke-direct {p0}, Lm/a;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/a0$d;->c:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/h;

    .line 12
    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 22
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 5
    if-eq v1, p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-boolean v1, v0, Landroidx/appcompat/app/a0;->v:Z

    .line 10
    iget-boolean v2, v0, Landroidx/appcompat/app/a0;->w:Z

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v1, :cond_11

    .line 16
    if-eqz v2, :cond_12

    .line 18
    :cond_11
    move v3, v4

    .line 19
    :cond_12
    if-nez v3, :cond_1b

    .line 21
    iput-object p0, v0, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/app/a0$d;

    .line 23
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 25
    iput-object v1, v0, Landroidx/appcompat/app/a0;->p:Lm/a$a;

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 30
    invoke-interface {v0, p0}, Lm/a$a;->a(Lm/a;)V

    .line 33
    :goto_20
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 36
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 38
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/a0;->animateToMode(Z)V

    .line 41
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 43
    iget-object v1, v1, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 45
    iget-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 47
    if-nez v2, :cond_33

    .line 49
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 52
    :cond_33
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 54
    iget-object v2, v1, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 56
    iget-boolean v1, v1, Landroidx/appcompat/app/a0;->B:Z

    .line 58
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 61
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 63
    iput-object v0, v1, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 65
    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->f:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public final c()Landroidx/appcompat/view/menu/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 3
    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    new-instance v0, Lm/f;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->c:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 5
    if-eq v0, p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 13
    :try_start_c
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 15
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 17
    invoke-interface {v0, p0, v1}, Lm/a$a;->d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 20
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    iget-object v1, p0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 32
    throw v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 7
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Landroidx/appcompat/app/a0$d;->f:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method

.method public final j(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$d;->k(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public final l(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0$d;->m(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public final n(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lm/a;->b:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 10
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    invoke-interface {p1, p0, p2}, Lm/a$a;->c(Lm/a;Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/a0$d;->g()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/a0$d;->g:Landroidx/appcompat/app/a0;

    .line 11
    iget-object p1, p1, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 20
    :cond_13
    return-void
.end method
