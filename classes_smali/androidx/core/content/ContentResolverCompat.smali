.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContentResolverCompat$Api16Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Li0/d;)Landroid/database/Cursor;
    .registers 15

    .line 1
    if-eqz p6, :cond_1d

    .line 3
    :try_start_2
    monitor-enter p6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3} :catch_1b

    .line 4
    :try_start_3
    iget-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    .line 6
    if-nez v0, :cond_14

    .line 8
    invoke-static {}, Li0/d$a;->b()Landroid/os/CancellationSignal;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    .line 14
    iget-boolean v1, p6, Li0/d;->a:Z

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-static {v0}, Li0/d$a;->a(Ljava/lang/Object;)V

    .line 21
    :cond_14
    iget-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    .line 23
    monitor-exit p6

    .line 24
    goto :goto_1e

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    monitor-exit p6
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    .line 27
    :try_start_1a
    throw p0

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    goto :goto_2a

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    :goto_1e
    move-object v7, v0

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move-object v4, p3

    .line 36
    move-object v5, p4

    .line 37
    move-object v6, p5

    .line 38
    invoke-static/range {v1 .. v7}, Landroidx/core/content/ContentResolverCompat$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 41
    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_1b

    .line 42
    return-object p0

    .line 43
    :goto_2a
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    .line 45
    if-eqz p1, :cond_34

    .line 47
    new-instance p0, Landroidx/core/os/OperationCanceledException;

    .line 49
    invoke-direct {p0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    .line 52
    throw p0

    .line 53
    :cond_34
    throw p0
.end method
