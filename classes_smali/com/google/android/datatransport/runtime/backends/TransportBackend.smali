.class public interface abstract Lcom/google/android/datatransport/runtime/backends/TransportBackend;
.super Ljava/lang/Object;
.source "TransportBackend.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
.end method

.method public abstract send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.end method
