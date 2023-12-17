.class public final Ln4/g;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ln4/h;


# direct methods
.method public constructor <init>(Ln4/h;Lm4/m;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln4/g;->b:Ln4/h;

    .line 3
    iput-object p2, p0, Ln4/g;->a:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    .line 3
    iget-object v1, p0, Ln4/g;->a:Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 7
    invoke-virtual {v0, v1, v2}, Ln4/h;->e(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_9} :catch_15
    .catchall {:try_start_0 .. :try_end_9} :catchall_c

    .line 10
    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    .line 12
    goto :goto_17

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    iget-object v1, p0, Ln4/g;->b:Ln4/h;

    .line 16
    iget-object v1, v1, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 21
    throw v0

    .line 22
    :catch_15
    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    .line 24
    :goto_17
    iget-object v0, v0, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 29
    return-void
.end method
