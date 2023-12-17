.class final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/Transport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/Transport<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final payloadEncoding:Lcom/google/android/datatransport/Encoding;

.field private final transformer:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field private final transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/Encoding;",
            "Lcom/google/android/datatransport/Transformer<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/runtime/TransportInternal;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 12
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    .line 14
    return-void
.end method

.method public static synthetic lambda$send$0(Ljava/lang/Exception;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public schedule(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/TransportScheduleCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "TT;>;",
            "Lcom/google/android/datatransport/TransportScheduleCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/SendRequest;->builder()Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransportContext(Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setEvent(Lcom/google/android/datatransport/Event;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransformer(Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    .line 31
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setEncoding(Lcom/google/android/datatransport/Encoding;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->build()Lcom/google/android/datatransport/runtime/SendRequest;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/TransportInternal;->send(Lcom/google/android/datatransport/runtime/SendRequest;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    .line 42
    return-void
.end method

.method public send(Lcom/google/android/datatransport/Event;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportImpl$$Lambda$1;->lambdaFactory$()Lcom/google/android/datatransport/TransportScheduleCallback;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/TransportImpl;->schedule(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    .line 8
    return-void
.end method
