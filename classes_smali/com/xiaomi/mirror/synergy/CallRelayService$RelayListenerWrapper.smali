.class public Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;
.super Lcom/xiaomi/mirror/ICallRelayListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/CallRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayListenerWrapper"
.end annotation


# instance fields
.field public mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/mirror/ICallRelayListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/synergy/CallRelayService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;)Lcom/xiaomi/mirror/synergy/CallRelayListener;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;Lcom/xiaomi/mirror/synergy/CallRelayListener;)Lcom/xiaomi/mirror/synergy/CallRelayListener;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;

    return-object p1
.end method


# virtual methods
.method public onAddressUpdate(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/synergy/CallRelayListener;->onAddressUpdate(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->mListener:Lcom/xiaomi/mirror/synergy/CallRelayListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/synergy/CallRelayListener;->onMessage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
