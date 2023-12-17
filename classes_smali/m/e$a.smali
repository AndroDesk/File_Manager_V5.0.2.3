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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/e$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    new-instance p1, Landroidx/collection/f;

    invoke-direct {p1}, Landroidx/collection/f;-><init>()V

    iput-object p1, p0, Lm/e$a;->d:Landroidx/collection/f;

    return-void
.end method


# virtual methods
.method public final a(Lm/a;)V
    .registers 3

    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final b(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 6

    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    move-result-object p1

    iget-object v1, p0, Lm/e$a;->d:Landroidx/collection/f;

    invoke-virtual {v1, p2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_1c

    new-instance v1, Landroidx/appcompat/view/menu/p;

    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    iget-object v2, p0, Lm/e$a;->d:Landroidx/collection/f;

    invoke-virtual {v2, p2, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(Lm/a;Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/k;

    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    check-cast p2, Lh0/b;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;Lh0/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final d(Lm/a;Landroidx/appcompat/view/menu/h;)Z
    .registers 6

    iget-object v0, p0, Lm/e$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    move-result-object p1

    iget-object v1, p0, Lm/e$a;->d:Landroidx/collection/f;

    invoke-virtual {v1, p2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_1c

    new-instance v1, Landroidx/appcompat/view/menu/p;

    iget-object v2, p0, Lm/e$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Lh0/a;)V

    iget-object v2, p0, Lm/e$a;->d:Landroidx/collection/f;

    invoke-virtual {v2, p2, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final e(Lm/a;)Lm/e;
    .registers 6

    iget-object v0, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/e;

    if-eqz v2, :cond_18

    iget-object v3, v2, Lm/e;->b:Lm/a;

    if-ne v3, p1, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    new-instance v0, Lm/e;

    iget-object v1, p0, Lm/e$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(Landroid/content/Context;Lm/a;)V

    iget-object p1, p0, Lm/e$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
