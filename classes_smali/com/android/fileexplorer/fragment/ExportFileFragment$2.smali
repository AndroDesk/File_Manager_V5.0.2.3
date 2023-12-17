.class Lcom/android/fileexplorer/fragment/ExportFileFragment$2;
.super Ljava/lang/Object;
.source "ExportFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->toggleCheckedAll()V

    .line 10
    :cond_9
    return-void
.end method
