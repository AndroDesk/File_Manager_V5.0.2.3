.class Lcom/android/fileexplorer/fragment/SearchResultFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    if-ne p1, p2, :cond_16

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 23
    :cond_16
    return-void
.end method
