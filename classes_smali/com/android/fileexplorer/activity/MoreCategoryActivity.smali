.class public Lcom/android/fileexplorer/activity/MoreCategoryActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "MoreCategoryActivity.java"


# instance fields
.field private mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method

.method private showFragment()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->newInstance()Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 17
    const v2, 0x7f0a0101

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f0d0028

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->showFragment()V

    .line 13
    return-void
.end method
