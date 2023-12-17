.class final Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;
.super Lcom/google/android/datatransport/cct/internal/LogResponse;
.source "AutoValue_LogResponse.java"


# instance fields
.field private final nextRequestWaitMillis:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/LogResponse;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;->nextRequestWaitMillis:J

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/LogResponse;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_18

    .line 10
    check-cast p1, Lcom/google/android/datatransport/cct/internal/LogResponse;

    .line 12
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;->nextRequestWaitMillis:J

    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/LogResponse;->getNextRequestWaitMillis()J

    .line 17
    move-result-wide v5

    .line 18
    cmp-long p1, v3, v5

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v2

    .line 24
    :goto_17
    return v0

    .line 25
    :cond_18
    return v2
.end method

.method public getNextRequestWaitMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;->nextRequestWaitMillis:J

    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;->nextRequestWaitMillis:J

    .line 3
    const/16 v2, 0x20

    .line 5
    ushr-long v2, v0, v2

    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const v1, 0xf4243

    .line 12
    xor-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "LogResponse{nextRequestWaitMillis="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;->nextRequestWaitMillis:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "}"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
