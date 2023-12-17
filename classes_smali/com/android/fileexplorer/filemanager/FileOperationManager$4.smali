.class Lcom/android/fileexplorer/filemanager/FileOperationManager$4;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$currentPath:Ljava/lang/String;

.field public final synthetic val$fromHome:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$currentPath:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$fromHome:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$currentPath:Ljava/lang/String;

    .line 12
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 18
    iget-boolean v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$fromHome:Z

    .line 20
    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$000(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    .line 23
    return v0
.end method
