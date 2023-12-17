.class Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;


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

.field public final synthetic val$archivePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->this$1:Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;->val$archivePath:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_17

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 12
    new-instance v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;

    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1$1;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;Ljava/lang/String;)V

    .line 17
    const-wide/16 v2, 0xc8

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method
