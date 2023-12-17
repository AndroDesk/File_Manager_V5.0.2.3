.class public abstract Ln4/h;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public final b:Z

.field public final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ln4/h$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Ln4/h$a;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 6
    iput-object v0, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ln4/h;->b:Z

    .line 11
    iget-object p1, p1, Ln4/h$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 13
    iput-object p1, p0, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(Lm4/m;)J
.end method

.method public final b(Lm4/m;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln4/h;->b:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 7
    iget-object v1, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 9
    iget-object v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 20
    const-string v0, "invalid operation - Zip4j is in busy state"

    .line 22
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_19
    :goto_19
    iget-object v0, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 28
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 30
    iput-object v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 32
    const-wide/16 v1, 0x0

    .line 34
    iput-wide v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 36
    iput-wide v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    .line 38
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 40
    iput-object v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 42
    invoke-virtual {p0}, Ln4/h;->d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 45
    iget-boolean v0, p0, Ln4/h;->b:Z

    .line 47
    if-eqz v0, :cond_43

    .line 49
    invoke-virtual {p0, p1}, Ln4/h;->a(Lm4/m;)J

    .line 52
    move-result-wide v0

    .line 53
    iget-object v2, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 55
    iput-wide v0, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 57
    iget-object v0, p0, Ln4/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v1, Ln4/g;

    .line 61
    invoke-direct {v1, p0, p1}, Ln4/g;-><init>(Ln4/h;Lm4/m;)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    iget-object v0, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 70
    invoke-virtual {p0, p1, v0}, Ln4/h;->e(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 73
    :goto_48
    return-void
.end method

.method public abstract c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
.end method

.method public final e(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ln4/h;->c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 4
    sget-object p1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 6
    iput-object p1, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 8
    sget-object p1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 10
    iput-object p1, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return-void

    .line 13
    :catch_c
    move-exception p1

    .line 14
    goto :goto_10

    .line 15
    :catch_e
    move-exception p1

    .line 16
    goto :goto_1e

    .line 17
    :goto_10
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 19
    iput-object v0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 21
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 23
    iput-object v0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 25
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 30
    throw p2

    .line 31
    :goto_1e
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 33
    iput-object v0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 35
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 37
    iput-object v0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 39
    throw p1
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Ln4/h;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 3
    iget-boolean v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 10
    iput-object v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 12
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 14
    iput-object v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 18
    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 20
    const-string v2, "Task cancelled"

    .line 22
    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 25
    throw v0
.end method
