.class public interface abstract Lcom/android/cloud/fragment/presenter/CloudFileContract$Presenter;
.super Ljava/lang/Object;
.source "CloudFileContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract asyncGetMemberStatus()V
.end method

.method public abstract checkPreferenceUpdate(Lcom/android/fileexplorer/controller/FabPreference;)Z
.end method

.method public abstract detachView()V
.end method

.method public abstract getCurrentParentId()Ljava/lang/String;
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onItemClick(I)V
.end method

.method public abstract onSortMethodChanged(IZ)V
.end method

.method public abstract onViewModeChanged(I)V
.end method

.method public abstract syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
.end method

.method public abstract updateCloudParentId(Ljava/lang/String;)V
.end method

.method public abstract updateUI(ZZ)V
.end method
