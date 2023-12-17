.class public Lcom/android/fileexplorer/PackageReplaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReplaceReceiver.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setIsApkUpdate(Z)V

    return-void
.end method
