.class public Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
.super Ljava/lang/Object;
.source "MiCloudSyncResult.java"


# instance fields
.field public final error:Ljava/lang/Throwable;

.field public final errorCodeLegacy:I

.field public final errorReasonForStats:Ljava/lang/String;

.field public final isSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Throwable;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->error:Ljava/lang/Throwable;

    iput p3, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    iput-object p4, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    return-void
.end method

.method public static createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
    .registers 5

    if-eqz p0, :cond_9

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;-><init>(ZLjava/lang/Throwable;ILjava/lang/String;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error must be nonNull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSuccessResult()Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;
    .registers 5

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "no_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;-><init>(ZLjava/lang/Throwable;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "MiCloudSyncResult{isSuccess="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCodeLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorReasonForStats=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
