.class public Lcom/cleanmaster/sdk/IHistoryPrivacyCallback$Default;
.super Ljava/lang/Object;
.source "IHistoryPrivacyCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;
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
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFindPrivacyDataItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public onPrivacyDataScanFinish()V
    .registers 1

    return-void
.end method

.method public onScanItem(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onStartScan(I)V
    .registers 2

    return-void
.end method
