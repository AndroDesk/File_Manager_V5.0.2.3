.class final synthetic Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/Function;


# instance fields
.field private final arg$1:Lcom/google/android/datatransport/cct/CctTransportBackend;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;->arg$1:Lcom/google/android/datatransport/cct/CctTransportBackend;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/datatransport/cct/CctTransportBackend;)Lcom/google/android/datatransport/runtime/retries/Function;
    .registers 2

    new-instance v0, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;-><init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;->arg$1:Lcom/google/android/datatransport/cct/CctTransportBackend;

    check-cast p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->access$lambda$0(Lcom/google/android/datatransport/cct/CctTransportBackend;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    move-result-object p1

    return-object p1
.end method
