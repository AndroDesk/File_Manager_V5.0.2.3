.class public Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;
.super Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/TakingPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackWrapper"
.end annotation


# instance fields
.field public mCallBack:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/TakingPhotoManager;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->this$0:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->mCallBack:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->mCallBack:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onTakePhotoChanged(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->mCallBack:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->mCallBack:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;->onTakePhotoChanged(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method
