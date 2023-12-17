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

.field public static final PAGE_APP_TAG:I = 0x2

.field public static final PAGE_APP_TAG_LIST:I = 0x6

.field public static final PAGE_GROUP_PATH:I = 0x4

.field public static final PAGE_RECENT:I = 0x1


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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    return-object p0
.end method

.method private addFragment()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 3
    const-string v1, "search"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_21

    .line 12
    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 14
    const-wide/16 v2, 0x0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v4, "com.android.providers.downloads.ui"

    .line 24
    const-string v5, "zh_cn=下载&zh_tw=下載&=Downloads"

    .line 26
    move-object v2, v0

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 32
    iput v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 34
    :cond_21
    new-instance v0, Landroid/os/Bundle;

    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    iget v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 41
    const-string v3, "page"

    .line 43
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 48
    const-string v3, "app_tag"

    .line 50
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 55
    const-string v3, "from"

    .line 57
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    .line 62
    const-string v3, "group_path"

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    .line 69
    const-string v3, "paths"

    .line 71
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    iget v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 76
    if-eq v2, v1, :cond_59

    .line 78
    const/4 v1, 0x4

    .line 79
    if-ne v2, v1, :cond_51

    .line 81
    goto :goto_59

    .line 82
    :cond_51
    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    .line 84
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    :goto_59
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 92
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 97
    :goto_60
    iget-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 99
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v1, Landroidx/fragment/app/a;

    .line 111
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 114
    const v0, 0x7f0a0101

    .line 117
    iget-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 126
    return-void
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
    new-instance v1, Lcom/android/fileexplorer/activity/AppTagActivity$1;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/AppTagActivity$1;-><init>(Lcom/android/fileexplorer/activity/AppTagActivity;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 18
    return-void
.end method

.method public static startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "page"

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    const-string v1, "app_tag"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    const-string v1, "from"

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string p2, ":miui:starting_window_label"

    .line 34
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static startGroupPathActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "page"

    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    const-string v1, "group_path"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "from"

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, ":miui:starting_window_label"

    .line 30
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTagFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

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
    .registers 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "paths"

    .line 6
    const-string v1, "group_path"

    .line 8
    const-string v2, "from"

    .line 10
    const-string v3, "app_tag"

    .line 12
    const/4 v4, 0x1

    .line 13
    const-string v5, "page"

    .line 15
    if-eqz p1, :cond_31

    .line 17
    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 20
    move-result v4

    .line 21
    iput v4, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 23
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 29
    iput-object v3, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    .line 49
    goto :goto_72

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_72

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->flattenIntentData(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 83
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    .line 115
    :cond_72
    :goto_72
    const/4 p1, 0x2

    .line 116
    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 118
    if-ne p1, v0, :cond_7f

    .line 120
    iget-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 122
    if-nez p1, :cond_7f

    .line 124
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 127
    return-void

    .line 128
    :cond_7f
    const p1, 0x7f0d0028

    .line 131
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->initEmptyTrigger()V

    .line 137
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->addFragment()V

    .line 140
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    if-eqz p1, :cond_33

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->flattenIntentData(Landroid/content/Intent;)V

    .line 9
    const/4 v0, 0x1

    .line 10
    const-string v1, "page"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 18
    const-string v0, "app_tag"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 28
    const-string v0, "from"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 36
    const-string v0, "group_path"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    .line 44
    const-string v0, "paths"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    .line 52
    :cond_33
    const/4 p1, 0x2

    .line 53
    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 55
    if-ne p1, v0, :cond_40

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 59
    if-nez p1, :cond_40

    .line 61
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 64
    return-void

    .line 65
    :cond_40
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/AppTagActivity;->addFragment()V

    .line 68
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mPage:I

    .line 6
    const-string v1, "page"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 13
    const-string v1, "app_tag"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mFrom:Ljava/lang/String;

    .line 20
    const-string v1, "from"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mGroupPath:Ljava/lang/String;

    .line 27
    const-string v1, "group_path"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity;->mExtraFilePath:Ljava/util/ArrayList;

    .line 34
    const-string v1, "paths"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    return-void
.end method
