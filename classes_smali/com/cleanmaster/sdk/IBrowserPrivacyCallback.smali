.class public interface abstract Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;
.super Ljava/lang/Object;
.source "IBrowserPrivacyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IBrowserPrivacyCallback$Stub;,
        Lcom/cleanmaster/sdk/IBrowserPrivacyCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IBrowserPrivacyCallback"


# virtual methods
.method public abstract onFindPrivacyDataItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPrivacyDataScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
