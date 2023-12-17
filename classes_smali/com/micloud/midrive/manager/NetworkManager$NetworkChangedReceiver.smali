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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/micloud/midrive/manager/NetworkManager;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;->this$0:Lcom/micloud/midrive/manager/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/manager/NetworkManager;Lcom/micloud/midrive/manager/NetworkManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;-><init>(Lcom/micloud/midrive/manager/NetworkManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/micloud/midrive/manager/NetworkManager$NetworkChangedReceiver;->this$0:Lcom/micloud/midrive/manager/NetworkManager;

    invoke-static {p1}, Lcom/micloud/midrive/manager/NetworkManager;->access$100(Lcom/micloud/midrive/manager/NetworkManager;)V

    return-void
.end method
