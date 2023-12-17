.class public Lcom/android/fileexplorer/PackageReplaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReplaceReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setIsApkUpdate(Z)V

    .line 5
    return-void
.end method
