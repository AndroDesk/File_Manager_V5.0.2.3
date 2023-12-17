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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 1
    if-eqz p1, :cond_12

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    if-ne p1, v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    return v1

    .line 19
    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 21
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 26
    move-result p1

    .line 27
    return p1
.end method
