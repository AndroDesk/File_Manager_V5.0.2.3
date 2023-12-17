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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$mirrorView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$mirrorView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$2;->val$currentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
