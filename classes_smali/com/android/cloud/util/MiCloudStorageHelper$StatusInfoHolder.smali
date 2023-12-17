.class Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;
.super Ljava/lang/Object;
.source "MiCloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/util/MiCloudStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusInfoHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder$StatusInfoInstanceHolder;
    }
.end annotation


# instance fields
.field private mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

.field private mStatusInfo:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mStatusInfo:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 4
    iput-object v0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/util/MiCloudStorageHelper$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mStatusInfo:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mStatusInfo:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 3
    return-object p1
.end method

.method public static getInstance()Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder$StatusInfoInstanceHolder;->access$200()Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mStatusInfo:Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 4
    iput-object v0, p0, Lcom/android/cloud/util/MiCloudStorageHelper$StatusInfoHolder;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 6
    return-void
.end method
