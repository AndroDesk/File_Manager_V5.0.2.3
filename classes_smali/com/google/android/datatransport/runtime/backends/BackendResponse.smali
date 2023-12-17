.class public abstract Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.super Ljava/lang/Object;
.source "BackendResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 5
    const-wide/16 v2, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 10
    return-object v0
.end method

.method public static ok(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 5
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 8
    return-object v0
.end method

.method public static transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 5
    const-wide/16 v2, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract getNextRequestWaitMillis()J
.end method

.method public abstract getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
.end method
