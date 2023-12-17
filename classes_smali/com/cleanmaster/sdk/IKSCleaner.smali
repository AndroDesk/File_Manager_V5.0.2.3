.class public interface abstract Lcom/cleanmaster/sdk/IKSCleaner;
.super Ljava/lang/Object;
.source "IKSCleaner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IKSCleaner$Stub;,
        Lcom/cleanmaster/sdk/IKSCleaner$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IKSCleaner"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract GetDataVersion()Ljava/lang/String;
.end method

.method public abstract IsEnableAutoUpdate()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract IsEnableNetworkAccess()Z
.end method

.method public abstract SetEnableAutoUpdate(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract SetEnableNetworkAccess(Z)V
.end method

.method public abstract StartUpdateCheck(Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;)V
.end method

.method public abstract StartUpdateData()V
.end method

.method public abstract getCanDeleteResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pathCalcSize(Ljava/lang/String;)J
.end method

.method public abstract queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V
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
.end method

.method public abstract scanAdDir(Lcom/cleanmaster/sdk/IAdDirCallback;)V
.end method

.method public abstract scanAppPrivacyData(Lcom/cleanmaster/sdk/IAppPrivacyCallback;)V
.end method

.method public abstract scanBrowserPrivacyData(Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;)V
.end method

.method public abstract scanCache(ILcom/cleanmaster/sdk/ICacheCallback;)V
.end method

.method public abstract scanCallPrivacyData(Lcom/cleanmaster/sdk/ICallPrivacyCallback;)V
.end method

.method public abstract scanHistoryPrivacyData(Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;)V
.end method

.method public abstract scanPrivacyCache(Lcom/cleanmaster/sdk/ICacheCallback;)V
.end method

.method public abstract scanPrivacyData(Lcom/cleanmaster/sdk/IPrivacyDataCallback;)V
.end method

.method public abstract scanResidual(ILcom/cleanmaster/sdk/IResidualCallback;)V
.end method

.method public abstract scanSMSPrivacyData(Lcom/cleanmaster/sdk/ISMSPrivacyCallback;)V
.end method

.method public abstract scanSysFixedFile(Lcom/cleanmaster/sdk/ISysFixedFileCallback;)V
.end method

.method public abstract scanSystemCache(Lcom/cleanmaster/sdk/ISystemCacheCallback;)V
.end method
