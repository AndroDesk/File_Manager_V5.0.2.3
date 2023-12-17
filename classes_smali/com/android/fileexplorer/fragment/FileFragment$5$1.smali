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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment$5;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/FileFragment$5;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->val$current:Lcom/android/fileexplorer/model/PathSegment;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->this$1:Lcom/android/fileexplorer/fragment/FileFragment$5;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5$1;->val$current:Lcom/android/fileexplorer/model/PathSegment;

    .line 15
    iget v2, v1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 17
    iget v1, v1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 19
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 22
    return-void
.end method
