.class Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/BackendRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;
    }
.end annotation


# static fields
.field private static final BACKEND_KEY_PREFIX:Ljava/lang/String; = "backend:"

.field private static final TAG:Ljava/lang/String; = "BackendRegistry"


# instance fields
.field private final backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

.field private final backends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/runtime/backends/TransportBackend;",
            ">;"
        }
    .end annotation
.end field

.field private final creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;-><init>(Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    .line 5
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_13

    .line 10
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2f

    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/BackendFactory;

    .line 25
    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2f

    .line 26
    if-nez v0, :cond_1e

    .line 28
    const/4 p1, 0x0

    .line 29
    monitor-exit p0

    .line 30
    return-object p1

    .line 31
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    .line 33
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->create(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendFactory;->create(Lcom/google/android/datatransport/runtime/backends/CreationContext;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/Map;

    .line 43
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    .line 46
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method
