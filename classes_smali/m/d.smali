.class public final Lm/d;
.super Lm/a;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarContextView;

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

.field public g:Z

.field public h:Landroidx/appcompat/view/menu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lm/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lm/a;-><init>()V

    .line 4
    iput-object p1, p0, Lm/d;->c:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 8
    iput-object p3, p0, Lm/d;->e:Lm/a$a;

    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/h;

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lm/d;->h:Landroidx/appcompat/view/menu/h;

    .line 26
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/d;->g:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lm/d;->g:Z

    .line 9
    iget-object v0, p0, Lm/d;->e:Lm/a$a;

    .line 11
    invoke-interface {v0, p0}, Lm/a$a;->a(Lm/a;)V

    .line 14
    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/d;->f:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lm/d;->h:Landroidx/appcompat/view/menu/h;

    .line 3
    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    new-instance v0, Lm/f;

    .line 3
    iget-object v1, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 12
    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->e:Lm/a$a;

    .line 3
    iget-object v1, p0, Lm/d;->h:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-interface {v0, p0, v1}, Lm/a$a;->d(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    .line 8
    return-void
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 5
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 6
    if-eqz p1, :cond_d

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    iput-object v0, p0, Lm/d;->f:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method

.method public final j(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lm/d;->k(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final l(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lm/d;->m(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final n(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lm/a;->b:Z

    .line 3
    iget-object v0, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 8
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lm/d;->e:Lm/a$a;

    .line 3
    invoke-interface {p1, p0, p2}, Lm/a$a;->c(Lm/a;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm/d;->g()V

    .line 4
    iget-object p1, p0, Lm/d;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 13
    :cond_c
    return-void
.end method
