.class public Lmiuix/animation/internal/AnimInfo;
.super Ljava/lang/Object;
.source "AnimInfo.java"


# instance fields
.field public volatile delay:J

.field public volatile initTime:J

.field public volatile justEnd:Z

.field public volatile op:B

.field public volatile progress:D

.field public volatile setToValue:D

.field public volatile startTime:J

.field public volatile startValue:D

.field public volatile targetValue:D

.field public volatile tintMode:I

.field public volatile value:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 7
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 12
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 14
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 16
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 18
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 8
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 10
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 12
    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 19
    const-wide v1, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 24
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 26
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 28
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 30
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AnimInfo{op="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-byte v1, p0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", delay = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", initTime="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", startTime="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", progress="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", config="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", startValue="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", targetValue="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", value="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", setToValue="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 102
    const/16 v1, 0x7d

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method
