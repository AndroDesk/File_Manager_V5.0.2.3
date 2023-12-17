.class public interface abstract Lcom/cleanmaster/sdk/IPrivacyDataCallback;
.super Ljava/lang/Object;
.source "IPrivacyDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub;,
        Lcom/cleanmaster/sdk/IPrivacyDataCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IPrivacyDataCallback"


# virtual methods
.method public abstract onFindAppPrivacyItem(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onFindBrowserPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onFindCallPrimePrivacyData(ILjava/lang/String;I)V
.end method

.method public abstract onFindCallPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFindHistoryPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFindSMSPrimePrivacyData(ILjava/lang/String;I)V
.end method

.method public abstract onFindSMSPrivacyItem(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPrivacyDataScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
