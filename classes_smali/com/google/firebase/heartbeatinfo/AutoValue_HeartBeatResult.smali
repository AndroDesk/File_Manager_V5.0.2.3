.class final Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;
.super Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
.source "AutoValue_HeartBeatResult.java"


# instance fields
.field private final heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field private final millis:J

.field private final sdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;-><init>()V

    .line 4
    if-eqz p1, :cond_16

    .line 6
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 10
    if-eqz p4, :cond_e

    .line 12
    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 17
    const-string p2, "Null heartBeat"

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    .line 25
    const-string p2, "Null sdkName"

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
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
    instance-of v1, p1, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_30

    .line 10
    check-cast p1, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    .line 12
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getSdkName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2e

    .line 24
    iget-wide v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getMillis()J

    .line 29
    move-result-wide v5

    .line 30
    cmp-long v1, v3, v5

    .line 32
    if-nez v1, :cond_2e

    .line 34
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 36
    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getHeartBeat()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2e

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v0, v2

    .line 48
    :goto_2f
    return v0

    .line 49
    :cond_30
    return v2
.end method

.method public getHeartBeat()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 3
    return-object v0
.end method

.method public getMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 3
    return-wide v0
.end method

.method public getSdkName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 14
    const/16 v4, 0x20

    .line 16
    ushr-long v4, v2, v4

    .line 18
    xor-long/2addr v2, v4

    .line 19
    long-to-int v2, v2

    .line 20
    xor-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 27
    move-result v1

    .line 28
    xor-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "HeartBeatResult{sdkName="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", millis="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", heartBeat="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "}"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
