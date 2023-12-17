.class public Lcom/android/fileexplorer/activity/CategoryDetailActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "CategoryDetailActivity.java"


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

.method private resolveIntent(Landroid/content/Intent;)V
    .registers 7

    .line 1
    const-string v0, "extra_type"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    if-eq v0, v1, :cond_d9

    .line 10
    packed-switch v0, :pswitch_data_e0

    .line 13
    :pswitch_c  #0x7, 0x8
    return-void

    .line 14
    :pswitch_d  #0xa
    const v2, 0x7f11006a

    .line 17
    new-instance v3, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    .line 19
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    .line 22
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 24
    goto :goto_6c

    .line 25
    :pswitch_18  #0x9
    new-instance v2, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 27
    invoke-direct {v2}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 32
    move v2, v1

    .line 33
    goto :goto_6c

    .line 34
    :pswitch_21  #0x6
    const v2, 0x7f110453

    .line 37
    new-instance v3, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;

    .line 39
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;-><init>()V

    .line 42
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 44
    goto :goto_6c

    .line 45
    :pswitch_2c  #0x5
    const v2, 0x7f110063

    .line 48
    new-instance v3, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    .line 50
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;-><init>()V

    .line 53
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 55
    goto :goto_6c

    .line 56
    :pswitch_37  #0x4
    const v2, 0x7f11007f

    .line 59
    new-instance v3, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    .line 61
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;-><init>()V

    .line 64
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 66
    goto :goto_6c

    .line 67
    :pswitch_42  #0x3
    const v2, 0x7f110066

    .line 70
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 76
    goto :goto_6c

    .line 77
    :pswitch_4c  #0x2
    const v2, 0x7f110070

    .line 80
    new-instance v3, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    .line 82
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;-><init>()V

    .line 85
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 87
    goto :goto_6c

    .line 88
    :pswitch_57  #0x1
    const v2, 0x7f11007d

    .line 91
    new-instance v3, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    .line 93
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;-><init>()V

    .line 96
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 98
    goto :goto_6c

    .line 99
    :pswitch_62  #0x0
    const v2, 0x7f110073

    .line 102
    new-instance v3, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    .line 104
    invoke-direct {v3}, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;-><init>()V

    .line 107
    iput-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 109
    :goto_6c
    const-string v3, "extra_bundle"

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 114
    move-result-object p1

    .line 115
    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 117
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_89

    .line 123
    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 125
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 128
    move-result-object v3

    .line 129
    const-string v4, "category"

    .line 131
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 138
    :cond_89
    if-eqz p1, :cond_90

    .line 140
    iget-object v3, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 142
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 145
    :cond_90
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_a3

    .line 151
    if-eq v2, v1, :cond_a3

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :cond_a3
    iget-object p1, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 166
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 169
    move-result-object p1

    .line 170
    const/4 v1, 0x0

    .line 171
    if-eqz p1, :cond_bb

    .line 173
    iget-object p1, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 175
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 186
    move-result-object p1

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move-object p1, v1

    .line 189
    :goto_bc
    iget-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 191
    invoke-static {p0, v2, p1, v0}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    new-instance v0, Landroidx/fragment/app/a;

    .line 203
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 206
    const p1, 0x7f0a0101

    .line 209
    iget-object v2, p0, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 211
    invoke-virtual {v0, p1, v2, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 217
    return-void

    .line 218
    :cond_d9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 220
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 223
    throw p1

    .line 224
    nop

    .line 225
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

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f0d0028

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/CategoryDetailActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
