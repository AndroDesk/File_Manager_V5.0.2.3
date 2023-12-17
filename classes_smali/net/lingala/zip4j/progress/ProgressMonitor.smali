.class public final Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field public a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public b:J

.field public c:J

.field public d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 6
    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 7

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    .line 6
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v2, p1, v2

    .line 12
    if-lez v2, :cond_11

    .line 14
    const-wide/16 v2, 0x64

    .line 16
    mul-long/2addr v0, v2

    .line 17
    div-long/2addr v0, p1

    .line 18
    :cond_11
    return-void
.end method
