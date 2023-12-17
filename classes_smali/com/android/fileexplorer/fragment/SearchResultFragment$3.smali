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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p1, p2, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    :cond_16
    return-void
.end method
