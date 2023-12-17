.class Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;
.super Ljava/lang/Object;
.source "AppCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .registers 3

    .line 1
    const/4 p1, 0x2

    .line 2
    if-ne p2, p1, :cond_a

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    .line 10
    goto :goto_12

    .line 11
    :cond_a
    if-nez p2, :cond_12

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    .line 19
    :cond_12
    :goto_12
    return-void
.end method
