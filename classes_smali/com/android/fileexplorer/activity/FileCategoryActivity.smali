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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/FileCategoryActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-object p0
.end method

.method private initEmptyTrigger()V
    .registers 3

    const v0, 0x7f032f69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    new-instance v1, Lcom/android/fileexplorer/activity/FileCategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity$1;-><init>(Lcom/android/fileexplorer/activity/FileCategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    return-void
.end method

.method private onCreateImpl()V
    .registers 5

    const v0, 0x7f042dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->initEmptyTrigger()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file_category"

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.fileexplorer.activity.PickImageActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    goto :goto_8e

    :cond_44
    const-string v2, "com.android.fileexplorer.activity.PickAudioActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "audio/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    goto :goto_8e

    :cond_5d
    const-string v2, "com.android.fileexplorer.activity.PickVideoActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    goto :goto_8e

    :cond_76
    const-string v2, "com.android.fileexplorer.activity.PickPdfActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "pdf/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    :cond_8e
    :goto_8e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miui.intent.action.PICK_INSTALLED_APPS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "miui.intent.action.PICK_MULTIPLE_NO_FOLDER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, v0, :cond_cd

    new-instance v0, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_e0

    :cond_cd
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-static {}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->newInstance()Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_e0

    :cond_da
    invoke-static {}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->newInstance()Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_e0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f0a0101

    iget-object v2, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method


# virtual methods
.method public handleGesturePromptLineIfNeed()V
    .registers 1

    return-void
.end method

.method public onActionModeChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActionModeChange(Z)V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/FileCategoryActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->onCreateImpl()V

    :goto_16
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    const/16 v0, 0x72

    if-ne p1, v0, :cond_2d

    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2d

    array-length p1, p3

    if-ge p1, v0, :cond_c

    goto :goto_2d

    :cond_c
    const/4 p1, 0x0

    aget-object v0, p2, p1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    aget-object p2, p2, p1

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    :cond_21
    aget p1, p3, p1

    if-nez p1, :cond_29

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/FileCategoryActivity;->onCreateImpl()V

    goto :goto_2d

    :cond_29
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    nop

    :cond_2d
    :goto_2d
    return-void
.end method
