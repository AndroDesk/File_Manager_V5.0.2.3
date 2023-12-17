.class public Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
.super Ljava/lang/Object;
.source "MiCloudSyncResult.java"


# instance fields
.field public final error:Ljava/lang/Throwable;

.field public final errorCodeLegacy:I

.field public final errorReasonForStats:Ljava/lang/String;

.field public final isSuccess:Z


# direct methods
.method private constructor <init>(ZLjava/lang/Throwable;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->error:Ljava/lang/Throwable;

    .line 8
    iput p3, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    .line 10
    iput-object p4, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
    .registers 5

    .line 1
    if-eqz p0, :cond_9

    .line 3
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;-><init>(ZLjava/lang/Throwable;ILjava/lang/String;)V

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p1, "error must be nonNull"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
.end method

.method public static createSuccessResult()Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "no_error"

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;-><init>(ZLjava/lang/Throwable;ILjava/lang/String;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "MiCloudSyncResult{isSuccess="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", error="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->error:Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", errorCodeLegacy="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", errorReasonForStats=\'"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/16 v1, 0x27

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    const/16 v1, 0x7d

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
