.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;
.super Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
.source "AutoValue_EventStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

.field private eventCleanUpAge:Ljava/lang/Long;

.field private loadBatchSize:Ljava/lang/Integer;

.field private maxBlobByteSizePerRow:Ljava/lang/Integer;

.field private maxStorageSizeInBytes:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, " maxStorageSizeInBytes"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    .line 12
    if-nez v1, :cond_13

    .line 14
    const-string v1, " loadBatchSize"

    .line 16
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :cond_13
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    .line 22
    if-nez v1, :cond_1d

    .line 24
    const-string v1, " criticalSectionEnterTimeoutMs"

    .line 26
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    .line 32
    if-nez v1, :cond_27

    .line 34
    const-string v1, " eventCleanUpAge"

    .line 36
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    .line 42
    if-nez v1, :cond_31

    .line 44
    const-string v1, " maxBlobByteSizePerRow"

    .line 46
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5d

    .line 56
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    .line 58
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 63
    move-result-wide v3

    .line 64
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v5

    .line 70
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v6

    .line 76
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 81
    move-result-wide v7

    .line 82
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v9

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v2, v0

    .line 90
    invoke-direct/range {v2 .. v10}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;-><init>(JIIJILcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$1;)V

    .line 93
    return-object v0

    .line 94
    :cond_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 96
    const-string v2, "Missing required properties:"

    .line 98
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v1
.end method

.method public setCriticalSectionEnterTimeoutMs(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public setEventCleanUpAge(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public setLoadBatchSize(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public setMaxBlobByteSizePerRow(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public setMaxStorageSizeInBytes(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    .line 7
    return-object p0
.end method
