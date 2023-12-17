.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final a:Landroidx/lifecycle/SavedStateHandlesProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandlesProvider;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/SavedStateHandlesProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p2, v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-eqz v0, :cond_2c

    .line 11
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 18
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 20
    iget-boolean p2, p1, Landroidx/lifecycle/SavedStateHandlesProvider;->b:Z

    .line 22
    if-nez p2, :cond_2b

    .line 24
    iget-object p2, p1, Landroidx/lifecycle/SavedStateHandlesProvider;->a:Lc1/c;

    .line 26
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 28
    invoke-virtual {p2, v0}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p1, Landroidx/lifecycle/SavedStateHandlesProvider;->c:Landroid/os/Bundle;

    .line 34
    iput-boolean v1, p1, Landroidx/lifecycle/SavedStateHandlesProvider;->b:Z

    .line 36
    iget-object p1, p1, Landroidx/lifecycle/SavedStateHandlesProvider;->d:Ly2/c;

    .line 38
    invoke-interface {p1}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/lifecycle/x;

    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v0, "Next event must be ON_CREATE, it was "

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p2
.end method
