.class final Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;
.super Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
.source "AutoValue_AndroidClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationBuild:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private fingerprint:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mccMnc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osBuild:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;
    .registers 16

    .line 1
    new-instance v14, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->sdkVersion:Ljava/lang/Integer;

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->model:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->hardware:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->device:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->product:Ljava/lang/String;

    .line 13
    iget-object v6, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->osBuild:Ljava/lang/String;

    .line 15
    iget-object v7, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->manufacturer:Ljava/lang/String;

    .line 17
    iget-object v8, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->fingerprint:Ljava/lang/String;

    .line 19
    iget-object v9, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->locale:Ljava/lang/String;

    .line 21
    iget-object v10, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->country:Ljava/lang/String;

    .line 23
    iget-object v11, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->mccMnc:Ljava/lang/String;

    .line 25
    iget-object v12, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->applicationBuild:Ljava/lang/String;

    .line 27
    const/4 v13, 0x0

    .line 28
    move-object v0, v14

    .line 29
    invoke-direct/range {v0 .. v13}, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$1;)V

    .line 32
    return-object v14
.end method

.method public setApplicationBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->applicationBuild:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->country:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setDevice(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->device:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setFingerprint(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->fingerprint:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setHardware(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->hardware:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->locale:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->manufacturer:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setMccMnc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->mccMnc:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->model:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setOsBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->osBuild:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->product:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setSdkVersion(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;->sdkVersion:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method
