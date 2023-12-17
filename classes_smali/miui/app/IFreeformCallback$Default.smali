.class public Lmiui/app/IFreeformCallback$Default;
.super Ljava/lang/Object;
.source "IFreeformCallback.java"

# interfaces
.implements Lmiui/app/IFreeformCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IFreeformCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 6
    const-string v1, "Stub!"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "Stub!"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Stub!"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
