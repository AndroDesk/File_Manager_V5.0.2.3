.class abstract Lcom/google/android/datatransport/runtime/SendRequest;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEncoding()Lcom/google/android/datatransport/Encoding;
.end method

.method public abstract getEvent()Lcom/google/android/datatransport/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation
.end method

.method public getPayload()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransformer()Lcom/google/android/datatransport/Transformer;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getPayload()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/Transformer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 19
    return-object v0
.end method

.method public abstract getTransformer()Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
.end method

.method public abstract getTransportName()Ljava/lang/String;
.end method
