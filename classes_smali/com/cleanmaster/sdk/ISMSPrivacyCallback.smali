.class public interface abstract Lcom/cleanmaster/sdk/ISMSPrivacyCallback;
.super Ljava/lang/Object;
.source "ISMSPrivacyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub;,
        Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ISMSPrivacyCallback"


# virtual methods
.method public abstract onFindPrimePrivacyData(ILjava/lang/String;I)V
.end method

.method public abstract onFindPrivacyItem(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPrivacyDataScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
