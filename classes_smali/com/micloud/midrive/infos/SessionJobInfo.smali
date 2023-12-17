.class public Lcom/micloud/midrive/infos/SessionJobInfo;
.super Ljava/lang/Object;
.source "SessionJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/SessionJobInfo$SortByTimeDescComparator;,
        Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    }
.end annotation


# static fields
.field private static final KEY_ADD_TIME:Ljava/lang/String; = "add_time"

.field private static final KEY_FREE_NETWORK_ONLY:Ljava/lang/String; = "free_network_only"

.field private static final KEY_JOB_STATUS:Ljava/lang/String; = "job_status"

.field private static final KEY_LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field private static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final KEY_SYNC_AUTO:Ljava/lang/String; = "sync_auto"

.field private static final KEY_TRANSFER_INFO:Ljava/lang/String; = "transfer_info"


# instance fields
.field public final addTimeMills:J

.field public final freeNetworkOnly:Z

.field public final lastUpdateTimeMills:J

.field public final progress:J

.field public final status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public final syncAuto:Z

.field public final transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 8
    iput-wide p3, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    .line 10
    iput-wide p5, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    .line 12
    iput-wide p7, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 14
    iput-boolean p9, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 16
    iput-boolean p10, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    .line 18
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "transfer_info"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 10
    invoke-interface {v2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "job_status"

    .line 19
    iget-object v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "add_time"

    .line 30
    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v1, "last_update_time"

    .line 37
    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string v1, "progress"

    .line 44
    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    const-string v1, "free_network_only"

    .line 51
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    const-string v1, "sync_auto"

    .line 58
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 63
    return-object v0

    .line 64
    :catch_3f
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "SessionJobInfo{transferInfo="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", status="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", addTimeMills="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", lastUpdateTimeMills="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", progress="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", freeNetworkOnly="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", syncAuto="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const/16 v1, 0x7d

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
