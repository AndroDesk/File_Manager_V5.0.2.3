.class public Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;
.source "WidgetChoiceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;,
        Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    }
.end annotation


# instance fields
.field public cateGoryName:Ljava/lang/String;

.field private isEmpty:Z

.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mFragment:Lmiuix/appcompat/app/Fragment;

.field public mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->lambda$onActionItemClicked$0(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V

    return-void
.end method

.method private doPickCancel(Lmiuix/appcompat/app/Fragment;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 11
    return-void
.end method

.method private getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_11

    .line 12
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    .line 13
    :cond_11
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v0, :cond_20

    .line 14
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1

    .line 15
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCheckedItem()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v4, :cond_1e

    return-object v1

    .line 5
    :cond_1e
    instance-of v4, v3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v4, :cond_2e

    .line 6
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 8
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-object v0
.end method

.method private isPickFromInner(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_12

    .line 4
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    const-string v1, "inner_call"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    return v0
.end method

.method private synthetic lambda$onActionItemClicked$0(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 5
    invoke-direct {v1, p2}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 8
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 11
    invoke-virtual {p1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 14
    return-void
.end method

.method private onPickFiles(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;Z)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_16

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 23
    :cond_16
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    sparse-switch p1, :sswitch_data_96

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :sswitch_a
    new-instance p1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 15
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;-><init>(Lmiuix/appcompat/app/Fragment;)V

    .line 18
    new-instance v0, Lcom/android/fileexplorer/filemanager/c;

    .line 20
    invoke-direct {v0, p2, p0, p1}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setOnItemClickListener(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 28
    check-cast v0, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;

    .line 30
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;->getAnchorView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->showPopupwindow(Landroid/view/View;)V

    .line 37
    return p2

    .line 38
    :sswitch_25
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 40
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 42
    const v1, 0x7f0a03ba

    .line 45
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 48
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 51
    return p2

    .line 52
    :sswitch_33
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 54
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 56
    const v1, 0x7f0a03b7

    .line 59
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 62
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 65
    return p2

    .line 66
    :sswitch_41
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 68
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 70
    const v1, 0x7f0a03b6

    .line 73
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 76
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 79
    return p2

    .line 80
    :sswitch_4f
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 82
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 84
    const v1, 0x7f0a03b4

    .line 87
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 90
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 93
    return p2

    .line 94
    :sswitch_5d
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 96
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 98
    const v1, 0x7f0a03af

    .line 101
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 104
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 107
    return p2

    .line 108
    :sswitch_6b
    invoke-direct {p0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->getCheckedItem()Ljava/util/List;

    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->onPickFiles(Ljava/util/List;)V

    .line 115
    :sswitch_72
    return p2

    .line 116
    :sswitch_73
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->cateGoryName:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 124
    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 126
    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 128
    if-ne p1, p2, :cond_85

    .line 130
    const p1, 0x7f0a0492

    .line 133
    goto :goto_88

    .line 134
    :cond_85
    const p1, 0x7f0a048f

    .line 137
    :goto_88
    invoke-direct {v1, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 140
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    .line 143
    return p2

    .line 144
    :sswitch_8f
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->doPickCancel(Lmiuix/appcompat/app/Fragment;)V

    .line 149
    return p2

    .line 150
    nop

    .line 151
    :sswitch_data_96
    .sparse-switch
        0x1020019 -> :sswitch_8f
        0x7f0a01f1 -> :sswitch_73
        0x7f0a02dc -> :sswitch_72
        0x7f0a0318 -> :sswitch_8f
        0x7f0a0319 -> :sswitch_6b
        0x7f0a03af -> :sswitch_5d
        0x7f0a03b4 -> :sswitch_4f
        0x7f0a03b6 -> :sswitch_41
        0x7f0a03b7 -> :sswitch_33
        0x7f0a03ba -> :sswitch_25
        0x7f0a03bc -> :sswitch_a
    .end sparse-switch
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lmiuix/view/EditActionMode;

    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 21
    :cond_14
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_17

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 17
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0e0004

    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 34
    const p2, 0x7f11025d

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(I)V

    .line 40
    const/4 p2, 0x0

    .line 41
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 43
    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 46
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1e

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 18
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object p1

    .line 26
    const/high16 v0, 0x8000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 31
    :cond_1e
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 12
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->isAllItemsChecked()Z

    .line 15
    move-result v0

    .line 16
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 21
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8

    .line 1
    const p1, 0x7f0a0307

    .line 4
    const/4 v0, 0x0

    .line 5
    const v1, 0x7f0a0306

    .line 8
    invoke-static {p2, p1, v0, v1, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 11
    const p1, 0x7f0a0125

    .line 14
    const v1, 0x7f0a0124

    .line 17
    invoke-static {p2, p1, v0, v1, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 20
    const p1, 0x7f0a0319

    .line 23
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 26
    move-result-object v1

    .line 27
    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    .line 29
    const/4 v3, 0x1

    .line 30
    xor-int/2addr v2, v3

    .line 31
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 34
    const v1, 0x7f0a0318

    .line 37
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 40
    move-result-object v1

    .line 41
    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    .line 43
    xor-int/2addr v2, v3

    .line 44
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    const v1, 0x7f0a01f1

    .line 50
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 57
    const v2, 0x7f0a039c

    .line 60
    const v4, 0x7f0a039d

    .line 63
    invoke-static {p2, v2, v0, v4, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 66
    const v2, 0x7f0a02dc

    .line 69
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 79
    move-result-object p1

    .line 80
    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    .line 82
    xor-int/2addr v2, v3

    .line 83
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->cateGoryName:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 95
    move-result-object v1

    .line 96
    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 98
    if-ne p1, v3, :cond_67

    .line 100
    const p1, 0x7f110209

    .line 103
    goto :goto_6a

    .line 104
    :cond_67
    const p1, 0x7f1101d3

    .line 107
    :goto_6a
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 110
    const p1, 0x7f0a03bc

    .line 113
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    const p1, 0x7f0a03ad

    .line 123
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    return v0
.end method

.method public setDataCount(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    .line 3
    return-void
.end method

.method public updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 6

    .line 1
    const p1, 0x7f1101ec

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const v0, 0x1020019

    .line 11
    const-string v1, ""

    .line 13
    const v2, 0x7f0801da

    .line 16
    invoke-interface {p2, v0, p1, v1, v2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 19
    const p1, 0x102001a

    .line 22
    const v0, 0x7f0800d6

    .line 25
    invoke-interface {p2, p1, v1, v1, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 28
    return-void
.end method

.method public updateCheckTitle(Landroid/view/ActionMode;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2f

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    if-nez p2, :cond_17

    .line 13
    const p2, 0x7f11025d

    .line 16
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    goto :goto_2f

    .line 24
    :cond_17
    const v1, 0x7f0f0021

    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p2

    .line 39
    aput-object p2, v1, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method
