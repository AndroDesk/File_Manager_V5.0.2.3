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

    const-string v0, "rx2.newthread-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls2/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ls2/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0}, Li2/i;-><init>()V

    iput-object v0, p0, Ls2/b;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    new-instance v0, Ls2/c;

    iget-object v1, p0, Ls2/b;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Ls2/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
