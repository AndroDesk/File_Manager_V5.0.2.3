.class Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;
.super Ljava/lang/Object;
.source "DocCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$100(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$200(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 45
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$300(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Integer;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p1

    .line 59
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 62
    return-void
.end method
