.class public interface abstract Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorAdvConnectionCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onLost()V
.end method
