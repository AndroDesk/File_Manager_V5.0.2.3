.class public final Landroidx/window/layout/f;
.super Ljava/lang/Object;
.source "ExtensionWindowLayoutInfoBackend.kt"

# interfaces
.implements Landroidx/window/layout/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/f$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/window/extensions/layout/WindowLayoutComponent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    .registers 2
    .param p1  # Landroidx/window/extensions/layout/WindowLayoutComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/f;->a:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 6
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/window/layout/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/window/layout/f;->c:Ljava/util/LinkedHashMap;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/window/layout/f;->d:Ljava/util/LinkedHashMap;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroidx/window/layout/p;Landroidx/window/layout/o;)V
    .registers 6
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

    .line 1
    const-string p2, "activity"

    .line 3
    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Landroidx/window/layout/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v0, p0, Landroidx/window/layout/f;->c:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/window/layout/f$a;

    .line 19
    if-nez v0, :cond_16

    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    invoke-virtual {v0, p3}, Landroidx/window/layout/f$a;->a(Landroidx/window/layout/o;)V

    .line 26
    iget-object v0, p0, Landroidx/window/layout/f;->d:Ljava/util/LinkedHashMap;

    .line 28
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Ly2/e;->a:Ly2/e;

    .line 33
    :goto_20
    if-nez v0, :cond_39

    .line 35
    new-instance v0, Landroidx/window/layout/f$a;

    .line 37
    invoke-direct {v0, p1}, Landroidx/window/layout/f$a;-><init>(Landroid/app/Activity;)V

    .line 40
    iget-object v1, p0, Landroidx/window/layout/f;->c:Ljava/util/LinkedHashMap;

    .line 42
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Landroidx/window/layout/f;->d:Ljava/util/LinkedHashMap;

    .line 47
    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, p3}, Landroidx/window/layout/f$a;->a(Landroidx/window/layout/o;)V

    .line 53
    iget-object p3, p0, Landroidx/window/layout/f;->a:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 55
    invoke-interface {p3, p1, v0}, Landroidx/window/extensions/layout/WindowLayoutComponent;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    .line 58
    :cond_39
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_3f

    .line 60
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    return-void

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    throw p1
.end method

.method public final b(Ll0/a;)V
    .registers 5
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
    const-string v0, "callback"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/f;->d:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/Activity;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_3a

    .line 19
    if-nez v1, :cond_18

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    return-void

    .line 25
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroidx/window/layout/f;->c:Ljava/util/LinkedHashMap;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/window/layout/f$a;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_3a

    .line 33
    if-nez v1, :cond_26

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    return-void

    .line 39
    :cond_26
    :try_start_26
    invoke-virtual {v1, p1}, Landroidx/window/layout/f$a;->c(Ll0/a;)V

    .line 42
    invoke-virtual {v1}, Landroidx/window/layout/f$a;->b()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_34

    .line 48
    iget-object p1, p0, Landroidx/window/layout/f;->a:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 50
    invoke-interface {p1, v1}, Landroidx/window/extensions/layout/WindowLayoutComponent;->removeWindowLayoutInfoListener(Ljava/util/function/Consumer;)V

    .line 53
    :cond_34
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3a

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    throw p1
.end method
