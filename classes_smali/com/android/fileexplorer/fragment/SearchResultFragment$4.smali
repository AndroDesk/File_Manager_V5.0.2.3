.class Lcom/android/fileexplorer/fragment/SearchResultFragment$4;
.super Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 11

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto/16 :goto_df

    :cond_13
    const/16 p1, 0x14

    if-ne p1, p4, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$500(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)V

    goto/16 :goto_d6

    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    if-nez p1, :cond_27

    return-void

    :cond_27
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "NAVIGATOR_FRAGMENT_ORIGIN_FROM_SEARCH"

    const/4 v0, 0x1

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    instance-of p4, p1, Lcom/android/cloud/bean/CloudFileInfo;

    const-string v1, "bundle_key_istobackstack"

    const-string v2, "device_index"

    const-string v3, "current_directory"

    if-eqz p4, :cond_86

    move-object p4, p1

    check-cast p4, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "folder"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "current_cloudinfo_id"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd

    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, -0x1

    const-string p2, "saved_parent_id"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 p4, 0x3ea

    const-class v0, Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-direct {p2, p4, v0, p3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void

    :cond_86
    iget-boolean p4, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p4, :cond_c7

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p4, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {p2, p4, v4}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    iget-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a8

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    :cond_a8
    const/4 p1, 0x2

    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_ac
    const-string p1, "inner_call"

    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 p4, 0x3e9

    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    invoke-direct {p2, p4, v0, p3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void

    :cond_c7
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object p3

    iget-object p4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->getList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3, p1, p4, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFileOnSearchPage(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;I)V

    :goto_d6
    const-string p1, "click_search"

    const-string p2, "name"

    const-string p3, "click_search_result_item"

    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_df
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0, v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    :cond_10
    return-void
.end method
