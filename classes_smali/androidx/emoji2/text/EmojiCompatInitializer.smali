.class public Landroidx/emoji2/text/EmojiCompatInitializer;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Ld1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompatInitializer$b;,
        Landroidx/emoji2/text/EmojiCompatInitializer$a;,
        Landroidx/emoji2/text/EmojiCompatInitializer$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 5

    .line 1
    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$a;

    .line 3
    invoke-direct {v0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$a;-><init>(Landroid/content/Context;)V

    .line 6
    sget-object v1, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 8
    if-nez v1, :cond_1c

    .line 10
    sget-object v1, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    sget-object v2, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 15
    if-nez v2, :cond_17

    .line 17
    new-instance v2, Landroidx/emoji2/text/f;

    .line 19
    invoke-direct {v2, v0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer$a;)V

    .line 22
    sput-object v2, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 24
    :cond_17
    monitor-exit v1

    .line 25
    goto :goto_1c

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    .line 28
    throw p1

    .line 29
    :cond_1c
    :goto_1c
    invoke-static {p1}, Ld1/a;->c(Landroid/content/Context;)Ld1/a;

    .line 32
    move-result-object p1

    .line 33
    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object v1, Ld1/a;->e:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_28
    iget-object v2, p1, Ld1/a;->a:Ljava/util/HashMap;

    .line 43
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_3c

    .line 49
    new-instance v2, Ljava/util/HashSet;

    .line 51
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 54
    invoke-virtual {p1, v0, v2}, Ld1/a;->b(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    goto :goto_3c

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    goto :goto_4e

    .line 61
    :cond_3c
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3a

    .line 62
    check-cast v2, Landroidx/lifecycle/m;

    .line 64
    invoke-interface {v2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$1;

    .line 70
    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$1;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/Lifecycle;)V

    .line 73
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 76
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    return-object p1

    .line 79
    :goto_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_3a

    .line 80
    throw p1
.end method

.method public final dependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ld1/b<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
