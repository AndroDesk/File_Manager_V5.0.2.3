.class public final Landroidx/window/layout/l$a;
.super Ljava/lang/Object;
.source "SidecarWindowBackend.kt"

# interfaces
.implements Landroidx/window/layout/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/window/layout/l;


# direct methods
.method public constructor <init>(Landroidx/window/layout/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const-string v0, "this$0"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroidx/window/layout/l$a;->a:Landroidx/window/layout/l;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroidx/window/layout/r;)V
    .registers 8
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/layout/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/l$a;->a:Landroidx/window/layout/l;

    .line 8
    iget-object v0, v0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_30

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/window/layout/l$b;

    .line 26
    iget-object v2, v1, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    .line 28
    invoke-static {v2, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_22

    .line 34
    goto :goto_d

    .line 35
    :cond_22
    iput-object p2, v1, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/r;

    .line 37
    iget-object v2, v1, Landroidx/window/layout/l$b;->b:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v3, Landroidx/appcompat/app/s;

    .line 41
    const/4 v4, 0x5

    .line 42
    invoke-direct {v3, v4, v1, p2}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    goto :goto_d

    .line 49
    :cond_30
    return-void
.end method
