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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/content/Intent;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 3
    return-object p1
.end method

.method private checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "checkMoveOrExtractIntent: className = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", path = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FileOperationContentFragment"

    .line 36
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "com.android.fileexplorer.activity.MoveFileActivity"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_33

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->initMoveIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v1

    .line 52
    :cond_33
    const-string v0, "com.android.fileexplorer.activity.ExtractFileActivity"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3f

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->initExtractIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v1

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method private handleDeviceIndex(Landroid/content/Intent;Z)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_8a

    .line 13
    if-nez p1, :cond_10

    .line 15
    goto/16 :goto_8a

    .line 17
    :cond_10
    const/4 v0, -0x1

    .line 18
    const-string v1, "device_index"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    const-string v2, "deviceIndex = "

    .line 26
    const-string v3, "FileOperationContentFragment"

    .line 28
    invoke-static {v2, v0, v3}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v0, v2, :cond_87

    .line 35
    const/16 v5, 0xc

    .line 37
    if-eq v0, v5, :cond_87

    .line 39
    const/4 v5, 0x6

    .line 40
    if-eq v0, v5, :cond_87

    .line 42
    const/4 v5, 0x7

    .line 43
    if-eq v0, v5, :cond_87

    .line 45
    const-string v0, "pick_mi_drive"

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 51
    move-result v0

    .line 52
    const-string v6, "pick_router"

    .line 54
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 57
    move-result v6

    .line 58
    const-string v7, "pick_mtp"

    .line 60
    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 63
    move-result v7

    .line 64
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->showExtendedStorage(Landroid/content/Intent;)Z

    .line 67
    move-result v8

    .line 68
    const-string v9, "copyOrMove"

    .line 70
    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_55

    .line 76
    if-eqz p2, :cond_4e

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    .line 85
    goto :goto_8a

    .line 86
    :cond_55
    :goto_55
    const-string p1, "switchStorageVolumeFragment"

    .line 88
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v9, :cond_83

    .line 93
    if-eqz v0, :cond_6c

    .line 95
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosOnlyCloud()Z

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_6c

    .line 105
    invoke-direct {p0, v4, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(ZZ)V

    .line 108
    goto :goto_8a

    .line 109
    :cond_6c
    if-eqz v0, :cond_7c

    .line 111
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosContainsDir()Z

    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_7c

    .line 121
    invoke-direct {p0, v6, v8, v7, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    .line 124
    goto :goto_8a

    .line 125
    :cond_7c
    invoke-direct {p0, v6, v8, v7, v5}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    .line 128
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    .line 131
    goto :goto_8a

    .line 132
    :cond_83
    invoke-direct {p0, v6, v8, v7, v0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchStorageVolumeFragment(ZZZZ)V

    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    .line 139
    :cond_8a
    :goto_8a
    return-void
.end method

.method private handleIntent(Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v0, -0x1

    .line 13
    const-string v1, "device_index"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xd

    .line 21
    if-ne v0, v1, :cond_1a

    .line 23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchCloudFragment(Landroid/content/Intent;)V

    .line 26
    return-void

    .line 27
    :cond_1a
    const-string v0, "inner_call"

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_26

    .line 36
    const-string v0, "inner"

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const-string v0, "outer"

    .line 41
    :goto_28
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 56
    move-result-object v5

    .line 57
    const-string v6, "FileOperationContentFragment"

    .line 59
    const-string v7, "handleIntent"

    .line 61
    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v7, "content"

    .line 66
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    const-string v7, "android.intent.action.VIEW"

    .line 72
    if-eqz v2, :cond_7c

    .line 74
    if-nez v3, :cond_4f

    .line 76
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 79
    return-void

    .line 80
    :cond_4f
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v8, "authority = "

    .line 91
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v6, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_f0

    .line 110
    new-instance v2, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$HandleIntentTask;

    .line 112
    invoke-direct {v2, v3, p1, v0, p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$HandleIntentTask;-><init>(Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V

    .line 115
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 118
    move-result-object p1

    .line 119
    new-array v0, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void

    .line 125
    :cond_7c
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_e9

    .line 131
    const/4 v1, 0x0

    .line 132
    if-eqz v3, :cond_89

    .line 134
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    :cond_89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v3, "handleIntent normal path = "

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v6, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_ca

    .line 164
    const-string v2, "explorer_path"

    .line 166
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_be

    .line 172
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    const-string v2, "/MiShare"

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_ca

    .line 184
    const/4 v2, 0x1

    .line 185
    const-string v3, "from_mi_share"

    .line 187
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    goto :goto_ca

    .line 191
    :cond_be
    const-string v2, "current_directory"

    .line 193
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_ca

    .line 199
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 203
    :cond_ca
    :goto_ca
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    move-result v2

    .line 207
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_e7

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_e7

    .line 219
    invoke-static {v1}, La/a;->A(Ljava/lang/String;)Z

    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_e7

    .line 225
    if-eqz v5, :cond_e7

    .line 227
    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    move-result v1

    .line 231
    goto :goto_f0

    .line 232
    :cond_e7
    move v1, v2

    .line 233
    goto :goto_f0

    .line 234
    :cond_e9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 241
    :cond_f0
    :goto_f0
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_f9

    .line 247
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 250
    :cond_f9
    return-void
.end method

.method private initExtractIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    move-result-object p1

    .line 23
    const-string p2, "miui.intent.action.PICK_FOLDER"

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    const-string p2, "pick_mi_drive"

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, "pick_mtp"

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, "pick_router"

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method private initMoveIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    const-string v0, "/FileExplorer/.safebox"

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1a

    .line 17
    const p1, 0x7f11045a

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    move-result-object p1

    .line 58
    const-string p2, "miui.intent.action.PICK_FOLDER"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 70
    move-result-object p1

    .line 71
    const-string p2, "pick_mi_drive"

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 83
    move-result-object p1

    .line 84
    const-string p2, "pick_mtp"

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    move-result-object p1

    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private isMtpOnOreo()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_39

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_39

    .line 18
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_39

    .line 25
    :cond_18
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->isUnHandleData(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_39

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_39

    .line 49
    const-string v2, "android.intent.action.VIEW"

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_39

    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_39
    :goto_39
    return v1
.end method

.method private isUnHandleData(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1e

    .line 7
    const-string v0, "com.android.mtp.documents"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1c

    .line 15
    const-string v0, "com.android.externalstorage.documents"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1e

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiSystem()Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1e

    .line 29
    :cond_1c
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    return p1
.end method

.method private login()V
    .registers 10

    .line 1
    const-string v0, "login mAccountManagerCallback:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "FileOperationContentFragment"

    .line 18
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 23
    if-nez v0, :cond_1f

    .line 25
    new-instance v0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/FileOperationContentFragment;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 32
    :cond_1f
    new-instance v5, Landroid/os/Bundle;

    .line 34
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 37
    const/4 v0, 0x1

    .line 38
    const-string v1, "show_sync_settings"

    .line 40
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 50
    move-result-object v1

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    move-result-object v6

    .line 56
    iget-object v7, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 58
    const/4 v8, 0x0

    .line 59
    const-string v2, "com.xiaomi"

    .line 61
    const-string v3, "micloud"

    .line 63
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 66
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->isMtpOnOreo()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_60

    .line 7
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_50

    .line 53
    const/16 v1, 0x1c

    .line 55
    const-string v2, "com.android.documentsui.files.FilesActivity"

    .line 57
    if-le v0, v1, :cond_42

    .line 59
    :try_start_3a
    new-instance v0, Landroid/content/ComponentName;

    .line 61
    const-string v1, "com.google.android.documentsui"

    .line 63
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_49

    .line 67
    :cond_42
    new-instance v0, Landroid/content/ComponentName;

    .line 69
    const-string v1, "com.android.documentsui"

    .line 71
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_50

    .line 80
    goto :goto_5c

    .line 81
    :catch_50
    move-exception p1

    .line 82
    const-string v0, "onCreateImpl start DocumentsUI FileActivity error: e = "

    .line 84
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v0

    .line 88
    const-string v1, "FileOperationContentFragment"

    .line 90
    invoke-static {p1, v0, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    :goto_5c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleIntent(Landroid/os/Bundle;)V

    .line 100
    :goto_63
    return-void
.end method

.method private restoreIntent()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 13
    if-eqz v0, :cond_17

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->restoreIntent()V

    .line 24
    :cond_17
    return-void
.end method

.method private showExtendedStorage(Landroid/content/Intent;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_54

    .line 4
    const-string v1, "inner_call"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_54

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_21

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_21

    .line 33
    goto :goto_54

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2c

    .line 44
    return v0

    .line 45
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_54

    .line 59
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    if-eqz p1, :cond_54

    .line 63
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_40} :catch_44

    .line 65
    and-int/2addr p1, v0

    .line 66
    if-nez p1, :cond_54

    .line 68
    return v2

    .line 69
    :catch_44
    move-exception p1

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_54
    :goto_54
    return v0
.end method

.method public static startPickPrivateActivityForResult(Landroid/app/Activity;I)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "miui.intent.action.PICK_MULTIPLE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "pick_router"

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    const-string v1, "pick_mi_drive"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    const-string v1, "pick_mtp"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    const-string v1, "inner_call"

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    const-string v1, "pick_button_name"

    .line 37
    const v2, 0x7f110212

    .line 40
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 50
    goto :goto_3e

    .line 51
    :catch_32
    move-exception p0

    .line 52
    const-string p1, "startPickPrivateActivityForResult error: "

    .line 54
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p1

    .line 58
    const-string v0, "FileOperationContentFragment"

    .line 60
    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    :goto_3e
    return-void
.end method

.method private switchCloudFragment(Landroid/content/Intent;)V
    .registers 7

    .line 1
    const-string v0, "FileOperationContentFragment"

    .line 3
    const-string v1, "switchCloudragment"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "CloudFileFragment"

    .line 14
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1d

    .line 20
    instance-of v2, v0, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 22
    if-eqz v2, :cond_1d

    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 27
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    new-instance v2, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 32
    invoke-direct {v2}, Lcom/android/cloud/fragment/CloudFileFragment;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 37
    :goto_24
    new-instance v2, Landroid/os/Bundle;

    .line 39
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v3, "current_directory"

    .line 44
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "current_cloudinfo_id"

    .line 53
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v3, -0x1

    .line 61
    const-string v4, "device_index"

    .line 63
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 66
    move-result p1

    .line 67
    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 72
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    new-instance v2, Landroidx/fragment/app/a;

    .line 84
    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 89
    if-eqz p1, :cond_60

    .line 91
    if-eqz v0, :cond_60

    .line 93
    invoke-virtual {v2, p1}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 96
    goto :goto_67

    .line 97
    :cond_60
    const v0, 0x7f0a0101

    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-virtual {v2, v0, p1, v1, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 104
    :goto_67
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    .line 107
    return-void
.end method

.method private switchFileViewFragment(Z)V
    .registers 7

    const-string v0, "FileOperationContentFragment"

    const-string v1, "switchFileViewFragment"

    .line 1
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ExportFileFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    instance-of v2, v0, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    if-eqz v2, :cond_1d

    .line 4
    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_24

    .line 5
    :cond_1d
    new-instance v2, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/ExportFileFragment;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    :goto_24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 7
    invoke-static {v2, v2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v3, :cond_36

    if-eqz v0, :cond_36

    .line 9
    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_3d

    :cond_36
    const v0, 0x7f0a0101

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v0, v3, v1, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 11
    :goto_3d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v0, :cond_44

    .line 12
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_44
    if-nez p1, :cond_49

    .line 13
    invoke-virtual {v2, v1}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 14
    :cond_49
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchFileViewFragment(ZZ)V
    .registers 7

    const-string p2, "FileOperationContentFragment"

    const-string v0, "switchFileViewFragment"

    .line 18
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "PickerCloudFileFragment"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 20
    instance-of v1, p2, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    if-eqz v1, :cond_1d

    .line 21
    move-object v1, p2

    check-cast v1, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_24

    .line 22
    :cond_1d
    new-instance v1, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    invoke-direct {v1}, Lcom/android/cloud/fragment/PickerCloudFileFragment;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 23
    :goto_24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 24
    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v2, :cond_36

    if-eqz p2, :cond_36

    .line 26
    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_3d

    :cond_36
    const p2, 0x7f0a0101

    const/4 v3, 0x1

    .line 27
    invoke-virtual {v1, p2, v2, v0, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 28
    :goto_3d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz p2, :cond_44

    .line 29
    invoke-virtual {v1, p2}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_44
    if-nez p1, :cond_49

    .line 30
    invoke-virtual {v1, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 31
    :cond_49
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchStorageVolumeFragment(ZZZZ)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StorageVolumesFragment"

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    instance-of v2, v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 15
    if-eqz v2, :cond_16

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 20
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    new-instance v2, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 25
    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 30
    :goto_1d
    new-instance v2, Landroid/os/Bundle;

    .line 32
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v3, "show_router"

    .line 37
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    const-string p1, "show_extended"

    .line 42
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    const-string p1, "show_mtp"

    .line 47
    invoke-virtual {v2, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const/4 p1, 0x1

    .line 51
    if-eqz p4, :cond_3c

    .line 53
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3c

    .line 59
    move p2, p1

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 p2, 0x0

    .line 62
    :goto_3d
    const-string p3, "show_midrive"

    .line 64
    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 69
    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance p3, Landroidx/fragment/app/a;

    .line 86
    invoke-direct {p3, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 89
    if-eqz v0, :cond_62

    .line 91
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 93
    if-eqz p2, :cond_62

    .line 95
    invoke-virtual {p3, p2}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 98
    goto :goto_6a

    .line 99
    :cond_62
    const p2, 0x7f0a0101

    .line 102
    iget-object p4, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 104
    invoke-virtual {p3, p2, p4, v1, p1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 107
    :goto_6a
    invoke-virtual {p3}, Landroidx/fragment/app/a;->d()I

    .line 110
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

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->restoreIntent()V

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActionModeChange(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1f

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->interceptBackPress()Z

    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f120121

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_21

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0x72

    .line 30
    invoke-static {p1, v0, v1}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onCreateImpl(Landroid/os/Bundle;)V

    .line 37
    :goto_24
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;->setOnFragmentInteractionListener(Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;)V

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->restoreIntent()V

    .line 15
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FileOperationContentFragment"

    .line 6
    if-nez v0, :cond_d

    .line 8
    const-string p1, "onKeyShortcut mCurrentFragment is null, return."

    .line 10
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1f

    .line 26
    const-string p1, "onKeyShortcut is not ViewMode, return."

    .line 28
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1

    .line 32
    :cond_1f
    const/16 v0, 0x1000

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_5a

    .line 40
    const/16 p2, 0x1d

    .line 42
    if-eq p1, p2, :cond_4d

    .line 44
    const/16 p2, 0x1f

    .line 46
    if-eq p1, p2, :cond_41

    .line 48
    const/16 p2, 0x32

    .line 50
    if-eq p1, p2, :cond_34

    .line 52
    goto :goto_5a

    .line 53
    :cond_34
    const-string p1, "onKeyShortcut Ctrl+V"

    .line 55
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 60
    const/4 p2, 0x2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_41
    const-string p1, "onKeyShortcut Ctrl+C"

    .line 68
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    :cond_4d
    const-string p1, "onKeyShortcut Ctrl+A"

    .line 80
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 85
    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 89
    move-result p1

    .line 90
    return p1

    .line 91
    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    const/16 v0, 0x72

    .line 3
    if-ne p1, v0, :cond_26

    .line 5
    array-length p1, p2

    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, v0, :cond_26

    .line 9
    array-length p1, p3

    .line 10
    if-ge p1, v0, :cond_c

    .line 12
    goto :goto_26

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    aget-object p3, p2, p1

    .line 16
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p3

    .line 22
    if-nez p3, :cond_21

    .line 24
    aget-object p1, p2, p1

    .line 26
    const-string p2, "android.permission.READ_MEDIA_IMAGES"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_26

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onCreateImpl(Landroid/os/Bundle;)V

    .line 38
    nop

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->handleIntent(Landroid/os/Bundle;)V

    .line 8
    return-void
.end method

.method public onVolumeBack()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->onBack()Z

    .line 4
    return-void
.end method

.method public onVolumeClick(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_51

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "com.android.mtp.documents"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "device_index"

    .line 24
    if-eqz v1, :cond_1f

    .line 26
    const/16 p1, 0xc

    .line 28
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    goto :goto_3f

    .line 32
    :cond_1f
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v4, "//"

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_30

    .line 44
    const/4 p1, 0x6

    .line 45
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    goto :goto_3f

    .line 49
    :cond_30
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_43

    .line 55
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string v1, "current_directory"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :goto_3f
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(Z)V

    .line 67
    goto :goto_51

    .line 68
    :cond_43
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4d

    .line 74
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->login()V

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    const/4 p1, 0x1

    .line 79
    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/fragment/FileOperationContentFragment;->switchFileViewFragment(ZZ)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method
