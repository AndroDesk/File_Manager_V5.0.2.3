.class public final Ln4/g;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ln4/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ln4/h;Lm4/m;)V
    .registers 3

    iput-object p1, p0, Ln4/g;->b:Ln4/h;

    iput-object p2, p0, Ln4/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    iget-object v1, p0, Ln4/g;->a:Ljava/lang/Object;

    iget-object v2, v0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0, v1, v2}, Ln4/h;->e(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_9} :catch_15
    .catchall {:try_start_0 .. :try_end_9} :catchall_c

    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    goto :goto_17

    :catchall_c
    move-exception v0

    iget-object v1, p0, Ln4/g;->b:Ln4/h;

    iget-object v1, v1, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :catch_15
    iget-object v0, p0, Ln4/g;->b:Ln4/h;

    :goto_17
    iget-object v0, v0, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
