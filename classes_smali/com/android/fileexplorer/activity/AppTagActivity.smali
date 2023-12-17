.class public Lcom/android/fileexplorer/activity/AppTagActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "AppTagActivity.java"


# static fields
.field public static final EXTRA_APP_TAG:Ljava/lang/String; = "app_tag"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_FROM_SEARCH:Ljava/lang/String; = "search"

.field public static final EXTRA_GROUP_PATH:Ljava/lang/String; = "group_path"

.field public static final EXTRA_PAGE:Ljava/lang/String; = "page"

.field public static final EXTRA_PATHS:Ljava/lang/String; = "paths"

.field public static final PAGE_APP_TAG:I

.field public static final PAGE_APP_TAG_LIST:I

.field public static final PAGE_GROUP_PATH:I

.field public static final PAGE_RECENT:I


# instance fields
.field private mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

.field private mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mExtraFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:Ljava/lang/String;

.field private mGroupPath:Ljava/lang/String;

.field private mPage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/AppTagActivity;->PAGE_APP_TAG:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/AppTagActivity;->PAGE_APP_TAG_LIST:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/AppTagActivity;->PAGE_GROUP_PATH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/AppTagActivity;->PAGE_RECENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-object p0
.end method

.method private addFragment()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_21

    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "com.android.providers.downloads.ui"

    const-string v5, "zh_cn=下载&zh_tw=下載&=Downloads"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    iput v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    :cond_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    const-string v3, "page"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const-string v3, "app_tag"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    const-string v3, "group_path"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    const-string v3, "paths"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    if-eq v2, v1, :cond_59

    const/4 v1, 0x4

    if-ne v2, v1, :cond_51

    goto :goto_59

    :cond_51
    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_60

    :cond_59
    :goto_59
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_60
    iget-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f0a0101

    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    return-void
.end method

.method private initEmptyTrigger()V
    .registers 3

    const v0, 0x7f032f69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    new-instance v1, Lcom/android/fileexplorer/activity/AppTagActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/AppTagActivity$1;-><init>(Lcom/android/fileexplorer/activity/AppTagActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    return-void
.end method

.method public static startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/AppTagActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "page"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "app_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":miui:starting_window_label"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startGroupPathActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/AppTagActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "page"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "group_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":miui:starting_window_label"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

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
    .registers 8

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "paths"

    const-string v1, "group_path"

    const-string v2, "from"

    const-string v3, "app_tag"

    const/4 v4, 0x1

    const-string v5, "page"

    if-eqz p1, :cond_31

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object v3, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    goto :goto_72

    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->flattenIntentData(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    :cond_72
    :goto_72
    const/4 p1, 0x2

    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    if-ne p1, v0, :cond_7f

    iget-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-nez p1, :cond_7f

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_7f
    const p1, 0x7f042dbe

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->initEmptyTrigger()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->addFragment()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_33

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->flattenIntentData(Landroid/content/Intent;)V

    const/4 v0, 0x1

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    const-string v0, "app_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    const-string v0, "group_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    const-string v0, "paths"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    :cond_33
    const/4 p1, 0x2

    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    if-ne p1, v0, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-nez p1, :cond_40

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_40
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->addFragment()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const-string v1, "app_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    const-string v1, "group_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    const-string v1, "paths"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
