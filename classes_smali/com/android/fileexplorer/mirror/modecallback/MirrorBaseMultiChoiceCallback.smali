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
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 18
    iput p3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 30
    new-instance p1, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 32
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 37
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->lambda$deleteSelectedItems$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$deleteSelectedItems$0()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 5
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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    const v1, 0x7f110212

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;Ljava/util/ArrayList;)V

    .line 24
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    move-result-object p1

    .line 28
    const/high16 p2, 0x1040000

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract convert2RealCheckedItems()V
.end method

.method public deleteSelectedItems()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 8
    new-instance v2, Landroidx/activity/b;

    .line 10
    const/16 v3, 0xa

    .line 12
    invoke-direct {v2, p0, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 18
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
    if-nez v3, :cond_7d

    .line 49
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 51
    if-nez v3, :cond_7d

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 55
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    move-result-object v3

    .line 59
    const v4, 0x7f0d0058

    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    move-result-object v3

    .line 67
    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 69
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 71
    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 77
    move-result-object v3

    .line 78
    const v4, 0x7f11037d

    .line 81
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 84
    move-result-object v3

    .line 85
    const v4, 0x7f110464

    .line 88
    new-instance v5, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;

    .line 90
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    .line 93
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 96
    move-result-object v3

    .line 97
    const v4, 0x7f1102db

    .line 100
    new-instance v5, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;

    .line 102
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    .line 105
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 116
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 119
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 122
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    .line 125
    goto :goto_80

    .line 126
    :cond_7d
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V

    .line 129
    :goto_80
    return-void
.end method

.method public encryptReal()V
    .registers 2

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public exitSelectedMode()V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 13
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

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedItems()Ljava/util/ArrayList;

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 10
    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->convert2RealCheckedItems()V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 27
    return-object v0
.end method

.method public hasInnerPasteFile()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasOuterPasteFile()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 10
    move-result v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public hasPasteFile()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasInnerPasteFile()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasOuterPasteFile()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public initCheckedItems()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 10
    invoke-interface {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->convert2RealCheckedItems()V

    .line 25
    return-void
.end method

.method public isItemChecked(I)Z
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 8
    :cond_7
    return-void
.end method

.method public setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mIEditRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 8
    return-void
.end method

.method public setAllChecked(Z)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setItemChecked(I)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->toggleItemChecked(I)V

    :cond_b
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_b
    return-void
.end method

.method public setItemLinearChecked(I)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemLinearChecked(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setItemMultiChecked(IZZ)V
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    if-eqz p2, :cond_9

    .line 7
    if-eqz p3, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    if-nez p2, :cond_12

    .line 12
    if-nez p3, :cond_12

    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    if-eqz p2, :cond_18

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemLinearChecked(I)V

    .line 28
    :goto_1b
    return-void
.end method

.method public setItemMultiCheckedByRightClick(IZZ)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_a

    .line 4
    if-eqz p3, :cond_6

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    :goto_a
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 14
    :goto_d
    return-void
.end method

.method public setItemRadioChecked(I)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->toggleItemRadioChecked(I)V

    :cond_b
    return-void
.end method

.method public setItemRadioChecked(IZ)V
    .registers 4

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemRadioChecked(IZ)V

    :cond_b
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

.method public setToggleAllChecked()V
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setToggleAllItemsChecked()V

    .line 12
    :cond_b
    return-void
.end method

.method public startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 3
    invoke-virtual {v0, p4}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_c

    .line 10
    invoke-virtual {p0, p4, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(IZ)V

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 18
    if-eqz v0, :cond_3d

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_3d

    .line 26
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 28
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 40
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v2

    .line 46
    if-le v2, v1, :cond_31

    .line 48
    move v7, v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v7, v4

    .line 51
    :goto_32
    move-object v2, v0

    .line 52
    move-object v4, p1

    .line 53
    move-object v5, p5

    .line 54
    move v8, p4

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V

    .line 58
    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    .line 61
    goto :goto_47

    .line 62
    :cond_3d
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 66
    invoke-direct {v0, v1, p1, p5, p4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    .line 69
    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    .line 72
    :goto_47
    return-void
.end method
