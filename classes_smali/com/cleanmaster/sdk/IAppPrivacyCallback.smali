.class public interface abstract Lcom/cleanmaster/sdk/IAppPrivacyCallback;
.super Ljava/lang/Object;
.source "IAppPrivacyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IAppPrivacyCallback$Stub;,
        Lcom/cleanmaster/sdk/IAppPrivacyCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IAppPrivacyCallback"


# virtual methods
.method public abstract onFindPrivacyDataItem(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onPrivacyDataScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
