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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 9
    if-nez p1, :cond_72

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    move-result-object p1

    .line 17
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 19
    if-eqz p1, :cond_1d

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    new-instance p1, Ljava/io/File;

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 40
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    :goto_2e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 49
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_41

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 63
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$184(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    :cond_41
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_4b

    .line 72
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    :cond_4b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 78
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_72

    .line 88
    new-instance v0, Landroidx/lifecycle/c0;

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 92
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 99
    const-class v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 101
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 107
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 112
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 115
    :cond_72
    return-void
.end method
