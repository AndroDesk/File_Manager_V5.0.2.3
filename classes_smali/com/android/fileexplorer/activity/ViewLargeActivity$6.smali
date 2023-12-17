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
.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 3
    const-string p2, "/FileExplorer/.safebox"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_49

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2f

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " not found"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 48
    :cond_2f
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p2, p1, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deletePrivateFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;)Ljava/util/List;

    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_7b

    .line 61
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 63
    invoke-static {p2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deletePrivateFile(Ljava/lang/String;)V

    .line 73
    goto :goto_7b

    .line 74
    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 76
    const-string p2, "//"

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_61

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->delete(Ljava/lang/String;)Z

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7b

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 94
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 97
    goto :goto_7b

    .line 98
    :cond_61
    new-instance p1, Ljava/io/File;

    .line 100
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->val$filePath:Ljava/lang/String;

    .line 102
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_7b

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 113
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 116
    new-instance p1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;

    .line 118
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity$6;)V

    .line 121
    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method
