.class Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/RecentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiCameraCaptureReceiver"
.end annotation


# static fields
.field private static final SAVE_TO_CLOUD_ALBUM_ACTION:Ljava/lang/String; = "com.android.camera.IMAGE_READY"

.field private static final SAVE_TO_CLOUD_ALBUM_FILE_LENGTH:Ljava/lang/String; = "extra_file_length"

.field private static final SAVE_TO_CLOUD_ALBUM_PATH_KAY:Ljava/lang/String; = "extra_file_path"

.field private static final SAVE_TO_CLOUD_ALBUM_STORE_ID_KAY:Ljava/lang/String; = "extra_media_store_id"

.field private static final SAVE_TO_CLOUD_ALBUM_TEMP_FILE_KAY:Ljava/lang/String; = "extra_is_temp_file"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x0

    const-string v0, "extra_is_temp_file"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1e

    const-string p2, "extra_file_path"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method
