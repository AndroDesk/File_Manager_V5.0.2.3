.class public interface abstract Lcom/xiaomi/mirror/ISameAccountApCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ISameAccountApCallback$_Parcel;,
        Lcom/xiaomi/mirror/ISameAccountApCallback$Stub;,
        Lcom/xiaomi/mirror/ISameAccountApCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.ISameAccountApCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onApConnectedStatusUpdate(ILandroid/os/Bundle;)V
.end method

.method public abstract onApInfoUpdate(Landroid/os/Bundle;)V
.end method