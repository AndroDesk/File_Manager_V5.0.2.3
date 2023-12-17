.class public final Ls2/b;
.super Li2/i;
.source "NewThreadScheduler.java"


# static fields
.field public static final b:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "rx2.newthread-priority"

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xa

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v0

    .line 23
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 25
    const-string v2, "RxNewThreadScheduler"

    .line 27
    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v1, Ls2/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Ls2/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 3
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 6
    iput-object v0, p0, Ls2/b;->a:Ljava/util/concurrent/ThreadFactory;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    .line 1
    new-instance v0, Ls2/c;

    .line 3
    iget-object v1, p0, Ls2/b;->a:Ljava/util/concurrent/ThreadFactory;

    .line 5
    invoke-direct {v0, v1}, Ls2/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    return-object v0
.end method
