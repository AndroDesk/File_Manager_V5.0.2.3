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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->toggleCheckedAll()V

    :cond_9
    return-void
.end method
