.class Lcom/android/fileexplorer/activity/ServerControlActivity$3;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/ServerControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    check-cast p2, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;

    .line 5
    invoke-virtual {p2}, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;->getService()Lcom/android/fileexplorer/service/FTPServerService;

    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;

    .line 12
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$000(Lcom/android/fileexplorer/activity/ServerControlActivity;)Lcom/android/fileexplorer/service/FTPServerService;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;

    .line 16
    return-void
.end method
