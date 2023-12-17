.class Lcom/android/fileexplorer/activity/ViewLargeActivity$6;
.super Ljava/lang/Object;
.source "ViewLargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationDelete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

.field public final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    iput-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    const-string p2, "/FileExplorer/.safebox"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7b

    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deletePrivateFile(Ljava/lang/String;)V

    goto :goto_7b

    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    const-string p2, "//"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    goto :goto_7b

    :cond_61
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    new-instance p1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity$6;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    :cond_7b
    :goto_7b
    return-void
.end method
