.class final Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;
.super Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
.source "AutoValue_NetworkConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mobileSubtype:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

.field private networkType:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->networkType:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;-><init>(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$1;)V

    .line 11
    return-object v0
.end method

.method public setMobileSubtype(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 3
    return-object p0
.end method

.method public setNetworkType(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->networkType:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 3
    return-object p0
.end method
