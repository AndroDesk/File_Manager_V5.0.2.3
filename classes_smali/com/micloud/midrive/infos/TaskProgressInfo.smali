.class public Lcom/micloud/midrive/infos/TaskProgressInfo;
.super Ljava/lang/Object;
.source "TaskProgressInfo.java"


# instance fields
.field public final isWaitNetwork:Z

.field public final progress:J

.field public final size:J


# direct methods
.method public constructor <init>(JJZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 6
    iput-wide p3, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->size:J

    .line 8
    iput-boolean p5, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "TaskProgressInfo{progress="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", size="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->size:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", isWaitNetwork="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    const/16 v1, 0x7d

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
