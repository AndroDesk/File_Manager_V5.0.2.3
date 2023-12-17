.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;


# direct methods
.method private constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;->this$0:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;->this$0:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 3
    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->access$200(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Landroid/content/Context;)I

    .line 6
    move-result p1

    .line 7
    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->access$102(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;I)I

    .line 10
    return-void
.end method
