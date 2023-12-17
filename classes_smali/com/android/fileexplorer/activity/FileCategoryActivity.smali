.class public Lcom/android/fileexplorer/activity/FileCategoryActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "FileCategoryActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;


# static fields
.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "file_category"

.field private static final PICK_AUDIO_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.PickAudioActivity"

.field private static final PICK_IMAGE_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.PickImageActivity"

.field private static final PICK_PDF_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.PickPdfActivity"

.field private static final PICK_VIDEO_CLASS_NAME:Ljava/lang/String; = "com.android.fileexplorer.activity.PickVideoActivity"


# instance fields
.field private mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/FileCategoryActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    return-object p0
.end method

.method private initEmptyTrigger()V
    .registers 3

    .line 1
    const v0, 0x7f0a02ff

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    .line 10
    new-instance v1, Lcom/android/fileexplorer/activity/FileCategoryActivity$1;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity$1;-><init>(Lcom/android/fileexplorer/activity/FileCategoryActivity;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 18
    return-void
.end method

.method private onCreateImpl()V
    .registers 5

    .line 1
    const v0, 0x7f0d0028

    .line 4
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->initEmptyTrigger()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "file_category"

    .line 16
    if-eqz v0, :cond_b0

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_b0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v2, "com.android.fileexplorer.activity.PickImageActivity"

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_40

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    move-result-object v0

    .line 52
    const-string v2, "image/*"

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 64
    goto :goto_8a

    .line 65
    :cond_40
    const-string v2, "com.android.fileexplorer.activity.PickAudioActivity"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_59

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    move-result-object v0

    .line 77
    const-string v2, "audio/*"

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 89
    goto :goto_8a

    .line 90
    :cond_59
    const-string v2, "com.android.fileexplorer.activity.PickVideoActivity"

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_72

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 101
    move-result-object v0

    .line 102
    const-string v2, "video/*"

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 114
    goto :goto_8a

    .line 115
    :cond_72
    const-string v2, "com.android.fileexplorer.activity.PickPdfActivity"

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_8a

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 126
    move-result-object v0

    .line 127
    const-string v2, "pdf/*"

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 139
    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    const-string v2, "miui.intent.action.PICK_INSTALLED_APPS"

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_b0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 158
    move-result-object v0

    .line 159
    const-string v2, "miui.intent.action.PICK_MULTIPLE_NO_FOLDER"

    .line 161
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 167
    move-result-object v0

    .line 168
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 170
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_b0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 180
    move-result-object v0

    .line 181
    const/4 v2, -0x1

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 185
    move-result v0

    .line 186
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 188
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 191
    move-result v3

    .line 192
    if-ne v3, v0, :cond_c9

    .line 194
    new-instance v0, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    .line 196
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 201
    goto :goto_dc

    .line 202
    :cond_c9
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_d6

    .line 208
    invoke-static {}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->newInstance()Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 211
    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 214
    goto :goto_dc

    .line 215
    :cond_d6
    invoke-static {}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->newInstance()Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 218
    move-result-object v0

    .line 219
    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 221
    :goto_dc
    new-instance v0, Landroid/os/Bundle;

    .line 223
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 233
    move-result v2

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 239
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    new-instance v1, Landroidx/fragment/app/a;

    .line 251
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 254
    const v0, 0x7f0a0101

    .line 257
    iget-object v2, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 259
    const/4 v3, 0x0

    .line 260
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 266
    return-void
.end method


# virtual methods
.method public handleGesturePromptLineIfNeed()V
    .registers 1

    return-void
.end method

.method public onActionModeChange(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_13

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    const/16 v0, 0x72

    .line 16
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->onCreateImpl()V

    .line 23
    :goto_16
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 1
    const/16 v0, 0x72

    .line 3
    if-ne p1, v0, :cond_2d

    .line 5
    array-length p1, p2

    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, v0, :cond_2d

    .line 9
    array-length p1, p3

    .line 10
    if-ge p1, v0, :cond_c

    .line 12
    goto :goto_2d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    aget-object v0, p2, p1

    .line 16
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_21

    .line 24
    aget-object p2, p2, p1

    .line 26
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_2d

    .line 34
    :cond_21
    aget p1, p3, p1

    .line 36
    if-nez p1, :cond_29

    .line 38
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->onCreateImpl()V

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 45
    nop

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method
