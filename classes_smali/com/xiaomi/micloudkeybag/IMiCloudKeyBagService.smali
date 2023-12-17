.class public interface abstract Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
.super Ljava/lang/Object;
.source "IMiCloudKeyBagService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;
    }
.end annotation


# virtual methods
.method public abstract decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method

.method public abstract encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method

.method public abstract getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;
.end method

.method public abstract getServiceVersion()I
.end method

.method public abstract isLastSupported(Landroid/accounts/Account;)Z
.end method

.method public abstract isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method

.method public abstract showDownloadNotification()V
.end method

.method public abstract showUpdateNotification()V
.end method
