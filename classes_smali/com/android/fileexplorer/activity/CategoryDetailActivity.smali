.class public Lcom/android/fileexplorer/activity/CategoryDetailActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "CategoryDetailActivity.java"


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

.method private resolveIntent(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "extra_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_d9

    packed-switch v0, :pswitch_data_e0

    :pswitch_c  #0x7, 0x8
    return-void

    :pswitch_d  #0xa
    const v2, 0x7f11006a

    new-instance v3, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_18  #0x9
    new-instance v2, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    move v2, v1

    goto :goto_6c

    :pswitch_21  #0x6
    const v2, 0x7f110453

    new-instance v3, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_2c  #0x5
    const v2, 0x7f110063

    new-instance v3, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_37  #0x4
    const v2, 0x7f11007f

    new-instance v3, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_42  #0x3
    const v2, 0x7f110066

    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_4c  #0x2
    const v2, 0x7f110070

    new-instance v3, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_57  #0x1
    const v2, 0x7f11007d

    new-instance v3, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_6c

    :pswitch_62  #0x0
    const v2, 0x7f110073

    new-instance v3, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;-><init>()V

    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_6c
    const-string v3, "extra_bundle"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_89
    if-eqz p1, :cond_90

    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_90
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_a3

    if-eq v2, v1, :cond_a3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a3
    iget-object p1, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_bb

    iget-object p1, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    goto :goto_bc

    :cond_bb
    move-object p1, v1

    :goto_bc
    iget-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-static {p0, v2, p1, v0}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p1, 0x7f0a0101

    iget-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, p1, v2, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void

    :cond_d9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_57  #00000001
        :pswitch_4c  #00000002
        :pswitch_42  #00000003
        :pswitch_37  #00000004
        :pswitch_2c  #00000005
        :pswitch_21  #00000006
        :pswitch_c  #00000007
        :pswitch_c  #00000008
        :pswitch_18  #00000009
        :pswitch_d  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f042dbe

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->resolveIntent(Landroid/content/Intent;)V

    return-void
.end method
