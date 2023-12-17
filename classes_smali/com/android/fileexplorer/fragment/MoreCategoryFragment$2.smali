.class Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;
.super Ljava/lang/Object;
.source "MoreCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;


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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onModeChange(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onEditModeChange(Ljava/lang/Boolean;Z)V

    .line 7
    return-void
.end method
