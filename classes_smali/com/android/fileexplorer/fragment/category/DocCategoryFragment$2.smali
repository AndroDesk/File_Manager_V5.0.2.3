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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$000(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$100(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$200(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->access$300(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
