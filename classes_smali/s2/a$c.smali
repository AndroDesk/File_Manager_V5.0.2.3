.class public final Ls2/a$c;
.super Ls2/c;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ls2/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Ls2/a$c;->c:J

    .line 8
    return-void
.end method
