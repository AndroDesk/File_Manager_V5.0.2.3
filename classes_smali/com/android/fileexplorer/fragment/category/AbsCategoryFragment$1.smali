.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;
.super Ljava/lang/Object;
.source "AbsCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initEmptyTrigger(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    return-void
.end method

.method public onReverse()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    return-void
.end method
