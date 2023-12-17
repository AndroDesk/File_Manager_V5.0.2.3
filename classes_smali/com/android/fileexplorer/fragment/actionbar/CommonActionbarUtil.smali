.class public Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;
.super Ljava/lang/Object;
.source "CommonActionbarUtil.java"


# static fields
.field private static final ACTION_TYPE_APP_CATEGORY:I

.field private static final ACTION_TYPE_FILE:I

.field private static final ACTION_TYPE_PRIVACY_FILE:I

.field private static final ACTION_TYPE_SYSTEM_CATEGORY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->ACTION_TYPE_APP_CATEGORY:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->ACTION_TYPE_FILE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->ACTION_TYPE_PRIVACY_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->lambda$initCategoryActionBar$0(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->lambda$initCategoryActionBar$1(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->lambda$initCategoryActionBar$2(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p0, :cond_11

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x2

    goto :goto_28

    :cond_11
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-nez p1, :cond_21

    instance-of p1, p0, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    if-eqz p1, :cond_20

    move-object p1, p0

    check-cast p1, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    move v3, v0

    goto :goto_28

    :cond_20
    return-void

    :cond_21
    const/16 v3, 0x9

    if-ne p3, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    if-nez v2, :cond_2b

    return-void

    :cond_2b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v4, 0x7f042db9

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v4, 0x7f032de2

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_58

    invoke-static {v3, v4}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    move-result v5

    if-nez v5, :cond_58

    new-instance v5, Lb2/a;

    invoke-direct {v5, p3, v1, p1}, Lb2/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_58
    const p3, 0x7f032dc1

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_75

    invoke-static {v3, p3}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    move-result v4

    if-nez v4, :cond_75

    new-instance v4, Lcom/android/cloud/fragment/e;

    invoke-direct {v4, p1, v0}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_75
    const p3, 0x7f032df4

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v3, p3}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    move-result v1

    if-nez v1, :cond_ab

    if-eqz p2, :cond_a6

    const p2, 0x7f1101cb

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p2, 0x7f0802aa

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p2, Lcom/android/fileexplorer/adapter/a;

    invoke-direct {p2, v0, p1, p3}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ab

    :cond_a6
    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_ab
    :goto_ab
    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public static initFileFragmentActionBar(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$0(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;ILandroid/view/View;)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onSearch(I)V

    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$1(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/view/View;)V
    .registers 2

    invoke-interface {p0}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onNewFolder()V

    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$2(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onViewTypeChange(Landroid/widget/ImageView;)V

    return-void
.end method

.method private static needHideView(ILandroid/widget/ImageView;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0057

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz p0, :cond_31

    if-eq p0, v3, :cond_26

    const/4 v4, 0x2

    const v5, 0x7f0a0074

    if-eq p0, v4, :cond_20

    const/4 v4, 0x3

    if-eq p0, v4, :cond_18

    goto :goto_37

    :cond_18
    if-eq v0, v5, :cond_1c

    if-ne v0, v1, :cond_37

    :cond_1c
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return v3

    :cond_20
    if-ne v0, v5, :cond_37

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return v3

    :cond_26
    if-eq v0, v1, :cond_2d

    const p0, 0x7f0a0062

    if-ne v0, p0, :cond_37

    :cond_2d
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return v3

    :cond_31
    if-ne v0, v1, :cond_37

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return v3

    :cond_37
    :goto_37
    const/4 p0, 0x0

    return p0
.end method
