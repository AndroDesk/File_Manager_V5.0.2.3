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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->val$archivePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->this$2:Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->this$1:Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    iget-object v1, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
