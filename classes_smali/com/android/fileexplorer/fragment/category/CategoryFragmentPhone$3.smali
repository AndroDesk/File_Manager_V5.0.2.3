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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 20
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p1, v0, :cond_19

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 25
    goto :goto_22

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 35
    :goto_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 37
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 44
    return-void
.end method
