.class public Lcom/android/fileexplorer/activity/FileActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "FileActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/StorageVolumesFragment$OnFragmentInteractionListener;
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;
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

.field private static final TAG:Ljava/lang/String; = "FileActivity"


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
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/FileActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/FileActivity;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/FileActivity;Landroid/content/Intent;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/FileActivity;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/activity/FileActivity;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

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
    const-string v1, "FileActivity"

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
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/activity/FileActivity;->initMoveIntent(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/activity/FileActivity;->initExtractIntent(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_84

    .line 7
    if-nez p1, :cond_a

    .line 9
    goto/16 :goto_84

    .line 11
    :cond_a
    const/4 v0, -0x1

    .line 12
    const-string v1, "device_index"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    const-string v2, "deviceIndex = "

    .line 20
    const-string v3, "FileActivity"

    .line 22
    invoke-static {v2, v0, v3}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v0, v2, :cond_81

    .line 29
    const/16 v5, 0xc

    .line 31
    if-eq v0, v5, :cond_81

    .line 33
    const/4 v5, 0x6

    .line 34
    if-eq v0, v5, :cond_81

    .line 36
    const/4 v5, 0x7

    .line 37
    if-eq v0, v5, :cond_81

    .line 39
    const-string v0, "pick_mi_drive"

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 45
    move-result v0

    .line 46
    const-string v6, "pick_router"

    .line 48
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 51
    move-result v6

    .line 52
    const-string v7, "pick_mtp"

    .line 54
    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 57
    move-result v7

    .line 58
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->showExtendedStorage(Landroid/content/Intent;)Z

    .line 61
    move-result v8

    .line 62
    const-string v9, "copyOrMove"

    .line 64
    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_4f

    .line 70
    if-eqz p2, :cond_48

    .line 72
    goto :goto_4f

    .line 73
    :cond_48
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(Z)V

    .line 79
    goto :goto_84

    .line 80
    :cond_4f
    :goto_4f
    const-string p1, "switchStorageVolumeFragment"

    .line 82
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz v9, :cond_7d

    .line 87
    if-eqz v0, :cond_66

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosOnlyCloud()Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_66

    .line 99
    invoke-direct {p0, v4, v4}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(ZZ)V

    .line 102
    goto :goto_84

    .line 103
    :cond_66
    if-eqz v0, :cond_76

    .line 105
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isPasteFileInfosContainsDir()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_76

    .line 115
    invoke-direct {p0, v6, v8, v7, v4}, Lcom/android/fileexplorer/activity/FileActivity;->switchStorageVolumeFragment(ZZZZ)V

    .line 118
    goto :goto_84

    .line 119
    :cond_76
    invoke-direct {p0, v6, v8, v7, v5}, Lcom/android/fileexplorer/activity/FileActivity;->switchStorageVolumeFragment(ZZZZ)V

    .line 122
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(Z)V

    .line 125
    goto :goto_84

    .line 126
    :cond_7d
    invoke-direct {p0, v6, v8, v7, v0}, Lcom/android/fileexplorer/activity/FileActivity;->switchStorageVolumeFragment(ZZZZ)V

    .line 129
    goto :goto_84

    .line 130
    :cond_81
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(Z)V

    .line 133
    :cond_84
    :goto_84
    return-void
.end method

.method private handleIntent(Landroid/os/Bundle;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, -0x1

    .line 9
    const-string v2, "device_index"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    move-result v1

    .line 15
    const/16 v2, 0xd

    .line 17
    if-ne v1, v2, :cond_27

    .line 19
    if-nez p1, :cond_18

    .line 21
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/FileActivity;->switchCloudFragment(Landroid/content/Intent;)V

    .line 24
    goto :goto_26

    .line 25
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "CloudFileFragment"

    .line 31
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 37
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 39
    :goto_26
    return-void

    .line 40
    :cond_27
    const-string v1, "inner_call"

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_33

    .line 49
    const-string v1, "inner"

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    const-string v1, "outer"

    .line 54
    :goto_35
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 69
    move-result-object v6

    .line 70
    const-string v7, "FileActivity"

    .line 72
    const-string v8, "handleIntent"

    .line 74
    invoke-static {v7, v8}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v8, "content"

    .line 79
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 83
    const-string v8, "android.intent.action.VIEW"

    .line 85
    if-eqz v3, :cond_89

    .line 87
    if-nez v4, :cond_5c

    .line 89
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/activity/FileActivity;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 92
    return-void

    .line 93
    :cond_5c
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v9, "authority = "

    .line 104
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    invoke-static {v7, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_f9

    .line 123
    new-instance p1, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;

    .line 125
    invoke-direct {p1, v4, v0, v1, p0}, Lcom/android/fileexplorer/activity/FileActivity$HandleIntentTask;-><init>(Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;Lcom/android/fileexplorer/activity/FileActivity;)V

    .line 128
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 131
    move-result-object v0

    .line 132
    new-array v1, v2, [Ljava/lang/Void;

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void

    .line 138
    :cond_89
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_f6

    .line 144
    const/4 v2, 0x0

    .line 145
    if-eqz v4, :cond_96

    .line 147
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v4, "handleIntent normal path = "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    invoke-static {v7, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_d7

    .line 177
    const-string v3, "explorer_path"

    .line 179
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_cb

    .line 185
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    const-string v3, "/MiShare"

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_d7

    .line 197
    const/4 v3, 0x1

    .line 198
    const-string v4, "from_mi_share"

    .line 200
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    goto :goto_d7

    .line 204
    :cond_cb
    const-string v3, "current_directory"

    .line 206
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_d7

    .line 212
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v2

    .line 216
    :cond_d7
    :goto_d7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    move-result v3

    .line 220
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_f4

    .line 226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    move-result v4

    .line 230
    if-nez v4, :cond_f4

    .line 232
    invoke-static {v2}, La/a;->A(Ljava/lang/String;)Z

    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_f4

    .line 238
    if-eqz v6, :cond_f4

    .line 240
    invoke-direct {p0, v0, v2, v1}, Lcom/android/fileexplorer/activity/FileActivity;->checkMoveOrExtractIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    move-result v2

    .line 244
    goto :goto_f9

    .line 245
    :cond_f4
    move v2, v3

    .line 246
    goto :goto_f9

    .line 247
    :cond_f6
    invoke-static {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 250
    :cond_f9
    :goto_f9
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_11d

    .line 256
    if-nez p1, :cond_105

    .line 258
    invoke-direct {p0, v0, v2}, Lcom/android/fileexplorer/activity/FileActivity;->handleDeviceIndex(Landroid/content/Intent;Z)V

    .line 261
    goto :goto_11d

    .line 262
    :cond_105
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 265
    move-result-object p1

    .line 266
    const-string v0, "ExportFileFragment"

    .line 268
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_11d

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 284
    iput-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 286
    :cond_11d
    :goto_11d
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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    const-string p2, "miui.intent.action.PICK_FOLDER"

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, "pick_mi_drive"

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    move-result-object p1

    .line 38
    const-string p2, "pick_mtp"

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    move-result-object p1

    .line 47
    const-string p2, "pick_router"

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
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
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    const-string p2, "miui.intent.action.PICK_FOLDER"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, "pick_mi_drive"

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    move-result-object p1

    .line 72
    const-string p2, "pick_mtp"

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    move-result-object p1

    .line 81
    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method private isMtpOnOreo()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_35

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_35

    .line 14
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_35

    .line 21
    :cond_14
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/FileActivity;->isUnHandleData(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_35

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_35

    .line 45
    const-string v2, "android.intent.action.VIEW"

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_35
    :goto_35
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
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "FileActivity"

    .line 18
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 23
    if-nez v0, :cond_1f

    .line 25
    new-instance v0, Lcom/android/fileexplorer/activity/FileActivity$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/FileActivity$1;-><init>(Lcom/android/fileexplorer/activity/FileActivity;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

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
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 54
    move-result-object v1

    .line 55
    const/4 v4, 0x0

    .line 56
    iget-object v7, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 58
    const/4 v8, 0x0

    .line 59
    const-string v2, "com.xiaomi"

    .line 61
    const-string v3, "micloud"

    .line 63
    move-object v6, p0

    .line 64
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 67
    return-void
.end method

.method private needSelectStorageVolume(ZZZZ)Z
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p4, :cond_4

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object p3

    .line 9
    const/4 p4, 0x0

    .line 10
    if-eqz p3, :cond_1f

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 15
    move-result-object p3

    .line 16
    xor-int/2addr p2, p1

    .line 17
    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList(Z)Ljava/util/ArrayList;

    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1d

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p2

    .line 27
    if-le p2, p1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move p1, p4

    .line 31
    :goto_1e
    return p1

    .line 32
    :cond_1f
    return p4
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileActivity;->isMtpOnOreo()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_54

    .line 7
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_44

    .line 41
    const/16 v1, 0x1c

    .line 43
    const-string v2, "com.android.documentsui.files.FilesActivity"

    .line 45
    if-le v0, v1, :cond_36

    .line 47
    :try_start_2e
    new-instance v0, Landroid/content/ComponentName;

    .line 49
    const-string v1, "com.google.android.documentsui"

    .line 51
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    new-instance v0, Landroid/content/ComponentName;

    .line 57
    const-string v1, "com.android.documentsui"

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3d
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_43} :catch_44

    .line 68
    goto :goto_50

    .line 69
    :catch_44
    move-exception p1

    .line 70
    const-string v0, "onCreateImpl start DocumentsUI FileActivity error: e = "

    .line 72
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v0

    .line 76
    const-string v1, "FileActivity"

    .line 78
    invoke-static {p1, v0, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :goto_50
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 84
    goto :goto_5d

    .line 85
    :cond_54
    const v0, 0x7f0d0028

    .line 88
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->handleIntent(Landroid/os/Bundle;)V

    .line 94
    :goto_5d
    return-void
.end method

.method private showExtendedStorage(Landroid/content/Intent;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_44

    .line 4
    const-string v1, "inner_call"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_44

    .line 13
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_19

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_19

    .line 25
    goto :goto_44

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_44

    .line 43
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    if-eqz p1, :cond_44

    .line 47
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_30} :catch_34

    .line 49
    and-int/2addr p1, v0

    .line 50
    if-nez p1, :cond_44

    .line 52
    return v2

    .line 53
    :catch_34
    move-exception p1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_44
    :goto_44
    return v0
.end method

.method public static startPickPrivateActivityForResult(Landroid/app/Activity;I)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

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
    const-string v0, "FileActivity"

    .line 60
    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    :goto_3e
    return-void
.end method

.method private switchCloudFragment(Landroid/content/Intent;)V
    .registers 6

    .line 1
    const-string v0, "FileActivity"

    .line 3
    const-string v1, "switchCloudragment"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 10
    invoke-direct {v0}, Lcom/android/cloud/fragment/CloudFileFragment;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string v1, "current_directory"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "current_cloudinfo_id"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "device_index"

    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 50
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Landroidx/fragment/app/a;

    .line 62
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 65
    const p1, 0x7f0a0101

    .line 68
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 70
    const/4 v2, 0x1

    .line 71
    const-string v3, "CloudFileFragment"

    .line 73
    invoke-virtual {v0, p1, v1, v3, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 79
    return-void
.end method

.method private switchFileViewFragment(Z)V
    .registers 7

    const-string v0, "FileActivity"

    const-string v1, "switchFileViewFragment"

    .line 1
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/ExportFileFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const v2, 0x7f0a0101

    const-string v3, "ExportFileFragment"

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v0, v2, v1, v3, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v1, :cond_28

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_28
    if-nez p1, :cond_2d

    .line 9
    invoke-virtual {v0, v3}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 10
    :cond_2d
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchFileViewFragment(ZZ)V
    .registers 7

    const-string p2, "FileActivity"

    const-string v0, "switchFileViewFragment"

    .line 14
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    invoke-direct {p2}, Lcom/android/cloud/fragment/PickerCloudFileFragment;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 17
    invoke-static {p2, p2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p2

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PickerCloudFileFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_27

    .line 19
    invoke-virtual {p2, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_27
    const v0, 0x7f0a0101

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 v3, 0x1

    .line 21
    invoke-virtual {p2, v0, v2, v1, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    if-eqz v0, :cond_37

    .line 23
    invoke-virtual {p2, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_37
    if-nez p1, :cond_3c

    .line 24
    invoke-virtual {p2, v1}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 25
    :cond_3c
    invoke-virtual {p2}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private switchStorageVolumeFragment(ZZZZ)V
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/StorageVolumesFragment;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    const-string v1, "show_router"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    const-string p1, "show_extended"

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string p1, "show_mtp"

    .line 25
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    const/4 p1, 0x1

    .line 29
    if-eqz p4, :cond_26

    .line 31
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_26

    .line 37
    move p2, p1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 p2, 0x0

    .line 40
    :goto_27
    const-string p3, "show_midrive"

    .line 42
    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    iget-object p2, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 47
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance p3, Landroidx/fragment/app/a;

    .line 59
    invoke-direct {p3, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 62
    const p2, 0x7f0a0101

    .line 65
    iget-object p4, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 67
    const-string v0, "StorageVolumesFragment"

    .line 69
    invoke-virtual {p3, p2, p4, v0, p1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p3}, Landroidx/fragment/app/a;->d()I

    .line 75
    return-void
.end method


# virtual methods
.method public onActionModeChange(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActionModeChange(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 7
    if-eq v1, v0, :cond_1e

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1e

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/a;->r()V

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 33
    if-eqz v0, :cond_31

    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_31

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 43
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_31

    .line 49
    return-void

    .line 50
    :cond_31
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_60

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 58
    if-eqz v0, :cond_60

    .line 60
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_60

    .line 66
    const-string v0, "FileActivity"

    .line 68
    const-string v1, "onBackPressed: remove mStorageVolumesFragment"

    .line 70
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v1, Landroidx/fragment/app/a;

    .line 82
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 87
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 90
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 93
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 100
    :goto_63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    :cond_a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1d

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x72

    .line 26
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 33
    :goto_20
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mStorageVolumesFragment:Lcom/android/fileexplorer/fragment/StorageVolumesFragment;

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 18
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FileActivity"

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
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_19

    .line 20
    const-string p1, "onKeyShortcut is not ViewMode, return."

    .line 22
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v1

    .line 26
    :cond_19
    const/16 v0, 0x1000

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_54

    .line 34
    const/16 v0, 0x1d

    .line 36
    if-eq p1, v0, :cond_47

    .line 38
    const/16 v0, 0x1f

    .line 40
    if-eq p1, v0, :cond_3b

    .line 42
    const/16 v0, 0x32

    .line 44
    if-eq p1, v0, :cond_2e

    .line 46
    goto :goto_54

    .line 47
    :cond_2e
    const-string p1, "onKeyShortcut Ctrl+V"

    .line 49
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 54
    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3b
    const-string p1, "onKeyShortcut Ctrl+C"

    .line 62
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 67
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_47
    const-string p1, "onKeyShortcut Ctrl+A"

    .line 74
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/activity/FileActivity;->mFileViewFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_54
    :goto_54
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    .line 88
    move-result p1

    .line 89
    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    const-string v0, "onNewIntent: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "FileActivity"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->handleIntent(Landroid/os/Bundle;)V

    .line 33
    return-void
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
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 38
    nop

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public onVolumeBack()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 4
    return-void
.end method

.method public onVolumeClick(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4d

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "com.android.mtp.documents"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "device_index"

    .line 20
    if-eqz v1, :cond_1b

    .line 22
    const/16 p1, 0xc

    .line 24
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    goto :goto_3b

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v4, "//"

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2c

    .line 40
    const/4 p1, 0x6

    .line 41
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    goto :goto_3b

    .line 45
    :cond_2c
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3f

    .line 51
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    const-string v1, "current_directory"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :goto_3b
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(Z)V

    .line 63
    goto :goto_4d

    .line 64
    :cond_3f
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_49

    .line 70
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileActivity;->login()V

    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/activity/FileActivity;->switchFileViewFragment(ZZ)V

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method
