.class public Lcom/android/fileexplorer/service/RecentManagerService;
.super Landroid/app/Service;
.source "RecentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;,
        Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/service/RecentManagerService;

    const-string v0, "RecentManagerService"

    sput-object v0, Lcom/android/fileexplorer/service/RecentManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/service/RecentManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->release()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
