.class public final Ln/a;
.super Ln/c;
.source "ArchTaskExecutor.java"


# static fields
.field public static volatile c:Ln/a;


# instance fields
.field public a:Ln/c;

.field public b:Ln/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ln/c;-><init>()V

    .line 4
    new-instance v0, Ln/b;

    .line 6
    invoke-direct {v0}, Ln/b;-><init>()V

    .line 9
    iput-object v0, p0, Ln/a;->b:Ln/b;

    .line 11
    iput-object v0, p0, Ln/a;->a:Ln/c;

    .line 13
    return-void
.end method

.method public static a()Ln/a;
    .registers 2

    .line 1
    sget-object v0, Ln/a;->c:Ln/a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Ln/a;->c:Ln/a;

    .line 7
    return-object v0

    .line 8
    :cond_7
    const-class v0, Ln/a;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Ln/a;->c:Ln/a;

    .line 13
    if-nez v1, :cond_15

    .line 15
    new-instance v1, Ln/a;

    .line 17
    invoke-direct {v1}, Ln/a;-><init>()V

    .line 20
    sput-object v1, Ln/a;->c:Ln/a;

    .line 22
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 23
    sget-object v0, Ln/a;->c:Ln/a;

    .line 25
    return-object v0

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method


# virtual methods
.method public final b(Ln/c;)V
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 3
    iget-object p1, p0, Ln/a;->b:Ln/b;

    .line 5
    :cond_4
    iput-object p1, p0, Ln/a;->a:Ln/c;

    .line 7
    return-void
.end method

.method public final executeOnDiskIO(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln/a;->a:Ln/c;

    .line 3
    invoke-virtual {v0, p1}, Ln/c;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public final isMainThread()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ln/a;->a:Ln/c;

    .line 3
    invoke-virtual {v0}, Ln/c;->isMainThread()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final postToMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln/a;->a:Ln/c;

    .line 3
    invoke-virtual {v0, p1}, Ln/c;->postToMainThread(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method
