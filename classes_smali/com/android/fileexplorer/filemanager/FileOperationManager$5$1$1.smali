.class Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->onFinish(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->val$text:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    .line 7
    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->val$archivePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->this$1:Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    .line 16
    iget-object v1, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->val$text:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
