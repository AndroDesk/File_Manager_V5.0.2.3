.class public final Ln/a;
.super Ln/c;
.source "ArchTaskExecutor.java"


# static fields
.field public static volatile c:Ln/a;


# instance fields
.field public a:Ln/c;

.field public b:Ln/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ln/c;-><init>()V

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Ln/a;->b:Ln/b;

    iput-object v0, p0, Ln/a;->a:Ln/c;

    return-void
.end method

.method public static a()Ln/a;
    .registers 2

    sget-object v0, Ln/a;->c:Ln/a;

    if-eqz v0, :cond_7

    sget-object v0, Ln/a;->c:Ln/a;

    return-object v0

    :cond_7
    const-class v0, Ln/a;

    monitor-enter v0

    :try_start_a
    sget-object v1, Ln/a;->c:Ln/a;

    if-nez v1, :cond_15

    new-instance v1, Ln/a;

    invoke-direct {v1}, Ln/a;-><init>()V

    sput-object v1, Ln/a;->c:Ln/a;

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Ln/a;->c:Ln/a;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public final b(Ln/c;)V
    .registers 2

    if-nez p1, :cond_4

    iget-object p1, p0, Ln/a;->b:Ln/b;

    :cond_4
    iput-object p1, p0, Ln/a;->a:Ln/c;

    return-void
.end method

.method public final executeOnDiskIO(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Ln/a;->a:Ln/c;

    invoke-virtual {v0, p1}, Ln/c;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isMainThread()Z
    .registers 2

    iget-object v0, p0, Ln/a;->a:Ln/c;

    invoke-virtual {v0}, Ln/c;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public final postToMainThread(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Ln/a;->a:Ln/c;

    invoke-virtual {v0, p1}, Ln/c;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
