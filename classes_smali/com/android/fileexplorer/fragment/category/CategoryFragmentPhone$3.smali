.class Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;
.source "CategoryFragmentPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    goto :goto_22

    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    :goto_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    return-void
.end method
