.class Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;
.super Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;
.source "DocCategorySubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method
