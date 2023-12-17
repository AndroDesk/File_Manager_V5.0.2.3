.class public abstract Lcom/google/android/datatransport/runtime/EventInternal;
.super Ljava/lang/Object;
.source "EventInternal.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setAutoMetadata(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    if-nez p1, :cond_e

    .line 13
    const-string p1, ""

    .line 15
    :cond_e
    return-object p1
.end method

.method public abstract getAutoMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCode()Ljava/lang/Integer;
.end method

.method public abstract getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;
.end method

.method public abstract getEventMillis()J
.end method

.method public final getInteger(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    if-nez p1, :cond_e

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    :goto_16
    return p1
.end method

.method public final getLong(Ljava/lang/String;)J
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    if-nez p1, :cond_f

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    move-result-wide v0

    .line 24
    :goto_17
    return-wide v0
.end method

.method public final getMetadata()Ljava/util/Map;
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
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object p2, p1

    .line 15
    :goto_e
    return-object p2
.end method

.method public getPayload()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract getTransportName()Ljava/lang/String;
.end method

.method public abstract getUptimeMillis()J
.end method

.method public toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/HashMap;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setAutoMetadata(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
