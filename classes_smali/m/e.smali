.class public final Lm/e;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 4
    iput-object p1, p0, Lm/e;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lm/e;->b:Lm/a;

    .line 8
    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->a()V

    .line 6
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->b()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/p;

    .line 3
    iget-object v1, p0, Lm/e;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lm/e;->b:Lm/a;

    .line 7
    invoke-virtual {v2}, Lm/a;->c()Landroidx/appcompat/view/menu/h;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    .line 14
    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->d()Landroid/view/MenuInflater;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->e()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    iget-object v0, v0, Lm/a;->a:Ljava/lang/Object;

    .line 5
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->f()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    iget-boolean v0, v0, Lm/a;->b:Z

    .line 5
    return v0
.end method

.method public final invalidate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->g()V

    .line 6
    return-void
.end method

.method public final isTitleOptional()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0}, Lm/a;->h()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0, p1}, Lm/a;->i(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lm/e;->b:Lm/a;

    invoke-virtual {v0, p1}, Lm/a;->j(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    invoke-virtual {v0, p1}, Lm/a;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    iput-object p1, v0, Lm/a;->a:Ljava/lang/Object;

    .line 5
    return-void
.end method

.method public final setTitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lm/e;->b:Lm/a;

    invoke-virtual {v0, p1}, Lm/a;->l(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    invoke-virtual {v0, p1}, Lm/a;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e;->b:Lm/a;

    .line 3
    invoke-virtual {v0, p1}, Lm/a;->n(Z)V

    .line 6
    return-void
.end method
