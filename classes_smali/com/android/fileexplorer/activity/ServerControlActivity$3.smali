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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    check-cast p2, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;

    invoke-virtual {p2}, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;->getService()Lcom/android/fileexplorer/service/FTPServerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$000(Lcom/android/fileexplorer/activity/ServerControlActivity;)Lcom/android/fileexplorer/service/FTPServerService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$3;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$002(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/service/FTPServerService;)Lcom/android/fileexplorer/service/FTPServerService;

    return-void
.end method
