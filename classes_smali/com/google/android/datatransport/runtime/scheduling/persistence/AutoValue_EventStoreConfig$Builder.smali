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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .registers 12

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-string v0, " maxStorageSizeInBytes"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    if-nez v1, :cond_13

    const-string v1, " loadBatchSize"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    if-nez v1, :cond_1d

    const-string v1, " criticalSectionEnterTimeoutMs"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    if-nez v1, :cond_27

    const-string v1, " eventCleanUpAge"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    if-nez v1, :cond_31

    const-string v1, " maxBlobByteSizePerRow"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;-><init>(JIIJILcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$1;)V

    return-object v0

    :cond_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCriticalSectionEnterTimeoutMs(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->criticalSectionEnterTimeoutMs:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEventCleanUpAge(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->eventCleanUpAge:Ljava/lang/Long;

    return-object p0
.end method

.method public setLoadBatchSize(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->loadBatchSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxBlobByteSizePerRow(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxBlobByteSizePerRow:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxStorageSizeInBytes(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;->maxStorageSizeInBytes:Ljava/lang/Long;

    return-object p0
.end method