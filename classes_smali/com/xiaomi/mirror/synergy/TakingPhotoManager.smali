.class public Lcom/xiaomi/mirror/synergy/TakingPhotoManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;
    }
.end annotation


# instance fields
.field public mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;-><init>(Lcom/xiaomi/mirror/synergy/TakingPhotoManager;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "callback"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "registerTakingPhone"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2b

    if-eqz p1, :cond_2b

    const/4 v1, 0x0

    :catch_2b
    :cond_2b
    return v1
.end method

.method public unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->access$000(Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_f

    goto :goto_2d

    :cond_f
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "unregisterTakingPhone"

    invoke-static {p1, v1, v0, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_29

    :catch_29
    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, -0x1

    return p1
.end method
