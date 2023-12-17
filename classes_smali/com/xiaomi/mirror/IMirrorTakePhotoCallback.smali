.class public interface abstract Lcom/xiaomi/mirror/IMirrorTakePhotoCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorTakePhotoCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onTakePhotoChanged(Ljava/lang/String;Z)V
.end method
