.class public Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Default;
.super Ljava/lang/Object;
.source "ISMSPrivacyCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ISMSPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ISMSPrivacyCallback;
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

.method public onFindPrimePrivacyData(ILjava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onFindPrivacyItem(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

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
