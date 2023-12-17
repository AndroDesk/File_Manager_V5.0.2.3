.class Lcom/android/fileexplorer/activity/ServerControlActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ServerControlActivity.java"


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
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$4;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$100()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "Wifi status broadcast received"

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    .line 16
    invoke-direct {p2}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    .line 19
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
