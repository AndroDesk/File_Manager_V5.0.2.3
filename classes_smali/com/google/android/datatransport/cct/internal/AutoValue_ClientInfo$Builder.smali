.class final Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;
.super Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
.source "AutoValue_ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

.field private clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/cct/internal/ClientInfo;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$1;)V

    .line 11
    return-object v0
.end method

.method public setAndroidClientInfo(Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 3
    return-object p0
.end method

.method public setClientType(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->clientType:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 3
    return-object p0
.end method
