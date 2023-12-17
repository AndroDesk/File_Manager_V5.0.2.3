.class Lcom/android/fileexplorer/fragment/FileFragment$5$1;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment$5;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/fragment/FileFragment$5;

.field public final synthetic val$current:Lcom/android/fileexplorer/model/PathSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment$5;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/FileFragment$5;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->val$current:Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/FileFragment$5;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->val$current:Lcom/android/fileexplorer/model/PathSegment;

    iget v2, v1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    iget v1, v1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
