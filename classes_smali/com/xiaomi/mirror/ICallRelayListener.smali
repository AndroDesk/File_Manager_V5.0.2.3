.class public interface abstract Lcom/xiaomi/mirror/ICallRelayListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ICallRelayListener$Stub;,
        Lcom/xiaomi/mirror/ICallRelayListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.ICallRelayListener"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onAddressUpdate(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method
