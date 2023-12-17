.class public interface abstract Lcom/xiaomi/mirror/ICallRelayService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ICallRelayService$Stub;,
        Lcom/xiaomi/mirror/ICallRelayService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.ICallRelayService"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract registerCallRelayListener(Lcom/xiaomi/mirror/ICallRelayListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract sendRelayMessage(Ljava/lang/String;)V
.end method

.method public abstract setCallState(I)V
.end method
