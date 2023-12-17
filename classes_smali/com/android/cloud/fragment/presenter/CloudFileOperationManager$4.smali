.class Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;
.super Ljava/lang/Object;
.source "CloudFileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic val$checkedFileInfo:Lcom/android/fileexplorer/model/FileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;->val$checkedFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;->val$checkedFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
