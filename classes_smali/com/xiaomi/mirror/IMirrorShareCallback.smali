.class public interface abstract Lcom/xiaomi/mirror/IMirrorShareCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorShareCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorShareCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onStateChanged(Ljava/lang/String;)V
.end method