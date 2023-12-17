.class Lcom/android/fileexplorer/filemanager/FileOperationManager$6;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->compress(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$checkedFiles:Ljava/util/ArrayList;

.field public final synthetic val$folder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->val$folder:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->val$checkedFiles:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_5d

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->addZipExtensionIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->val$folder:Ljava/lang/String;

    .line 20
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_28

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->val$checkedFiles:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$200(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 40
    goto :goto_5b

    .line 41
    :cond_28
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 43
    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_5b

    .line 51
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 55
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 57
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 63
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    const v0, 0x7f1100e7

    .line 73
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 76
    move-result-object p1

    .line 77
    const v0, 0x7f1100eb

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 92
    :cond_5b
    :goto_5b
    const/4 p1, 0x1

    .line 93
    return p1

    .line 94
    :cond_5d
    return v0
.end method
