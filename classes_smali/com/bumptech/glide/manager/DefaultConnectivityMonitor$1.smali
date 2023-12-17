.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 3
    iget-boolean v0, p2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 5
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z

    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 11
    iget-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 13
    iget-boolean p1, p1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 15
    if-eq v0, p1, :cond_36

    .line 17
    const/4 p1, 0x3

    .line 18
    const-string p2, "ConnectivityMonitor"

    .line 20
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2d

    .line 26
    const-string p1, "connectivity changed, isConnected: "

    .line 28
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 34
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2d
    iget-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 48
    iget-object p2, p1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 50
    iget-boolean p1, p1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 52
    invoke-interface {p2, p1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    .line 55
    :cond_36
    return-void
.end method
