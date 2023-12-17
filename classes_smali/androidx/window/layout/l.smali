.class public final Landroidx/window/layout/l;
.super Ljava/lang/Object;
.source "SidecarWindowBackend.kt"

# interfaces
.implements Landroidx/window/layout/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/l$a;,
        Landroidx/window/layout/l$b;
    }
.end annotation


# static fields
.field public static volatile c:Landroidx/window/layout/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroidx/window/layout/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/layout/l$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/SidecarCompat;)V
    .registers 3
    .param p1  # Landroidx/window/layout/SidecarCompat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    if-nez p1, :cond_11

    goto :goto_19

    :cond_11
    new-instance v0, Landroidx/window/layout/l$a;

    invoke-direct {v0, p0}, Landroidx/window/layout/l$a;-><init>(Landroidx/window/layout/l;)V

    invoke-interface {p1, v0}, Landroidx/window/layout/e;->b(Landroidx/window/layout/l$a;)V

    :goto_19
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroidx/window/layout/p;Landroidx/window/layout/o;)V
    .registers 9
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/layout/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroidx/window/layout/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    if-nez v1, :cond_1c

    new-instance p1, Landroidx/window/layout/r;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p1, p2}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p1}, Landroidx/window/layout/o;->accept(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_88

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_43

    :cond_2a
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/l$b;

    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    invoke-static {v3, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v4, 0x1

    :cond_43
    :goto_43
    new-instance v2, Landroidx/window/layout/l$b;

    invoke-direct {v2, p1, p2, p3}, Landroidx/window/layout/l$b;-><init>(Landroid/app/Activity;Landroidx/window/layout/p;Landroidx/window/layout/o;)V

    iget-object p2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_53

    invoke-interface {v1, p1}, Landroidx/window/layout/e;->a(Landroid/app/Activity;)V

    goto :goto_8a

    :cond_53
    iget-object p2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroidx/window/layout/l$b;

    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    invoke-static {p1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_71

    :cond_70
    move-object p3, v1

    :goto_71
    check-cast p3, Landroidx/window/layout/l$b;

    if-nez p3, :cond_76

    goto :goto_78

    :cond_76
    iget-object v1, p3, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/r;

    :goto_78
    if-eqz v1, :cond_8a

    iput-object v1, v2, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/r;

    iget-object p1, v2, Landroidx/window/layout/l$b;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/appcompat/app/s;

    const/4 p3, 0x5

    invoke-direct {p2, p3, v2, v1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8a

    :catchall_88
    move-exception p1

    goto :goto_90

    :cond_8a
    :goto_8a
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_8c
    .catchall {:try_start_1c .. :try_end_8c} :catchall_88

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final b(Ll0/a;)V
    .registers 7
    .param p1  # Ll0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroidx/window/layout/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_7b

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/l$b;

    iget-object v4, v3, Landroidx/window/layout/l$b;->c:Ll0/a;

    if-ne v4, p1, :cond_19

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    iget-object p1, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/l$b;

    iget-object v1, v1, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_52

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_6b

    :cond_52
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/l$b;

    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const/4 v4, 0x1

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_6e

    goto :goto_36

    :cond_6e
    iget-object v2, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    if-nez v2, :cond_73

    goto :goto_36

    :cond_73
    invoke-interface {v2, v1}, Landroidx/window/layout/e;->c(Landroid/app/Activity;)V

    goto :goto_36

    :cond_77
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_79
    .catchall {:try_start_e .. :try_end_79} :catchall_7b

    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit v0

    throw p1
.end method
