.class public final Landroidx/window/layout/SidecarCompat$b;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/layout/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/window/layout/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Landroidx/window/layout/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/l$a;)V
    .registers 2
    .param p1  # Landroidx/window/layout/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$b;->a:Landroidx/window/layout/e$a;

    .line 6
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    new-instance p1, Ljava/util/WeakHashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$b;->c:Ljava/util/WeakHashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroidx/window/layout/r;)V
    .registers 5
    .param p1  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/layout/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$b;->c:Ljava/util/WeakHashMap;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/window/layout/r;

    .line 19
    invoke-static {p2, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2d

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$b;->c:Ljava/util/WeakHashMap;

    .line 31
    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/window/layout/r;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2d

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$b;->a:Landroidx/window/layout/e$a;

    .line 42
    invoke-interface {v0, p1, p2}, Landroidx/window/layout/e$a;->a(Landroid/app/Activity;Landroidx/window/layout/r;)V

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    throw p1
.end method
