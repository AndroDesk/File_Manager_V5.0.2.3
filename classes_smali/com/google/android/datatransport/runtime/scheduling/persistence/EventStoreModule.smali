.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method public static schemaVersion()I
    .registers 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->SCHEMA_VERSION:I

    .line 3
    return v0
.end method

.method public static storeConfig()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .registers 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract eventStore(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method

.method public abstract synchronizationGuard(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method
