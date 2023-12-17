.class public interface abstract Lcom/cleanmaster/sdk/ICallPrivacyCallback;
.super Ljava/lang/Object;
.source "ICallPrivacyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub;,
        Lcom/cleanmaster/sdk/ICallPrivacyCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ICallPrivacyCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onFindPrimePrivacyData(ILjava/lang/String;I)V
.end method

.method public abstract onFindPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPrivacyDataScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
