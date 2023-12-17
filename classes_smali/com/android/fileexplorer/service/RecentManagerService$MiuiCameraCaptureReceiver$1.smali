.class Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;
.super Ljava/lang/Object;
.source "RecentManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->val$path:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->val$path:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateFileItemFileInfo(Ljava/io/File;)I

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v3, "done capture photo, update row: "

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
