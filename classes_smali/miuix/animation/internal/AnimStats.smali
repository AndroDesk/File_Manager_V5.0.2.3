.class Lmiuix/animation/internal/AnimStats;
.super Ljava/lang/Object;
.source "AnimStats.java"

# interfaces
.implements Lmiuix/animation/utils/ObjectPool$IPoolObject;


# instance fields
.field public animCount:I

.field public cancelCount:I

.field public endCount:I

.field public failCount:I

.field public initCount:I

.field public startCount:I

.field public updateCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lmiuix/animation/internal/AnimStats;)V
    .registers 4

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->initCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    iget p1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    return-void
.end method

.method public isRunning()Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    if-ge v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "AnimStats{animCount = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startedCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
