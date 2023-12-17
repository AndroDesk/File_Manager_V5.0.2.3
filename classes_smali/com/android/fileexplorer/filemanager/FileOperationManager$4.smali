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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$currentPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$fromHome:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$currentPath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-boolean v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;->val$fromHome:Z

    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$000(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    return v0
.end method
