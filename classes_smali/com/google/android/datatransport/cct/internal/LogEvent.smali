.class public abstract Lcom/google/android/datatransport/cct/internal/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static builder()Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder;-><init>()V

    .line 6
    return-object v0
.end method

.method public static jsonBuilder(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/LogEvent;->builder()Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setSourceExtensionJsonProto3(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static protoBuilder([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/LogEvent;->builder()Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setSourceExtension([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract getEventCode()Ljava/lang/Integer;
.end method

.method public abstract getEventTimeMs()J
.end method

.method public abstract getEventUptimeMs()J
.end method

.method public abstract getNetworkConnectionInfo()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
.end method

.method public abstract getSourceExtension()[B
.end method

.method public abstract getSourceExtensionJsonProto3()Ljava/lang/String;
.end method

.method public abstract getTimezoneOffsetSeconds()J
.end method
