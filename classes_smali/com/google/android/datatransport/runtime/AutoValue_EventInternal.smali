.class final Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
.super Lcom/google/android/datatransport/runtime/EventInternal;
.source "AutoValue_EventInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;
    }
.end annotation


# instance fields
.field private final autoMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final code:Ljava/lang/Integer;

.field private final encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

.field private final eventMillis:J

.field private final transportName:Ljava/lang/String;

.field private final uptimeMillis:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/datatransport/runtime/EncodedPayload;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/EventInternal;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 6
    iput-wide p4, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 7
    iput-wide p6, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 8
    iput-object p8, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$1;)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;)V

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
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_5b

    .line 10
    check-cast p1, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_59

    .line 24
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 26
    if-nez v1, :cond_22

    .line 28
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_59

    .line 34
    goto :goto_2c

    .line 35
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_59

    .line 45
    :goto_2c
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Lcom/google/android/datatransport/runtime/EncodedPayload;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_59

    .line 57
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 59
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    .line 62
    move-result-wide v5

    .line 63
    cmp-long v1, v3, v5

    .line 65
    if-nez v1, :cond_59

    .line 67
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 69
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    .line 72
    move-result-wide v5

    .line 73
    cmp-long v1, v3, v5

    .line 75
    if-nez v1, :cond_59

    .line 77
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 82
    move-result-object p1

    .line 83
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_59

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v0, v2

    .line 91
    :goto_5a
    return v0

    .line 92
    :cond_5b
    return v2
.end method

.method public getAutoMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 3
    return-object v0
.end method

.method public getEventMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 3
    return-wide v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUptimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 14
    if-nez v2, :cond_11

    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 21
    move-result v2

    .line 22
    :goto_15
    xor-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EncodedPayload;->hashCode()I

    .line 29
    move-result v2

    .line 30
    xor-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 34
    const/16 v4, 0x20

    .line 36
    ushr-long v5, v2, v4

    .line 38
    xor-long/2addr v2, v5

    .line 39
    long-to-int v2, v2

    .line 40
    xor-int/2addr v0, v2

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 44
    ushr-long v4, v2, v4

    .line 46
    xor-long/2addr v2, v4

    .line 47
    long-to-int v2, v2

    .line 48
    xor-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    .line 52
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 55
    move-result v1

    .line 56
    xor-int/2addr v0, v1

    .line 57
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "EventInternal{transportName="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", code="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", encodedPayload="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", eventMillis="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", uptimeMillis="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", autoMetadata="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "}"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
