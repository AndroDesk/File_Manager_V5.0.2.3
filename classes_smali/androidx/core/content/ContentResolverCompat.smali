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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Li0/d;)Landroid/database/Cursor;
    .registers 15

    if-eqz p6, :cond_1d

    :try_start_2
    monitor-enter p6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3} :catch_1b

    :try_start_3
    iget-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    if-nez v0, :cond_14

    invoke-static {}, Li0/d$a;->b()Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    iget-boolean v1, p6, Li0/d;->a:Z

    if-eqz v1, :cond_14

    invoke-static {v0}, Li0/d$a;->a(Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p6, Li0/d;->c:Landroid/os/CancellationSignal;

    monitor-exit p6

    goto :goto_1e

    :catchall_18
    move-exception p0

    monitor-exit p6
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw p0

    :catch_1b
    move-exception p0

    goto :goto_2a

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    move-object v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Landroidx/core/content/ContentResolverCompat$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_1b

    return-object p0

    :goto_2a
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    if-eqz p1, :cond_34

    new-instance p0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {p0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw p0

    :cond_34
    throw p0
.end method
