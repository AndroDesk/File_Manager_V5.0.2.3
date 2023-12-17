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

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/internal/AnimStats;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/internal/AnimStats;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 11
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

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 3
    iget v0, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 5
    return v0
.end method

.method public getTotalAnimCount()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    if-eqz v1, :cond_e

    .line 5
    iget-object v2, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 7
    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 9
    add-int/2addr v0, v2

    .line 10
    iget-object v1, v1, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 12
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 14
    goto :goto_2

    .line 15
    :cond_e
    return v0
.end method

.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-wide v1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    .line 3
    iget-wide v3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    .line 5
    const/4 v5, 0x1

    .line 6
    iget-boolean v6, p0, Lmiuix/animation/internal/AnimTask;->toPage:Z

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v6}, Lmiuix/animation/internal/AnimRunnerTask;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    goto :goto_14

    .line 13
    :catch_c
    move-exception v0

    .line 14
    const-string v1, "miuix_anim"

    .line 16
    const-string v2, "doAnimationFrame failed"

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_14
    sget-object v0, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_22

    .line 29
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    :cond_22
    return-void
.end method

.method public setup(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 8
    iput p2, v0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 10
    iput p1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 12
    return-void
.end method

.method public start(JJZ)V
    .registers 6

    .line 1
    iput-wide p1, p0, Lmiuix/animation/internal/AnimTask;->totalT:J

    .line 3
    iput-wide p3, p0, Lmiuix/animation/internal/AnimTask;->deltaT:J

    .line 5
    iput-boolean p5, p0, Lmiuix/animation/internal/AnimTask;->toPage:Z

    .line 7
    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method public updateAnimStats()V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 3
    iget v1, p0, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 5
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 7
    iget v2, v2, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 9
    add-int/2addr v1, v2

    .line 10
    :goto_9
    if-ge v0, v1, :cond_5d

    .line 12
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 14
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_5a

    .line 25
    :cond_18
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 27
    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_53

    .line 32
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 34
    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 36
    if-ne v3, v4, :cond_26

    .line 38
    goto :goto_53

    .line 39
    :cond_26
    iget-object v3, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 41
    iget v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 43
    add-int/2addr v5, v4

    .line 44
    iput v5, v3, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 46
    iget-object v2, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 48
    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 50
    const/4 v3, 0x3

    .line 51
    if-eq v2, v3, :cond_4b

    .line 53
    const/4 v3, 0x4

    .line 54
    if-eq v2, v3, :cond_43

    .line 56
    const/4 v3, 0x5

    .line 57
    if-eq v2, v3, :cond_3b

    .line 59
    goto :goto_5a

    .line 60
    :cond_3b
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 62
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 64
    add-int/2addr v3, v4

    .line 65
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 67
    goto :goto_5a

    .line 68
    :cond_43
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 70
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 72
    add-int/2addr v3, v4

    .line 73
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 75
    goto :goto_5a

    .line 76
    :cond_4b
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 78
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 80
    add-int/2addr v3, v4

    .line 81
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 83
    goto :goto_5a

    .line 84
    :cond_53
    :goto_53
    iget-object v2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 86
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 88
    add-int/2addr v3, v4

    .line 89
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 91
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_9

    .line 94
    :cond_5d
    return-void
.end method
