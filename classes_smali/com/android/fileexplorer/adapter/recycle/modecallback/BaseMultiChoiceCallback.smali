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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 18
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mTabIndex:I

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 22
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 24
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    .line 4
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    const v1, 0x7f110212

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;

    .line 25
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;Ljava/util/ArrayList;)V

    .line 28
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 31
    move-result-object p1

    .line 32
    const/high16 p2, 0x1040000

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 46
    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
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

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_19

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 20
    if-eqz v1, :cond_4

    .line 22
    const v0, 0x7f110215

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v2

    .line 27
    :goto_1a
    const/4 v1, 0x1

    .line 28
    if-nez v0, :cond_2a

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 34
    if-ne v0, v1, :cond_27

    .line 36
    const v0, 0x7f110213

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    const v0, 0x7f110214

    .line 43
    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_85

    .line 49
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 51
    if-nez v3, :cond_85

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 55
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object v3

    .line 63
    const v4, 0x7f0d0058

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 73
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 75
    invoke-interface {v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 78
    move-result-object v5

    .line 79
    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 85
    move-result-object v3

    .line 86
    const v4, 0x7f11037d

    .line 89
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    move-result-object v3

    .line 93
    const v4, 0x7f110464

    .line 96
    new-instance v5, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$2;

    .line 98
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    .line 101
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 104
    move-result-object v3

    .line 105
    const v4, 0x7f1102db

    .line 108
    new-instance v5, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;

    .line 110
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    .line 113
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 130
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    .line 133
    goto :goto_88

    .line 134
    :cond_85
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    .line 137
    :goto_88
    return-void
.end method

.method public encryptReal()V
    .registers 2

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public exitActionMode()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionMode()V

    .line 12
    :cond_b
    return-void
.end method

.method public exitActionModeNotTimeInterval()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionModeNotTimeInterval()V

    .line 12
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public initCheckedItems()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 10
    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    .line 20
    return-void
.end method

.method public isInActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isInActionMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isItemChecked(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    packed-switch p1, :pswitch_data_1a

    .line 9
    goto :goto_19

    .line 10
    :pswitch_9  #0x102001a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    .line 15
    move-result v0

    .line 16
    xor-int/2addr v0, p2

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 20
    goto :goto_19

    .line 21
    :pswitch_14  #0x1020019
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->finishActionMode()V

    .line 26
    :goto_19
    return p2

    .line 27
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 8
    :cond_7
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_c

    .line 8
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    .line 10
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    .line 13
    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    .line 19
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    .line 22
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 25
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 8
    return-void
.end method

.method public setAllChecked(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 6
    return-void
.end method

.method public setItemChecked(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->toggleItemChecked(I)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method

.method public setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method public setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 2
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    invoke-interface {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    .line 3
    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->startActionMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V
    .registers 7

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 7
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    invoke-interface {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;->onActionModeChange(Z)V

    .line 8
    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p3}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Lmiuix/appcompat/app/Fragment;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    return-void
.end method
