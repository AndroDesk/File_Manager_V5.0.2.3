.class Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/manager/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/manager/NetworkManager;


# direct methods
.method private constructor <init>(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;->this$0:Lcom/micloud/midrive/manager/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/manager/NetworkManager;Lcom/micloud/midrive/manager/NetworkManager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;-><init>(Lcom/micloud/midrive/manager/NetworkManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;->this$0:Lcom/micloud/midrive/manager/NetworkManager;

    .line 10
    invoke-static {p1}, Lcom/micloud/midrive/manager/NetworkManager;->access$100(Lcom/micloud/midrive/manager/NetworkManager;)V

    .line 13
    return-void
.end method
