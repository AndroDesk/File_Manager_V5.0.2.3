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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    :cond_14
    iget-object p2, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {p2}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_3e

    :cond_22
    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {p1}, Lcom/android/fileexplorer/service/FTPServerService;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "FTPServerService"

    const-string p2, "Server has been killed"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$1;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_3e
    :goto_3e
    return-void
.end method
