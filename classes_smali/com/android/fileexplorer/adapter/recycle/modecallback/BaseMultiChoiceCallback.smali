.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.super Ljava/lang/Object;
.source "BaseMultiChoiceCallback.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mCheckedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mCheckedRealItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

.field public mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mTabIndex:I

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    return-void
.end method

.method private showEncryptDialog(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110212

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public doEncrypt(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_4

    const v0, 0x7f110215

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    const/4 v1, 0x1

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_27

    const v0, 0x7f110213

    goto :goto_2a

    :cond_27
    const v0, 0x7f110214

    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    move-result v3

    if-nez v3, :cond_89

    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v3, :cond_89

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f042dce

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f11037d

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f110464

    new-instance v5, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1102db

    new-instance v5, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    goto :goto_8c

    :cond_89
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    :goto_8c
    return-void
.end method

.method public encryptReal()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    return-void
.end method

.method public encryptReal(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public exitActionMode()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionMode()V

    :cond_b
    return-void
.end method

.method public exitActionModeNotTimeInterval()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionModeNotTimeInterval()V

    :cond_b
    return-void
.end method

.method public getCheckedFileInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initCheckedItems()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    return-void
.end method

.method public isInActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isInActionMode()Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    :pswitch_9  #0x102001a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    goto :goto_19

    :pswitch_14  #0x1020019
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionMode()V

    :goto_19
    return p2

    :pswitch_data_1a
    .packed-switch 0x1020019
        :pswitch_14  #01020019
        :pswitch_9  #0102001a
    .end packed-switch
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 3

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_7
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    invoke-interface {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 6

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    return-void
.end method

.method public setAllChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    return-void
.end method

.method public setItemChecked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->toggleItemChecked(I)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method

.method public setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method public setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    invoke-interface {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->startActionMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    invoke-interface {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Lmiuix/appcompat/app/Fragment;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method
