.class public final Ln4/h$a;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ln4/h$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p2, p0, Ln4/h$a;->a:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 8
    return-void
.end method
