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

    .line 1
    const-class v0, Lcom/android/fileexplorer/service/RecentManagerService;

    .line 3
    const-string v0, "RecentManagerService"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/service/RecentManagerService;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/RecentManagerService;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 3
    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 11
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService;->mRM:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->release()V

    .line 9
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method
