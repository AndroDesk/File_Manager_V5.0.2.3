.class public abstract Lcom/google/android/datatransport/runtime/backends/BackendRegistryModule;
.super Ljava/lang/Object;
.source "BackendRegistryModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract backendRegistry(Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;)Lcom/google/android/datatransport/runtime/backends/BackendRegistry;
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Binds;
    .end annotation
.end method