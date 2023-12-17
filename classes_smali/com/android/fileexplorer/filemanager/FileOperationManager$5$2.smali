.class Lcom/android/fileexplorer/filemanager/FileOperationManager$5$2;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/filemanager/FileOperationManager$5;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$2;->this$1:Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 9
    return-void
.end method
