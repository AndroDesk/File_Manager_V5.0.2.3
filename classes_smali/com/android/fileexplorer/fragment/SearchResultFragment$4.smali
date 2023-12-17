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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_23

    .line 35
    return-object p1

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_13

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 13
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 18
    goto/16 :goto_df

    .line 20
    :cond_13
    const/16 p1, 0x14

    .line 22
    if-ne p1, p4, :cond_1e

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 26
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$500(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)V

    .line 29
    goto/16 :goto_d6

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 33
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    new-instance p3, Landroid/os/Bundle;

    .line 42
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string p4, "NAVIGATOR_FRAGMENT_ORIGIN_FROM_SEARCH"

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string p4, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    .line 53
    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string p4, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    .line 58
    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    instance-of p4, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 63
    const-string v1, "bundle_key_istobackstack"

    .line 65
    const-string v2, "device_index"

    .line 67
    const-string v3, "current_directory"

    .line 69
    if-eqz p4, :cond_86

    .line 71
    move-object p4, p1

    .line 72
    check-cast p4, Lcom/android/cloud/bean/CloudFileInfo;

    .line 74
    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    const-string v5, "folder"

    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_c7

    .line 86
    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p4}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    const-string p2, "current_cloudinfo_id"

    .line 99
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 p1, 0xd

    .line 104
    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const/4 p1, -0x1

    .line 108
    const-string p2, "saved_parent_id"

    .line 110
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 118
    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 124
    const/16 p4, 0x3ea

    .line 126
    const-class v0, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 128
    invoke-direct {p2, p4, v0, p3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p1, p2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 134
    return-void

    .line 135
    :cond_86
    iget-boolean p4, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 137
    if-eqz p4, :cond_c7

    .line 139
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 141
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 144
    move-result-object p2

    .line 145
    const/4 p4, 0x0

    .line 146
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 148
    invoke-static {v4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 151
    move-result-object v4

    .line 152
    invoke-static {p2, p4, v4}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 155
    iget-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_a8

    .line 163
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 165
    invoke-virtual {p3, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    goto :goto_ac

    .line 169
    :cond_a8
    const/4 p1, 0x2

    .line 170
    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :goto_ac
    const-string p1, "inner_call"

    .line 175
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 183
    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 186
    move-result-object p1

    .line 187
    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 189
    const/16 p4, 0x3e9

    .line 191
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 193
    invoke-direct {p2, p4, v0, p3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p1, p2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 199
    return-void

    .line 200
    :cond_c7
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 202
    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 205
    move-result-object p3

    .line 206
    iget-object p4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 208
    invoke-virtual {p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->getList()Ljava/util/ArrayList;

    .line 211
    move-result-object p4

    .line 212
    invoke-static {p3, p1, p4, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFileOnSearchPage(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;I)V

    .line 215
    :goto_d6
    const-string p1, "click_search"

    .line 217
    const-string p2, "name"

    .line 219
    const-string p3, "click_search_result_item"

    .line 221
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    :goto_df
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1f

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 18
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 27
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 29
    invoke-virtual {v0, v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 32
    :cond_1f
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    :cond_10
    return-void
.end method
