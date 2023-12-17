.class public Lmiuix/animation/internal/AnimData;
.super Ljava/lang/Object;
.source "AnimData.java"


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public frameCount:I

.field public initTime:J

.field public isCompleted:Z

.field public justEnd:Z

.field public logEnabled:Z

.field public op:B

.field public progress:D

.field public property:Lmiuix/animation/property/FloatProperty;

.field public startTime:J

.field public startValue:D

.field public targetValue:D

.field public tintMode:I

.field public value:D

.field public velocity:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    .line 7
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 12
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 14
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 16
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 4
    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 6
    return-void
.end method

.method public from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 3
    iput-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 5
    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 7
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 9
    iget v0, p1, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 11
    iput v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 13
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 15
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 17
    iput-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    .line 19
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 21
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 23
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 25
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 27
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 29
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 31
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 33
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 35
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 37
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 39
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 41
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 43
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 45
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 47
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 49
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 51
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 53
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 55
    iget-boolean v0, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 57
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 59
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 61
    iget-boolean p1, p1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 63
    iput-boolean p1, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 65
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I

    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    .line 71
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 77
    invoke-static {p2, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J

    .line 80
    move-result-wide p1

    .line 81
    iput-wide p1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    .line 83
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 4
    iput v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 8
    return-void
.end method

.method public setOp(B)V
    .registers 3

    .line 1
    iput-byte p1, p0, Lmiuix/animation/internal/AnimData;->op:B

    .line 3
    if-eqz p1, :cond_a

    .line 5
    const/4 v0, 0x2

    .line 6
    if-le p1, v0, :cond_8

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    :goto_a
    const/4 p1, 0x1

    .line 12
    :goto_b
    iput-boolean p1, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 14
    return-void
.end method

.method public to(Lmiuix/animation/listener/UpdateInfo;)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 3
    iput v0, p1, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 5
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 7
    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    .line 9
    iput-byte v1, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 11
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 13
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    .line 15
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 17
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 19
    iget v1, p0, Lmiuix/animation/internal/AnimData;->tintMode:I

    .line 21
    iput v1, v0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 23
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 25
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 27
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 29
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 31
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 33
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 35
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 37
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 39
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 41
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 43
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 45
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 47
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 49
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 51
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 53
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimData;->isCompleted:Z

    .line 55
    iput-boolean v0, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 57
    iget-object v0, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 59
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 61
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 63
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 65
    iput-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 67
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 69
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 71
    iput-boolean v0, p1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 73
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimData;->clear()V

    .line 76
    return-void
.end method
