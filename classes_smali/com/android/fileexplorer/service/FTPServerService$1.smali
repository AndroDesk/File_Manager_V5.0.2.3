.class Lcom/android/fileexplorer/service/FTPServerService$1;
.super Landroid/content/BroadcastReceiver;
.source "FTPServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/FTPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/FTPServerService;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_14

    .line 13
    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_22

    .line 21
    :cond_14
    iget-object p2, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 23
    invoke-virtual {p2}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_22

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 31
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 34
    goto :goto_3e

    .line 35
    :cond_22
    const-string p2, "android.intent.action.TIME_TICK"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3e

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 45
    invoke-virtual {p1}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3e

    .line 51
    const-string p1, "FTPServerService"

    .line 53
    const-string p2, "Server has been killed"

    .line 55
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 60
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method
