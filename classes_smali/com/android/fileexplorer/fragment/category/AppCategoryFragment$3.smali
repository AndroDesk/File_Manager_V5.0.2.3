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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .registers 3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    goto :goto_12

    :cond_a
    if-nez p2, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    :cond_12
    :goto_12
    return-void
.end method
