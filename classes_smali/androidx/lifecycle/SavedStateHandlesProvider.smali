.class public final Landroidx/lifecycle/SavedStateHandlesProvider;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Lc1/c$b;


# instance fields
.field public final a:Lc1/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ly2/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/c;Landroidx/lifecycle/f0;)V
    .registers 4
    .param p1  # Lc1/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "savedStateRegistry"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "viewModelStoreOwner"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->a:Lc1/c;

    .line 16
    new-instance p1, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;

    .line 18
    invoke-direct {p1, p2}, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;-><init>(Landroidx/lifecycle/f0;)V

    .line 21
    invoke-static {p1}, Lkotlin/a;->c(Lh3/a;)Ly2/c;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->d:Ly2/c;

    .line 27
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->d:Ly2/c;

    .line 15
    invoke-interface {v1}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/x;

    .line 21
    iget-object v1, v1, Landroidx/lifecycle/x;->a:Ljava/util/LinkedHashMap;

    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_48

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/lifecycle/w;

    .line 55
    iget-object v2, v2, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/v;

    .line 57
    invoke-virtual {v2}, Landroidx/lifecycle/v;->saveState()Landroid/os/Bundle;

    .line 60
    move-result-object v2

    .line 61
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 63
    invoke-static {v2, v4}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1e

    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    goto :goto_1e

    .line 73
    :cond_48
    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->b:Z

    .line 76
    return-object v0
.end method
