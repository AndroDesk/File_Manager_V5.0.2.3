.class public Lcom/android/fileexplorer/fragment/FileOperationContentFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "FileOperationContentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/FileOperationContentFragment$HandleIntentTask;
    }
.end annotation


# static fields
.field private static final EXTRACT_FILE_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.ExtractFileActivity"

.field public static final EXTRA_COPY_OR_MOVE:Ljava/lang/String; = "copyOrMove"

.field public static final EXTRA_DEVICE_INDEX:Ljava/lang/String; = "device_index"

.field public static final EXTRA_FROM_MI_SHARE:Ljava/lang/String; = "from_mi_share"

.field public static final EXTRA_INNER_CALL:Ljava/lang/String; = "inner_call"

.field public static final EXTRA_PICK_BUTTON_NAME:Ljava/lang/String; = "pick_button_name"

.field public static final EXTRA_PICK_FROM_MI_DRIVE:Ljava/lang/String; = "pick_mi_drive"

.field public static final EXTRA_PICK_FROM_MTP:Ljava/lang/String; = "pick_mtp"

.field public static final EXTRA_PICK_FROM_ROUTER:Ljava/lang/String; = "pick_router"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final MOVE_FILE_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.MoveFileActivity"

.field private static final TAG:Ljava/lang/String; = "FileOperationContentFragment"


# instance fields
.field private mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/content/Intent;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-object p1
.end method

.method private checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMoveOrExtractIntent: className = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileOperationContentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.fileexplorer.activity.MoveFileActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->initMoveIntent(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_33
    const-string v0, "com.android.fileexplorer.activity.ExtractFileActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->initExtractIntent(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3f
    const/4 p1, 0x0

    return p1
.end method

.method private handleDeviceIndex(Landroid/content/Intent;Z)V
    .registers 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_8a

    if-nez p1, :cond_10

    goto/16 :goto_8a

    :cond_10
    const/4 v0, -0x1

    const-string v1, "device_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "deviceIndex = "

    const-string v3, "FileOperationContentFragment"

    invoke-static {v2, v0, v3}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_87

    const/16 v5, 0xc

    if-eq v0, v5, :cond_87

    const/4 v5, 0x6

    if-eq v0, v5, :cond_87

    const/4 v5, 0x7

    if-eq v0, v5, :cond_87

    const-string v0, "pick_mi_drive"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v6, "pick_router"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "pick_mtp"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->showExtendedStorage(Landroid/content/Intent;)Z

    move-result v8

    const-string v9, "copyOrMove"

    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_55

    if-eqz p2, :cond_4e

    goto :goto_55

    :cond_4e
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    goto :goto_8a

    :cond_55
    :goto_55
    const-string p1, "switchStorageVolumeFragment"

    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_83

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosOnlyCloud()Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-direct {p0, v4, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(ZZ)V

    goto :goto_8a

    :cond_6c
    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosContainsDir()Z

    move-result p1

    if-nez p1, :cond_7c

    invoke-direct {p0, v6, v8, v7, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    goto :goto_8a

    :cond_7c
    invoke-direct {p0, v6, v8, v7, v5}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    goto :goto_8a

    :cond_83
    invoke-direct {p0, v6, v8, v7, v0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    goto :goto_8a

    :cond_87
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method private handleIntent(Landroid/os/Bundle;)V
    .registers 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const/4 v0, -0x1

    const-string v1, "device_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchCloudFragment(Landroid/content/Intent;)V

    return-void

    :cond_1a
    const-string v0, "inner_call"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "inner"

    goto :goto_28

    :cond_26
    const-string v0, "outer"

    :goto_28
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "FileOperationContentFragment"

    const-string v7, "handleIntent"

    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "content"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "android.intent.action.VIEW"

    if-eqz v2, :cond_7c

    if-nez v3, :cond_4f

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    return-void

    :cond_4f
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authority = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    new-instance v2, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$HandleIntentTask;

    invoke-direct {v2, v3, p1, v0, p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$HandleIntentTask;-><init>(Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_7c
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v2

    if-eqz v2, :cond_e9

    const/4 v1, 0x0

    if-eqz v3, :cond_89

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent normal path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string v2, "explorer_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/MiShare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const/4 v2, 0x1

    const-string v3, "from_mi_share"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_ca

    :cond_be
    const-string v2, "current_directory"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_ca
    :goto_ca
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e7

    invoke-static {v1}, La/a;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    if-eqz v5, :cond_e7

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_f0

    :cond_e7
    move v1, v2

    goto :goto_f0

    :cond_e9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    :cond_f0
    :goto_f0
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    :cond_f9
    return-void
.end method

.method private initExtractIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "miui.intent.action.PICK_FOLDER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "pick_mi_drive"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "pick_mtp"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "pick_router"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method private initMoveIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/FileExplorer/.safebox"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const p1, 0x7f11045a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    return-void

    :cond_1a
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    if-nez p1, :cond_21

    return-void

    :cond_21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "miui.intent.action.PICK_FOLDER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "pick_mi_drive"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "pick_mtp"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method private isMtpOnOreo()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_39

    :cond_18
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->isUnHandleData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    :cond_39
    :goto_39
    return v1
.end method

.method private isUnHandleData(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.mtp.documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiSystem()Z

    move-result p1

    if-nez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private login()V
    .registers 10

    const-string v0, "login mAccountManagerCallback:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileOperationContentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    :cond_1f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "show_sync_settings"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    const/4 v8, 0x0

    const-string v2, "com.xiaomi"

    const-string v3, "micloud"

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->isMtpOnOreo()Z

    move-result v0

    if-eqz v0, :cond_60

    :try_start_6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_50

    const/16 v1, 0x1c

    const-string v2, "com.android.documentsui.files.FilesActivity"

    if-le v0, v1, :cond_42

    :try_start_3a
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.documentsui"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_42
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.documentsui"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_5c

    :catch_50
    move-exception p1

    const-string v0, "onCreateImpl start DocumentsUI FileActivity error: e = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FileOperationContentFragment"

    invoke-static {p1, v0, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    goto :goto_63

    :cond_60
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleIntent(Landroid/os/Bundle;)V

    :goto_63
    return-void
.end method

.method private restoreIntent()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->restoreIntent()V

    :cond_17
    return-void
.end method

.method private showExtendedStorage(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_54

    const-string v1, "inner_call"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_54

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_54

    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2c

    return v0

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_54

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_54

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_40} :catch_44

    and-int/2addr p1, v0

    if-nez p1, :cond_54

    return v2

    :catch_44
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    :goto_54
    return v0
.end method

.method public static startPickPrivateActivityForResult(Landroid/app/Activity;I)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "miui.intent.action.PICK_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pick_router"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "pick_mi_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "pick_mtp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "inner_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "pick_button_name"

    const v2, 0x7f110212

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_3e

    :catch_32
    move-exception p0

    const-string p1, "startPickPrivateActivityForResult error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "FileOperationContentFragment"

    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method private switchCloudFragment(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "FileOperationContentFragment"

    const-string v1, "switchCloudragment"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CloudFileFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v2, v0, Lcom/android/cloud/fragment/CloudFileFragment;

    if-eqz v2, :cond_1d

    move-object v2, v0

    check-cast v2, Lcom/android/cloud/fragment/CloudFileFragment;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_24

    :cond_1d
    new-instance v2, Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-direct {v2}, Lcom/android/cloud/fragment/CloudFileFragment;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "current_directory"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "current_cloudinfo_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v4, "device_index"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz p1, :cond_60

    if-eqz v0, :cond_60

    invoke-virtual {v2, p1}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_67

    :cond_60
    const v0, 0x7f0a0101

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p1, v1, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_67
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchFileViewFragment(Z)V
    .registers 7

    const-string v0, "FileOperationContentFragment"

    const-string v1, "switchFileViewFragment"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ExportFileFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v2, v0, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    if-eqz v2, :cond_1d

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_24

    :cond_1d
    new-instance v2, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/ExportFileFragment;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v3, :cond_36

    if-eqz v0, :cond_36

    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_3d

    :cond_36
    const v0, 0x7f0a0101

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_3d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v0, :cond_44

    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_44
    if-nez p1, :cond_49

    invoke-virtual {v2, v1}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_49
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchFileViewFragment(ZZ)V
    .registers 7

    const-string p2, "FileOperationContentFragment"

    const-string v0, "switchFileViewFragment"

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "PickerCloudFileFragment"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1d

    instance-of v1, p2, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    if-eqz v1, :cond_1d

    move-object v1, p2

    check-cast v1, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_24

    :cond_1d
    new-instance v1, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    invoke-direct {v1}, Lcom/android/cloud/fragment/PickerCloudFileFragment;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v2, :cond_36

    if-eqz p2, :cond_36

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_3d

    :cond_36
    const p2, 0x7f0a0101

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v0, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_3d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz p2, :cond_44

    invoke-virtual {v1, p2}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_44
    if-nez p1, :cond_49

    invoke-virtual {v1, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_49
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchStorageVolumeFragment(ZZZZ)V
    .registers 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "StorageVolumesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v2, v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v2, :cond_16

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    goto :goto_1d

    :cond_16
    new-instance v2, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    :goto_1d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "show_router"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "show_extended"

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "show_mtp"

    invoke-virtual {v2, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    if-eqz p4, :cond_3c

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p2

    if-eqz p2, :cond_3c

    move p2, p1

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    const-string p3, "show_midrive"

    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/fragment/app/a;

    invoke-direct {p3, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-eqz v0, :cond_62

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz p2, :cond_62

    invoke-virtual {p3, p2}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_6a

    :cond_62
    const p2, 0x7f0a0101

    iget-object p4, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    invoke-virtual {p3, p2, p4, v1, p1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_6a
    invoke-virtual {p3}, Landroidx/fragment/app/a;->d()I

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0028

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public interceptBackPress()Z
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->restoreIntent()V

    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActionModeChange(Z)V

    :cond_7
    return-void
.end method

.method public onBack()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->interceptBackPress()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f120121

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x72

    invoke-static {p1, v0, v1}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_24

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onCreateImpl(Landroid/os/Bundle;)V

    :goto_24
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V

    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->restoreIntent()V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 v1, 0x0

    const-string v2, "FileOperationContentFragment"

    if-nez v0, :cond_d

    const-string p1, "onKeyShortcut mCurrentFragment is null, return."

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "onKeyShortcut is not ViewMode, return."

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p2

    if-eqz p2, :cond_5a

    const/16 p2, 0x1d

    if-eq p1, p2, :cond_4d

    const/16 p2, 0x1f

    if-eq p1, p2, :cond_41

    const/16 p2, 0x32

    if-eq p1, p2, :cond_34

    goto :goto_5a

    :cond_34
    const-string p1, "onKeyShortcut Ctrl+V"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_41
    const-string p1, "onKeyShortcut Ctrl+C"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_4d
    const-string p1, "onKeyShortcut Ctrl+A"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/16 v0, 0x72

    if-ne p1, v0, :cond_26

    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_26

    array-length p1, p3

    if-ge p1, v0, :cond_c

    goto :goto_26

    :cond_c
    const/4 p1, 0x0

    aget-object p3, p2, p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_21

    aget-object p1, p2, p1

    const-string p2, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_21
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onCreateImpl(Landroid/os/Bundle;)V

    nop

    :cond_26
    :goto_26
    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onVolumeBack()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    return-void
.end method

.method public onVolumeClick(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.mtp.documents"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "device_index"

    if-eqz v1, :cond_1f

    const/16 p1, 0xc

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3f

    :cond_1f
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "//"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 p1, 0x6

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3f

    :cond_30
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "current_directory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3f
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    goto :goto_51

    :cond_43
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_4d

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->login()V

    goto :goto_51

    :cond_4d
    const/4 p1, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(ZZ)V

    :cond_51
    :goto_51
    return-void
.end method
