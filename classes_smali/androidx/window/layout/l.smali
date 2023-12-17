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

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 6
    sput-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/SidecarCompat;)V
    .registers 3
    .param p1  # Landroidx/window/layout/SidecarCompat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    iget-object p1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    .line 15
    if-nez p1, :cond_11

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance v0, Landroidx/window/layout/l$a;

    .line 20
    invoke-direct {v0, p0}, Landroidx/window/layout/l$a;-><init>(Landroidx/window/layout/l;)V

    .line 23
    invoke-interface {p1, v0}, Landroidx/window/layout/e;->b(Landroidx/window/layout/l$a;)V

    .line 26
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

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    .line 13
    if-nez v1, :cond_1c

    .line 15
    new-instance p1, Landroidx/window/layout/r;

    .line 17
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    invoke-direct {p1, p2}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    .line 22
    invoke-virtual {p3, p1}, Landroidx/window/layout/o;->accept(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_88

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    instance-of v3, v2, Ljava/util/Collection;

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_2a

    .line 36
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2a

    .line 42
    goto :goto_43

    .line 43
    :cond_2a
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 47
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_43

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroidx/window/layout/l$b;

    .line 59
    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    .line 61
    invoke-static {v3, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2e

    .line 67
    const/4 v4, 0x1

    .line 68
    :cond_43
    :goto_43
    new-instance v2, Landroidx/window/layout/l$b;

    .line 70
    invoke-direct {v2, p1, p2, p3}, Landroidx/window/layout/l$b;-><init>(Landroid/app/Activity;Landroidx/window/layout/p;Landroidx/window/layout/o;)V

    .line 73
    iget-object p2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    if-nez v4, :cond_53

    .line 80
    invoke-interface {v1, p1}, Landroidx/window/layout/e;->a(Landroid/app/Activity;)V

    .line 83
    goto :goto_8a

    .line 84
    :cond_53
    iget-object p2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p2

    .line 90
    :cond_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result p3

    .line 94
    const/4 v1, 0x0

    .line 95
    if-eqz p3, :cond_70

    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object p3

    .line 101
    move-object v3, p3

    .line 102
    check-cast v3, Landroidx/window/layout/l$b;

    .line 104
    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    .line 106
    invoke-static {p1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_59

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move-object p3, v1

    .line 114
    :goto_71
    check-cast p3, Landroidx/window/layout/l$b;

    .line 116
    if-nez p3, :cond_76

    .line 118
    goto :goto_78

    .line 119
    :cond_76
    iget-object v1, p3, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/r;

    .line 121
    :goto_78
    if-eqz v1, :cond_8a

    .line 123
    iput-object v1, v2, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/r;

    .line 125
    iget-object p1, v2, Landroidx/window/layout/l$b;->b:Ljava/util/concurrent/Executor;

    .line 127
    new-instance p2, Landroidx/appcompat/app/s;

    .line 129
    const/4 p3, 0x5

    .line 130
    invoke-direct {p2, p3, v2, v1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    goto :goto_8a

    .line 137
    :catchall_88
    move-exception p1

    .line 138
    goto :goto_90

    .line 139
    :cond_8a
    :goto_8a
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_8c
    .catchall {:try_start_1c .. :try_end_8c} :catchall_88

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-void

    .line 145
    :goto_90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
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

    .line 1
    const-string v0, "callback"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_7b

    .line 11
    if-nez v1, :cond_e

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2d

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/window/layout/l$b;

    .line 38
    iget-object v4, v3, Landroidx/window/layout/l$b;->c:Ll0/a;

    .line 40
    if-ne v4, p1, :cond_19

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_19

    .line 46
    :cond_2d
    iget-object p1, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_77

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroidx/window/layout/l$b;

    .line 67
    iget-object v1, v1, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    .line 69
    iget-object v2, p0, Landroidx/window/layout/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    instance-of v3, v2, Ljava/util/Collection;

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v3, :cond_52

    .line 76
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_52

    .line 82
    goto :goto_6b

    .line 83
    :cond_52
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v2

    .line 87
    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6b

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroidx/window/layout/l$b;

    .line 99
    iget-object v3, v3, Landroidx/window/layout/l$b;->a:Landroid/app/Activity;

    .line 101
    invoke-static {v3, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_56

    .line 107
    const/4 v4, 0x1

    .line 108
    :cond_6b
    :goto_6b
    if-eqz v4, :cond_6e

    .line 110
    goto :goto_36

    .line 111
    :cond_6e
    iget-object v2, p0, Landroidx/window/layout/l;->a:Landroidx/window/layout/e;

    .line 113
    if-nez v2, :cond_73

    .line 115
    goto :goto_36

    .line 116
    :cond_73
    invoke-interface {v2, v1}, Landroidx/window/layout/e;->c(Landroid/app/Activity;)V

    .line 119
    goto :goto_36

    .line 120
    :cond_77
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_79
    .catchall {:try_start_e .. :try_end_79} :catchall_7b

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :catchall_7b
    move-exception p1

    .line 125
    monitor-exit v0

    .line 126
    throw p1
.end method
