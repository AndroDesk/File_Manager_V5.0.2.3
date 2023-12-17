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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    iput-object p2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iput-wide p3, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    iput-wide p5, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    iput-wide p7, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    iput-boolean p9, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    iput-boolean p10, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "transfer_info"

    iget-object v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "job_status"

    iget-object v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "add_time"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "last_update_time"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "progress"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "free_network_only"

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sync_auto"

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v0

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "SessionJobInfo{transferInfo="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addTimeMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateTimeMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->lastUpdateTimeMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", freeNetworkOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", syncAuto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
