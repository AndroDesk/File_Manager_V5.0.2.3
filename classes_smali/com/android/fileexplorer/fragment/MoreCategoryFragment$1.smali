.class Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "MoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    return v1

    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
