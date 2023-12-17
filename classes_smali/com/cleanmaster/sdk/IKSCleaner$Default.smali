.class public Lcom/cleanmaster/sdk/IKSCleaner$Default;
.super Ljava/lang/Object;
.source "IKSCleaner.java"

# interfaces
.implements Lcom/cleanmaster/sdk/IKSCleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/IKSCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDataVersion()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public IsEnableAutoUpdate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public IsEnableNetworkAccess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public SetEnableAutoUpdate(Z)V
    .registers 2

    return-void
.end method

.method public SetEnableNetworkAccess(Z)V
    .registers 2

    return-void
.end method

.method public StartUpdateCheck(Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;)V
    .registers 2

    return-void
.end method

.method public StartUpdateData()V
    .registers 1

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanDeleteResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pathCalcSize(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cleanmaster/sdk/IQueryInfoCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public scanAdDir(Lcom/cleanmaster/sdk/IAdDirCallback;)V
    .registers 2

    return-void
.end method

.method public scanAppPrivacyData(Lcom/cleanmaster/sdk/IAppPrivacyCallback;)V
    .registers 2

    return-void
.end method

.method public scanBrowserPrivacyData(Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;)V
    .registers 2

    return-void
.end method

.method public scanCache(ILcom/cleanmaster/sdk/ICacheCallback;)V
    .registers 3

    return-void
.end method

.method public scanCallPrivacyData(Lcom/cleanmaster/sdk/ICallPrivacyCallback;)V
    .registers 2

    return-void
.end method

.method public scanHistoryPrivacyData(Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;)V
    .registers 2

    return-void
.end method

.method public scanPrivacyCache(Lcom/cleanmaster/sdk/ICacheCallback;)V
    .registers 2

    return-void
.end method

.method public scanPrivacyData(Lcom/cleanmaster/sdk/IPrivacyDataCallback;)V
    .registers 2

    return-void
.end method

.method public scanResidual(ILcom/cleanmaster/sdk/IResidualCallback;)V
    .registers 3

    return-void
.end method

.method public scanSMSPrivacyData(Lcom/cleanmaster/sdk/ISMSPrivacyCallback;)V
    .registers 2

    return-void
.end method

.method public scanSysFixedFile(Lcom/cleanmaster/sdk/ISysFixedFileCallback;)V
    .registers 2

    return-void
.end method

.method public scanSystemCache(Lcom/cleanmaster/sdk/ISystemCacheCallback;)V
    .registers 2

    return-void
.end method
