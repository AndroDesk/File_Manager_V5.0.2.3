.class Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;
.super Ljava/lang/Object;
.source "MoreCategoryAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->startAnimation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

.field public final synthetic val$currentView:Landroid/view/View;

.field public final synthetic val$mirrorView:Landroid/widget/ImageView;

.field public final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$mirrorView:Landroid/widget/ImageView;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$mirrorView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x4

    .line 15
    if-ne p1, v0, :cond_16

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_16
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
