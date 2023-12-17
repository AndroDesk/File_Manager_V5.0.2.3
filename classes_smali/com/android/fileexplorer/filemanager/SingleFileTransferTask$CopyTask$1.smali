.class Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;
.super Ljava/lang/Object;
.source "SingleFileTransferTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->checkIfNeedFSync(ILjava/lang/String;JLjava/io/FileOutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

.field public final synthetic val$fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;Ljava/io/FileOutputStream;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->this$1:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-string v0, "SingleFileTransferTask"

    .line 3
    const-string v1, "checkIfNeedFSync return, isLastOne"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const v0, 0x7f110334

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->fSync(Ljava/io/FileOutputStream;)Z

    .line 19
    const v0, 0x7f110333

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 30
    return-void
.end method
