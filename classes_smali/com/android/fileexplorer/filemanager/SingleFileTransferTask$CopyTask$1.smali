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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;Ljava/io/FileOutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->this$1:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "SingleFileTransferTask"

    const-string v1, "checkIfNeedFSync return, isLastOne"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110334

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->fSync(Ljava/io/FileOutputStream;)Z

    const v0, 0x7f110333

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;->val$fileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
