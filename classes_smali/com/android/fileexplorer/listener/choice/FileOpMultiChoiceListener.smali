.class public Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;
.source "FileOpMultiChoiceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$ActionRun;
    }
.end annotation


# static fields
.field private static final CHECKED_ONE_FIlE:I


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mPageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->CHECKED_ONE_FIlE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    const-string p2, "手机tab页"

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    const-string p2, "手机tab页"

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iput-object p3, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showEncryptDialog(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->lambda$onActionItemClicked$1(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onActionItemClicked$1(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/android/fileexplorer/util/SettingsUtils;->setSkipWidgetTips(Ljava/lang/Boolean;)V

    :cond_d
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    return-void
.end method

.method private multiCheckedItemHasDirectory(Ljava/util/List;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    move v1, v0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v2, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    return v0
.end method

.method private showEncryptDialog(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110212

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;)V

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

.method private tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddWidget(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method


# virtual methods
.method public doEncrypt(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_4

    const v0, 0x7f110215

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    const/4 v1, 0x1

    if-nez v0, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2a

    const v0, 0x7f110213

    goto :goto_2d

    :cond_2a
    const v0, 0x7f110214

    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    move-result v3

    if-nez v3, :cond_8c

    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

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

    iget-object v5, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f11037d

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f110464

    new-instance v5, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$3;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1102db

    new-instance v5, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    goto :goto_8f

    :cond_8c
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showEncryptDialog(ILjava/util/List;)V

    :goto_8f
    return-void
.end method

.method public encrypt(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;
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

.method public getCheckedItem()Ljava/util/List;
    .registers 7
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

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileInfo;

    if-nez v5, :cond_4c

    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v5, :cond_20

    goto :goto_4c

    :cond_20
    instance-of v5, v4, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v5, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    goto :goto_50

    :cond_29
    instance-of v5, v4, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v5, :cond_44

    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v5, :cond_38

    check-cast v4, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {v4}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v4

    goto :goto_3e

    :cond_38
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v4

    :goto_3e
    if-eqz v4, :cond_4c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_4f
    move v1, v2

    :goto_50
    sget-boolean v3, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v3, :cond_6e

    if-eqz v1, :cond_6e

    :goto_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6e

    const/4 v1, 0x3

    if-le v2, v1, :cond_60

    goto :goto_6e

    :cond_60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/model/AdFileInfo;

    if-eqz v1, :cond_6b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 12

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_19a

    return v2

    :sswitch_28
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_48

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_48
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_4c
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_68

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_68
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_6c
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->doEncrypt(Ljava/util/List;)V

    return v1

    :sswitch_73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_85

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_85
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_89
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v3, 0x7f11029a

    const v4, 0x7f11030c

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v1

    :sswitch_a9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_bc

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_bc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_c0
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_c9
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    sget-boolean p2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz p2, :cond_e1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Landroid/view/ActionMode;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e4

    :cond_e1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_e4
    return v1

    :sswitch_e5
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_f2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v3, 0x7f1100f3

    const v4, 0x7f1102ed

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v1

    :sswitch_112
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_122

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V

    return v1

    :cond_122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainDataSize()I

    move-result v3

    add-int/2addr v3, p2

    const/4 p2, 0x4

    if-le v3, p2, :cond_18d

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isToSkipWidgetTip()Z

    move-result v3

    if-nez v3, :cond_18d

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f110444

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f110445

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f110121

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110050

    new-instance v4, Lcom/android/cloud/fragment/c;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/cloud/fragment/c;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1100eb

    new-instance v4, Lcom/android/cloud/a;

    invoke-direct {v4, p2, p0, v0}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_196

    :cond_18d
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    :goto_196
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :sswitch_data_19a
    .sparse-switch
        0x7f0a0039 -> :sswitch_112
        0x7f0a0054 -> :sswitch_f2
        0x7f0a0055 -> :sswitch_e5
        0x7f0a005a -> :sswitch_c9
        0x7f0a005e -> :sswitch_c0
        0x7f0a0061 -> :sswitch_a9
        0x7f0a006a -> :sswitch_89
        0x7f0a006d -> :sswitch_73
        0x7f0a006e -> :sswitch_6c
        0x7f0a0072 -> :sswitch_57
        0x7f0a0075 -> :sswitch_4c
        0x7f0a0077 -> :sswitch_31
        0x7f0a0079 -> :sswitch_28
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    const-string v0, "onCreateActionMode"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f11025d

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(I)V

    check-cast p1, Lmiuix/view/EditActionMode;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3c

    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_22
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 12

    const-string p1, "onPrepareActionMode"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-ne p1, v1, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v0

    :goto_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showFavOrUnFav()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showWallpaper()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->disableVideoWallpaper()Z

    move-result v5

    if-nez v5, :cond_29

    move v5, v1

    goto :goto_2a

    :cond_29
    move v5, v0

    :goto_2a
    sget-object v6, Lcom/android/fileexplorer/statistics/StatConstants;->CATEGORY_EXIST_DIRECTORY:Ljava/util/List;

    iget-object v7, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v6}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->multiCheckedItemHasDirectory(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_42

    move v6, v1

    goto :goto_43

    :cond_42
    move v6, v0

    :goto_43
    const v7, 0x7f0a0075

    if-nez v2, :cond_4c

    if-nez v6, :cond_4c

    move v8, v1

    goto :goto_4d

    :cond_4c
    move v8, v0

    :goto_4d
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a006a

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a005a

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a0054

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v8

    if-eqz v8, :cond_77

    if-ne p1, v1, :cond_77

    if-nez v6, :cond_77

    move v8, v1

    goto :goto_78

    :cond_77
    move v8, v0

    :goto_78
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a0039

    if-ne p1, v1, :cond_8a

    if-nez v6, :cond_8a

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result p1

    if-eqz p1, :cond_8a

    move p1, v1

    goto :goto_8b

    :cond_8a
    move p1, v0

    :goto_8b
    invoke-virtual {p0, p2, v7, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a006e

    if-nez v2, :cond_9f

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v7

    if-eqz v7, :cond_9f

    move v7, v1

    goto :goto_a0

    :cond_9f
    move v7, v0

    :goto_a0
    invoke-virtual {p0, p2, p1, v7}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a005e

    if-nez v2, :cond_ac

    if-eqz v4, :cond_ac

    move v7, v1

    goto :goto_ad

    :cond_ac
    move v7, v0

    :goto_ad
    invoke-virtual {p0, p2, p1, v7}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0079

    if-nez v2, :cond_b9

    if-nez v4, :cond_b9

    move v2, v1

    goto :goto_ba

    :cond_b9
    move v2, v0

    :goto_ba
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0072

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0050

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a006d

    if-eqz v3, :cond_d1

    if-nez v6, :cond_d1

    goto :goto_d2

    :cond_d1
    move v1, v0

    :goto_d2
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0077

    invoke-virtual {p0, p2, p1, v5}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0061

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0071

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a004d

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p1, 0x7f0a0056

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0
.end method

.method public showFavOrUnFav()Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_b

    :cond_18
    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v3, :cond_23

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    :goto_20
    xor-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_23
    instance-of v3, v2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    iget-boolean v1, v2, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_20

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_b

    :cond_2e
    return v1
.end method

.method public showWallpaper()Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_22

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1

    :cond_22
    return v2
.end method
