.class Lcom/android/fileexplorer/filemanager/FileOperationManager$2;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDeleteThread()V

    return-void
.end method
