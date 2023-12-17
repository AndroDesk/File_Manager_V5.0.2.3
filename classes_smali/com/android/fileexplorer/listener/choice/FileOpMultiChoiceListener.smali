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
.field private static final CHECKED_ONE_FIlE:I = 0x1


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mPageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 3

    .line 6
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    const-string p2, "手机tab页"

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    const-string p2, "手机tab页"

    .line 2
    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 4
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 5
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

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showEncryptDialog(ILjava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->lambda$onActionItemClicked$1(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onActionItemClicked$1(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    .line 3
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_d

    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-static {p2}, Lcom/android/fileexplorer/util/SettingsUtils;->setSkipWidgetTips(Ljava/lang/Boolean;)V

    .line 14
    :cond_d
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    .line 23
    return-void
.end method

.method private multiCheckedItemHasDirectory(Ljava/util/List;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_a

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    move v1, v0

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_24

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    if-eqz v3, :cond_21

    .line 26
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    iget-boolean v2, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 30
    if-eqz v2, :cond_21

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_b

    .line 37
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

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
    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;

    .line 25
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;)V

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

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_f

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddWidget(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 19
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1c

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    if-nez v1, :cond_14

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    if-eqz v1, :cond_4

    .line 25
    const v0, 0x7f110215

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_2d

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    move-result v0

    .line 37
    if-ne v0, v1, :cond_2a

    .line 39
    const v0, 0x7f110213

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    const v0, 0x7f110214

    .line 46
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowEncrypt()Z

    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_88

    .line 52
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 54
    if-nez v3, :cond_88

    .line 56
    iget-object v3, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 58
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    move-result-object v3

    .line 66
    const v4, 0x7f0d0058

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    move-result-object v3

    .line 74
    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 76
    iget-object v5, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 78
    invoke-interface {v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 88
    move-result-object v3

    .line 89
    const v4, 0x7f11037d

    .line 92
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 95
    move-result-object v3

    .line 96
    const v4, 0x7f110464

    .line 99
    new-instance v5, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$3;

    .line 101
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$3;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V

    .line 104
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 107
    move-result-object v3

    .line 108
    const v4, 0x7f1102db

    .line 111
    new-instance v5, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;

    .line 113
    invoke-direct {v5, p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V

    .line 116
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 130
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 133
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setShowEncrypt(Z)V

    .line 136
    goto :goto_8b

    .line 137
    :cond_88
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showEncryptDialog(ILjava/util/List;)V

    .line 140
    :goto_8b
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, ""

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    .line 11
    :cond_a
    return-void
.end method

.method public getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 20
    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_11

    .line 21
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    .line 22
    :cond_11
    instance-of v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v0, :cond_20

    .line 23
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1

    .line 24
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileInfo;

    if-nez v5, :cond_4c

    instance-of v5, v4, Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v5, :cond_20

    goto :goto_4c

    .line 6
    :cond_20
    instance-of v5, v4, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v5, :cond_29

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    goto :goto_50

    .line 8
    :cond_29
    instance-of v5, v4, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v5, :cond_44

    .line 9
    instance-of v5, v4, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v5, :cond_38

    .line 10
    check-cast v4, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {v4}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v4

    goto :goto_3e

    .line 11
    :cond_38
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v4

    :goto_3e
    if-eqz v4, :cond_4c

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 13
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

    .line 14
    :goto_50
    sget-boolean v3, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v3, :cond_6e

    if-eqz v1, :cond_6e

    .line 15
    :goto_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6e

    const/4 v1, 0x3

    if-le v2, v1, :cond_60

    goto :goto_6e

    .line 16
    :cond_60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/model/AdFileInfo;

    if-eqz v1, :cond_6b

    .line 17
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

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1b

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 25
    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x0

    .line 37
    sparse-switch p2, :sswitch_data_19a

    .line 40
    return v2

    .line 41
    :sswitch_28
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 43
    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 46
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 49
    return v1

    .line 50
    :sswitch_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_48

    .line 56
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 58
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 61
    move-result-object p2

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 68
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 70
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    .line 73
    :cond_48
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 76
    return v1

    .line 77
    :sswitch_4c
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 79
    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 87
    return v1

    .line 88
    :sswitch_57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_68

    .line 94
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 102
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 105
    :cond_68
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 108
    return v1

    .line 109
    :sswitch_6c
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->doEncrypt(Ljava/util/List;)V

    .line 115
    return v1

    .line 116
    :sswitch_73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_85

    .line 122
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-static {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 134
    :cond_85
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 137
    return v1

    .line 138
    :sswitch_89
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 141
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 144
    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 152
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 155
    move-result-object v2

    .line 156
    const v3, 0x7f11029a

    .line 159
    const v4, 0x7f11030c

    .line 162
    const/4 v5, 0x1

    .line 163
    const/4 v6, 0x1

    .line 164
    const/4 v7, 0x1

    .line 165
    const/4 v8, 0x0

    .line 166
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 169
    return v1

    .line 170
    :sswitch_a9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 173
    move-result p2

    .line 174
    if-nez p2, :cond_bc

    .line 176
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 184
    const-string v2, ""

    .line 186
    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 189
    :cond_bc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 192
    return v1

    .line 193
    :sswitch_c0
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 195
    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 198
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 201
    return v1

    .line 202
    :sswitch_c9
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 204
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    .line 207
    sget-boolean p2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 209
    if-eqz p2, :cond_e1

    .line 211
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 214
    move-result-object p2

    .line 215
    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;

    .line 217
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;-><init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Landroid/view/ActionMode;)V

    .line 220
    const-wide/16 v2, 0x12c

    .line 222
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    goto :goto_e4

    .line 226
    :cond_e1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 229
    :goto_e4
    return v1

    .line 230
    :sswitch_e5
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 232
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 235
    move-result-object p2

    .line 236
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 242
    return v1

    .line 243
    :sswitch_f2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 246
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 249
    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 252
    invoke-virtual {p1, v0, v2, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 257
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 260
    move-result-object v2

    .line 261
    const v3, 0x7f1100f3

    .line 264
    const v4, 0x7f1102ed

    .line 267
    const/4 v5, 0x1

    .line 268
    const/4 v6, 0x1

    .line 269
    const/4 v7, 0x1

    .line 270
    const/4 v8, 0x0

    .line 271
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 274
    return v1

    .line 275
    :sswitch_112
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 277
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 280
    move-result-object p2

    .line 281
    invoke-static {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    .line 284
    move-result p2

    .line 285
    if-nez p2, :cond_122

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V

    .line 290
    return v1

    .line 291
    :cond_122
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 294
    move-result p2

    .line 295
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainDataSize()I

    .line 298
    move-result v3

    .line 299
    add-int/2addr v3, p2

    .line 300
    const/4 p2, 0x4

    .line 301
    if-le v3, p2, :cond_18d

    .line 303
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isToSkipWidgetTip()Z

    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_18d

    .line 309
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 311
    iget-object v4, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 313
    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 316
    move-result-object v4

    .line 317
    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    const v4, 0x7f110444

    .line 323
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 330
    move-result-object v3

    .line 331
    const v4, 0x7f110445

    .line 334
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 337
    move-result-object v4

    .line 338
    new-array v5, v1, [Ljava/lang/Object;

    .line 340
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v6

    .line 344
    aput-object v6, v5, v2

    .line 346
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 353
    move-result-object v3

    .line 354
    const v4, 0x7f110121

    .line 357
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v3, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 364
    move-result-object v2

    .line 365
    const v3, 0x7f110050

    .line 368
    new-instance v4, Lcom/android/cloud/fragment/c;

    .line 370
    const/4 v5, 0x3

    .line 371
    invoke-direct {v4, v5}, Lcom/android/cloud/fragment/c;-><init>(I)V

    .line 374
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 377
    move-result-object v2

    .line 378
    const v3, 0x7f1100eb

    .line 381
    new-instance v4, Lcom/android/cloud/a;

    .line 383
    invoke-direct {v4, p2, p0, v0}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 389
    move-result-object p2

    .line 390
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 393
    move-result-object p2

    .line 394
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 397
    goto :goto_196

    .line 398
    :cond_18d
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 400
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 403
    move-result-object p2

    .line 404
    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    .line 407
    :goto_196
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 410
    return v1

    .line 411
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

    .line 1
    const-string v0, "onCreateActionMode"

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 8
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0e000b

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 18
    const p2, 0x7f11025d

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(I)V

    .line 24
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 32
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3c

    .line 42
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 44
    if-nez p1, :cond_3c

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 48
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    move-result-object p1

    .line 56
    const/high16 p2, 0x8000000

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 61
    :cond_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mActionMode:Landroid/view/ActionMode;

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_22

    .line 16
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 18
    if-nez p1, :cond_22

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 22
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    move-result-object p1

    .line 30
    const/high16 v0, 0x8000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 35
    :cond_22
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 12

    .line 1
    const-string p1, "onPrepareActionMode"

    .line 3
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 8
    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez p1, :cond_11

    .line 16
    move v2, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v2, v0

    .line 19
    :goto_12
    if-ne p1, v1, :cond_16

    .line 21
    move v3, v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v0

    .line 24
    :goto_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showFavOrUnFav()Z

    .line 27
    move-result v4

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showWallpaper()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_29

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->disableVideoWallpaper()Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_29

    .line 40
    move v5, v1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v5, v0

    .line 43
    :goto_2a
    sget-object v6, Lcom/android/fileexplorer/statistics/StatConstants;->CATEGORY_EXIST_DIRECTORY:Ljava/util/List;

    .line 45
    iget-object v7, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 47
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_42

    .line 53
    iget-object v6, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 55
    invoke-interface {v6}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    .line 58
    move-result-object v6

    .line 59
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->multiCheckedItemHasDirectory(Ljava/util/List;)Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_42

    .line 65
    move v6, v1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v6, v0

    .line 68
    :goto_43
    const v7, 0x7f0a0075

    .line 71
    if-nez v2, :cond_4c

    .line 73
    if-nez v6, :cond_4c

    .line 75
    move v8, v1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v8, v0

    .line 78
    :goto_4d
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 81
    const v7, 0x7f0a006a

    .line 84
    xor-int/lit8 v8, v2, 0x1

    .line 86
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 89
    const v7, 0x7f0a005a

    .line 92
    xor-int/lit8 v8, v2, 0x1

    .line 94
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 97
    const v7, 0x7f0a0054

    .line 100
    xor-int/lit8 v8, v2, 0x1

    .line 102
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 105
    const v7, 0x7f0a0055

    .line 108
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_77

    .line 114
    if-ne p1, v1, :cond_77

    .line 116
    if-nez v6, :cond_77

    .line 118
    move v8, v1

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v8, v0

    .line 121
    :goto_78
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 124
    const v7, 0x7f0a0039

    .line 127
    if-ne p1, v1, :cond_8a

    .line 129
    if-nez v6, :cond_8a

    .line 131
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_8a

    .line 137
    move p1, v1

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move p1, v0

    .line 140
    :goto_8b
    invoke-virtual {p0, p2, v7, p1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 143
    const p1, 0x7f0a006e

    .line 146
    if-nez v2, :cond_9f

    .line 148
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v7}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_9f

    .line 158
    move v7, v1

    .line 159
    goto :goto_a0

    .line 160
    :cond_9f
    move v7, v0

    .line 161
    :goto_a0
    invoke-virtual {p0, p2, p1, v7}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 164
    const p1, 0x7f0a005e

    .line 167
    if-nez v2, :cond_ac

    .line 169
    if-eqz v4, :cond_ac

    .line 171
    move v7, v1

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v7, v0

    .line 174
    :goto_ad
    invoke-virtual {p0, p2, p1, v7}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 177
    const p1, 0x7f0a0079

    .line 180
    if-nez v2, :cond_b9

    .line 182
    if-nez v4, :cond_b9

    .line 184
    move v2, v1

    .line 185
    goto :goto_ba

    .line 186
    :cond_b9
    move v2, v0

    .line 187
    :goto_ba
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 190
    const p1, 0x7f0a0072

    .line 193
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 196
    const p1, 0x7f0a0050

    .line 199
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 202
    const p1, 0x7f0a006d

    .line 205
    if-eqz v3, :cond_d1

    .line 207
    if-nez v6, :cond_d1

    .line 209
    goto :goto_d2

    .line 210
    :cond_d1
    move v1, v0

    .line 211
    :goto_d2
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 214
    const p1, 0x7f0a0077

    .line 217
    invoke-virtual {p0, p2, p1, v5}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 220
    const p1, 0x7f0a0061

    .line 223
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 226
    const p1, 0x7f0a0071

    .line 229
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 232
    const p1, 0x7f0a004d

    .line 235
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 238
    const p1, 0x7f0a0056

    .line 241
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 244
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 247
    return v0
.end method

.method public showFavOrUnFav()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2e

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_b

    .line 25
    :cond_18
    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    if-eqz v3, :cond_23

    .line 29
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    iget-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 33
    :goto_20
    xor-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    instance-of v3, v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 38
    if-eqz v3, :cond_2c

    .line 40
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 42
    iget-boolean v1, v2, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 44
    goto :goto_20

    .line 45
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_b

    .line 47
    :cond_2e
    return v1
.end method

.method public showWallpaper()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_22

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    return v2

    .line 18
    :cond_11
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_20

    .line 30
    if-eqz v0, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v1, v2

    .line 34
    :goto_21
    return v1

    .line 35
    :cond_22
    return v2
.end method
