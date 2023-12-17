.class public final Landroidx/window/layout/f$a;
.super Ljava/lang/Object;
.source "ExtensionWindowLayoutInfoBackend.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroidx/window/layout/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/window/layout/f$a;->a:Landroid/app/Activity;

    .line 11
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/window/layout/f$a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    iput-object p1, p0, Landroidx/window/layout/f$a;->d:Ljava/util/LinkedHashSet;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroidx/window/layout/o;)V
    .registers 4
    .param p1  # Landroidx/window/layout/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/window/layout/f$a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget-object v1, p0, Landroidx/window/layout/f$a;->c:Landroidx/window/layout/r;

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-virtual {p1, v1}, Landroidx/window/layout/o;->accept(Ljava/lang/Object;)V

    .line 14
    :goto_d
    iget-object v1, p0, Landroidx/window/layout/f$a;->d:Ljava/util/LinkedHashSet;

    .line 16
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    .line 3
    const-string v0, "value"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroidx/window/layout/f$a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :try_start_c
    iget-object v1, p0, Landroidx/window/layout/f$a;->a:Landroid/app/Activity;

    .line 15
    invoke-static {v1, p1}, Landroidx/window/layout/g;->b(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/r;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroidx/window/layout/f$a;->c:Landroidx/window/layout/r;

    .line 21
    iget-object p1, p0, Landroidx/window/layout/f$a;->d:Ljava/util/LinkedHashSet;

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2c

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ll0/a;

    .line 39
    iget-object v2, p0, Landroidx/window/layout/f$a;->c:Landroidx/window/layout/r;

    .line 41
    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 44
    goto :goto_1a

    .line 45
    :cond_2c
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_32

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    throw p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/window/layout/f$a;->d:Ljava/util/LinkedHashSet;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c(Ll0/a;)V
    .registers 4
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

    .line 1
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/f$a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/f$a;->d:Ljava/util/LinkedHashSet;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    throw p1
.end method
