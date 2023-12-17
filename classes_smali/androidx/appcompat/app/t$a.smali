.class public final Landroidx/appcompat/app/t$a;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/t$b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/app/t$a;->a:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/app/t$a;->b:Ljava/util/ArrayDeque;

    .line 18
    iput-object p1, p0, Landroidx/appcompat/app/t$a;->c:Ljava/util/concurrent/Executor;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$a;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/app/t$a;->b:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Runnable;

    .line 12
    iput-object v1, p0, Landroidx/appcompat/app/t$a;->d:Ljava/lang/Runnable;

    .line 14
    if-eqz v1, :cond_14

    .line 16
    iget-object v2, p0, Landroidx/appcompat/app/t$a;->c:Ljava/util/concurrent/Executor;

    .line 18
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    :cond_14
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw v1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$a;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/app/t$a;->b:Ljava/util/ArrayDeque;

    .line 6
    new-instance v2, Landroidx/appcompat/app/s;

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, v3, p0, p1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->d:Ljava/lang/Runnable;

    .line 17
    if-nez p1, :cond_15

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/t$a;->a()V

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method
