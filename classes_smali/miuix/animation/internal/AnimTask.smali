.class public Lmiuix/animation/internal/AnimTask;
.super Lmiuix/animation/utils/LinkNode;
.source "AnimTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/utils/LinkNode<",
        "Lmiuix/animation/internal/AnimTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final MAX_PAGE_SIZE:I = 0x96

.field public static final MAX_SINGLE_TASK_SIZE:I = 0xfa0

.field public static final MAX_TO_PAGE_SIZE:I = 0x1f4

.field public static final OP_CANCEL:B = 0x4t

.field public static final OP_END:B = 0x3t

.field public static final OP_FAILED:B = 0x5t

.field public static final OP_INVALID:B = 0x0t

.field public static final OP_START:B = 0x1t

.field public static final OP_UPDATE:B = 0x2t

.field public static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animStats:Lmiuix/animation/internal/AnimStats;

.field public volatile deltaT:J

.field public volatile info:Lmiuix/animation/internal/TransitionInfo;

.field public volatile startPos:I

.field public volatile toPage:Z

.field public volatile totalT:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    new-instance v0, Lmiuix/animation/internal/AnimStats;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimStats;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    return-void
.end method

.method public static isRunning(B)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method


# virtual methods
.method public getAnimCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v0, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    return v0
.end method

.method public getTotalAnimCount()I
    .registers 4

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_e

    iget-object v2, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v0, v2

    iget-object v1, v1, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    goto :goto_2

    :cond_e
    return v0
.end method

.method public run()V
    .registers 8

    :try_start_0
    iget-wide v1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    iget-wide v3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    const/4 v5, 0x1

    iget-boolean v6, p0, Lmiuix/animation/internal/AnimTask;->toPage:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lmiuix/animation/internal/AnimRunnerTask;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "miuix_anim"

    const-string v2, "doAnimationFrame failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    sget-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_22
    return-void
.end method

.method public setup(II)V
    .registers 4

    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iput p2, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    iput p1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    return-void
.end method

.method public start(JJZ)V
    .registers 6

    iput-wide p1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    iput-wide p3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    iput-boolean p5, p0, Lmiuix/animation/internal/AnimTask;->toPage:Z

    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateAnimStats()V
    .registers 7

    iget v0, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    iget v1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v1, v2

    :goto_9
    if-ge v0, v1, :cond_5d

    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    if-nez v2, :cond_18

    goto :goto_5a

    :cond_18
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v4, 0x1

    if-eqz v3, :cond_53

    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    if-ne v3, v4, :cond_26

    goto :goto_53

    :cond_26
    iget-object v3, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    add-int/2addr v5, v4

    iput v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    iget-object v2, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_43

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3b

    goto :goto_5a

    :cond_3b
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    goto :goto_5a

    :cond_43
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    goto :goto_5a

    :cond_4b
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    goto :goto_5a

    :cond_53
    :goto_53
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_5d
    return-void
.end method
