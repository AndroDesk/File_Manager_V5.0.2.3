.class public abstract Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.super Ljava/lang/Object;
.source "MirrorBaseMultiChoiceCallback.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;
.implements Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;",
        "Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorBaseMultiChoiceCallback"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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

.field public mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

.field public mFragment:Lmiuix/appcompat/app/Fragment;

.field private mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;
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

.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    new-instance p1, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->lambda$deleteSelectedItems$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$deleteSelectedItems$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

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

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110212

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;Ljava/util/ArrayList;)V

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
.method public abstract convert2RealCheckedItems()V
.end method

.method public deleteSelectedItems()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    new-instance v2, Landroidx/activity/b;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

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

    if-nez v3, :cond_81

    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v3, :cond_81

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f042dce

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f11037d

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f110464

    new-instance v5, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1102db

    new-instance v5, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    goto :goto_84

    :cond_81
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    :goto_84
    return-void
.end method

.method public encryptReal()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public exitSelectedMode()V
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    :cond_c
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

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedItems()Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->convert2RealCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasInnerPasteFile()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v0

    return v0
.end method

.method public hasOuterPasteFile()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public hasPasteFile()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasInnerPasteFile()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasOuterPasteFile()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public initCheckedItems()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->convert2RealCheckedItems()V

    return-void
.end method

.method public isItemChecked(I)Z
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_7
    return-void
.end method

.method public setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    return-void
.end method

.method public setAllChecked(Z)V
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    :cond_b
    return-void
.end method

.method public setItemChecked(I)V
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->toggleItemChecked(I)V

    :cond_b
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_b
    return-void
.end method

.method public setItemLinearChecked(I)V
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemLinearChecked(I)V

    :cond_b
    return-void
.end method

.method public setItemMultiChecked(IZZ)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    return-void

    :cond_9
    if-nez p2, :cond_12

    if-nez p3, :cond_12

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    goto :goto_1b

    :cond_12
    if-eqz p2, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemLinearChecked(I)V

    :goto_1b
    return-void
.end method

.method public setItemMultiCheckedByRightClick(IZZ)V
    .registers 5

    const/4 v0, 0x1

    if-nez p2, :cond_a

    if-eqz p3, :cond_6

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    goto :goto_d

    :cond_a
    :goto_a
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    :goto_d
    return-void
.end method

.method public setItemRadioChecked(I)V
    .registers 3

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->toggleItemRadioChecked(I)V

    :cond_b
    return-void
.end method

.method public setItemRadioChecked(IZ)V
    .registers 4

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemRadioChecked(IZ)V

    :cond_b
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

.method public setToggleAllChecked()V
    .registers 2

    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setToggleAllItemsChecked()V

    :cond_b
    return-void
.end method

.method public startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V
    .registers 15

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p4}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    invoke-virtual {p0, p4, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_31

    move v7, v1

    goto :goto_32

    :cond_31
    move v7, v4

    :goto_32
    move-object v2, v0

    move-object v4, p1

    move-object v5, p5

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V

    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    goto :goto_47

    :cond_3d
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1, p1, p5, p4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    :goto_47
    return-void
.end method
