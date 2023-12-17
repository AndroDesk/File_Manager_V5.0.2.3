.class public final Lm/e$a;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lm/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm/e$a;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    .line 15
    new-instance p1, Landroidx/collection/f;

    .line 17
    invoke-direct {p1}, Landroidx/collection/f;-><init>()V

    .line 20
    iput-object p1, p0, Lm/e$a;->d:Landroidx/collection/f;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lm/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10
    return-void
.end method

.method public final b(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lm/e$a;->d:Landroidx/collection/f;

    .line 9
    invoke-virtual {v1, p2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/Menu;

    .line 15
    if-nez v1, :cond_1c

    .line 17
    new-instance v1, Landroidx/appcompat/view/menu/p;

    .line 19
    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    .line 21
    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    .line 24
    iget-object v2, p0, Lm/e$a;->d:Landroidx/collection/f;

    .line 26
    invoke-virtual {v2, p2, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1c
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final c(Lm/a;Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Landroidx/appcompat/view/menu/k;

    .line 9
    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    .line 11
    check-cast p2, Lh0/b;

    .line 13
    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;Lh0/b;)V

    .line 16
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lm/e$a;->d:Landroidx/collection/f;

    .line 9
    invoke-virtual {v1, p2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/Menu;

    .line 15
    if-nez v1, :cond_1c

    .line 17
    new-instance v1, Landroidx/appcompat/view/menu/p;

    .line 19
    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    .line 21
    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    .line 24
    iget-object v2, p0, Lm/e$a;->d:Landroidx/collection/f;

    .line 26
    invoke-virtual {v2, p2, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1c
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final e(Lm/a;)Lm/e;
    .registers 6

    .line 1
    iget-object v0, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 10
    iget-object v2, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lm/e;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    iget-object v3, v2, Lm/e;->b:Lm/a;

    .line 22
    if-ne v3, p1, :cond_18

    .line 24
    return-object v2

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    new-instance v0, Lm/e;

    .line 30
    iget-object v1, p0, Lm/e$a;->b:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1, p1}, Lm/e;-><init>(Landroid/content/Context;Lm/a;)V

    .line 35
    iget-object p1, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method
