.class Lcom/android/fileexplorer/fragment/SearchResultFragment$7;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->initActionBar()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_23

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 33
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 36
    :cond_23
    return-void
.end method
