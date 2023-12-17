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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->lambda$onActionItemClicked$0(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V

    return-void
.end method

.method private doPickCancel(Lmiuix/appcompat/app/Fragment;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->U()Z

    return-void
.end method

.method private getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_11
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v0, :cond_20

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v4, :cond_1e

    return-object v1

    :cond_1e
    instance-of v4, v3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v4, :cond_2e

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

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

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "inner_call"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_12
    return v0
.end method

.method private synthetic lambda$onActionItemClicked$0(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    invoke-direct {v1, p2}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    invoke-virtual {p1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_16
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_96

    const/4 p1, 0x0

    return p1

    :sswitch_a
    new-instance p1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;-><init>(Lmiuix/appcompat/app/Fragment;)V

    new-instance v0, Lcom/android/fileexplorer/filemanager/c;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setOnItemClickListener(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    check-cast v0, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->showPopupwindow(Landroid/view/View;)V

    return p2

    :sswitch_25
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a03ba

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_33
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a03b7

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_41
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a03b6

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_4f
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a03b4

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_5d
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a03af

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_6b
    invoke-direct {p0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->getCheckedItem()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->onPickFiles(Ljava/util/List;)V

    :sswitch_72
    return p2

    :sswitch_73
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->cateGoryName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-ne p1, p2, :cond_85

    const p1, 0x7f0a0492

    goto :goto_88

    :cond_85
    const p1, 0x7f0a048f

    :goto_88
    invoke-direct {v1, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;->onImmersionMenuClick(Lcom/android/fileexplorer/controller/FabMenuItem;)V

    return p2

    :sswitch_8f
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->doPickCancel(Lmiuix/appcompat/app/Fragment;)V

    return p2

    nop

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

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    move-object v0, p1

    check-cast v0, Lmiuix/view/EditActionMode;

    invoke-virtual {p0, p2, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_14
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    :cond_17
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f11025d

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(I)V

    const/4 p2, 0x0

    check-cast p1, Lmiuix/view/EditActionMode;

    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1e
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckTitle(Landroid/view/ActionMode;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->isAllItemsChecked()Z

    move-result v0

    check-cast p1, Lmiuix/view/EditActionMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8

    const p1, 0x7f0a0307

    const/4 v0, 0x0

    const v1, 0x7f0a0306

    invoke-static {p2, p1, v0, v1, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const p1, 0x7f0a0125

    const v1, 0x7f0a0124

    invoke-static {p2, p1, v0, v1, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const p1, 0x7f0a0319

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0318

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a01f1

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f0a039c

    const v4, 0x7f0a039d

    invoke-static {p2, v2, v0, v4, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const v2, 0x7f0a02dc

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    xor-int/2addr v2, v3

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->cateGoryName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-ne p1, v3, :cond_67

    const p1, 0x7f110209

    goto :goto_6a

    :cond_67
    const p1, 0x7f1101d3

    :goto_6a
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const p1, 0x7f0a03bc

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p1, 0x7f0a03ad

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method

.method public setDataCount(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->isEmpty:Z

    return-void
.end method

.method public updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 6

    const p1, 0x7f1101ec

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x1020019

    const-string v1, ""

    const v2, 0x7f0801da

    invoke-interface {p2, v0, p1, v1, v2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    const p1, 0x102001a

    const v0, 0x7f0800d6

    invoke-interface {p2, p1, v1, v1, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public updateCheckTitle(Landroid/view/ActionMode;I)V
    .registers 6

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_17

    const p2, 0x7f11025d

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2f

    :cond_17
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2f
    :goto_2f
    return-void
.end method
