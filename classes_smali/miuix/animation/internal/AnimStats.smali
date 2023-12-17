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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lmiuix/animation/internal/AnimStats;)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 3
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 8
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 10
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 15
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 17
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 22
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 24
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 26
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 29
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 31
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 33
    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 36
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 38
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 40
    add-int/2addr v0, v1

    .line 41
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 43
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 45
    iget p1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 47
    add-int/2addr v0, p1

    .line 48
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 50
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 4
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 6
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 8
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 10
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 12
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 14
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 16
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 9
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 17
    if-ge v0, v1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 23
    :goto_16
    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 3
    if-lez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AnimStats{animCount = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", startCount="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", startedCount = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", failCount="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", updateCount="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", cancelCount="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", endCount="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 69
    const/16 v2, 0x7d

    .line 71
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
