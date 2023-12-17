.class public interface abstract Lcom/android/cloud/ICloudDriveHelper;
.super Ljava/lang/Object;
.source "ICloudDriveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;,
        Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract checkAccountIfInvalid(Landroid/content/Context;)Z
.end method

.method public abstract clearCloudData(Landroid/content/Context;)V
.end method

.method public abstract createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
.end method

.method public abstract initCloudDrive(Landroid/content/Context;)V
.end method

.method public abstract initMiDriveOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;
.end method

.method public abstract startDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation
.end method

.method public abstract startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
.end method

.method public abstract startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
.end method

.method public abstract stopObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
.end method

.method public abstract stopObserveSyncComplete(Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
.end method
