.class public Lcom/android/fileexplorer/activity/MoreCategoryActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "MoreCategoryActivity.java"


# instance fields
.field private mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;


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

.method private showFragment()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->newInstance()Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    const v2, 0x7f0a0101

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f042dbe

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/MoreCategoryActivity;->showFragment()V

    return-void
.end method
