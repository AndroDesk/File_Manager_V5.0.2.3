.class Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez p1, :cond_72

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    goto :goto_2e

    :cond_1d
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    :goto_2e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$184(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Ljava/lang/Object;)Ljava/lang/String;

    :cond_41
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    new-instance v0, Landroidx/lifecycle/c0;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_72
    return-void
.end method
