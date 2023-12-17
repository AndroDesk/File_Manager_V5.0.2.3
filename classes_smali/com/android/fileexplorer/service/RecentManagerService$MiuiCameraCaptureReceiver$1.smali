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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    iput-object p2, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateFileItemFileInfo(Ljava/io/File;)I

    move-result v0

    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done capture photo, update row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
