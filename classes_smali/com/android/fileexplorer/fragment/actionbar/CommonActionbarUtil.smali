.class public Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;
.super Ljava/lang/Object;
.source "CommonActionbarUtil.java"


# static fields
.field private static final ACTION_TYPE_APP_CATEGORY:I = 0x1

.field private static final ACTION_TYPE_FILE:I = 0x2

.field private static final ACTION_TYPE_PRIVACY_FILE:I = 0x3

.field private static final ACTION_TYPE_SYSTEM_CATEGORY:I


# direct methods
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

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_11

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x2

    .line 17
    goto :goto_28

    .line 18
    :cond_11
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 21
    move-result-object v2

    .line 22
    if-nez p1, :cond_21

    .line 24
    instance-of p1, p0, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    .line 26
    if-eqz p1, :cond_20

    .line 28
    move-object p1, p0

    .line 29
    check-cast p1, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    .line 31
    move v3, v0

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    return-void

    .line 34
    :cond_21
    const/16 v3, 0x9

    .line 36
    if-ne p3, v3, :cond_27

    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v3, v1

    .line 41
    :goto_28
    if-nez v2, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    move-result-object p0

    .line 48
    const v4, 0x7f0d002f

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    move-result-object p0

    .line 56
    const v4, 0x7f0a0074

    .line 59
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/widget/ImageView;

    .line 65
    if-eqz v4, :cond_50

    .line 67
    invoke-static {v3, v4}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_50

    .line 73
    new-instance v5, Lb2/a;

    .line 75
    invoke-direct {v5, p3, v1, p1}, Lb2/a;-><init>(IILjava/lang/Object;)V

    .line 78
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_50
    const p3, 0x7f0a0057

    .line 84
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Landroid/widget/ImageView;

    .line 90
    if-eqz p3, :cond_69

    .line 92
    invoke-static {v3, p3}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_69

    .line 98
    new-instance v4, Lcom/android/cloud/fragment/e;

    .line 100
    invoke-direct {v4, p1, v0}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 103
    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_69
    const p3, 0x7f0a0062

    .line 109
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object p3

    .line 113
    check-cast p3, Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-static {v3, p3}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->needHideView(ILandroid/widget/ImageView;)Z

    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_9b

    .line 124
    if-eqz p2, :cond_96

    .line 126
    const p2, 0x7f1101cb

    .line 129
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    const p2, 0x7f0802aa

    .line 139
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    new-instance p2, Lcom/android/fileexplorer/adapter/a;

    .line 144
    invoke-direct {p2, v0, p1, p3}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    goto :goto_9b

    .line 151
    :cond_96
    const/16 p1, 0x8

    .line 153
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    :cond_9b
    :goto_9b
    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public static initFileFragmentActionBar(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    .line 6
    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$0(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;ILandroid/view/View;)V
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onSearch(I)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$1(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onNewFolder()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$initCategoryActionBar$2(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;->onViewTypeChange(Landroid/widget/ImageView;)V

    .line 4
    return-void
.end method

.method private static needHideView(ILandroid/widget/ImageView;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0057

    .line 8
    const/16 v2, 0x8

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz p0, :cond_31

    .line 13
    if-eq p0, v3, :cond_26

    .line 15
    const/4 v4, 0x2

    .line 16
    const v5, 0x7f0a0074

    .line 19
    if-eq p0, v4, :cond_20

    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq p0, v4, :cond_18

    .line 24
    goto :goto_37

    .line 25
    :cond_18
    if-eq v0, v5, :cond_1c

    .line 27
    if-ne v0, v1, :cond_37

    .line 29
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    return v3

    .line 33
    :cond_20
    if-ne v0, v5, :cond_37

    .line 35
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    return v3

    .line 39
    :cond_26
    if-eq v0, v1, :cond_2d

    .line 41
    const p0, 0x7f0a0062

    .line 44
    if-ne v0, p0, :cond_37

    .line 46
    :cond_2d
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    return v3

    .line 50
    :cond_31
    if-ne v0, v1, :cond_37

    .line 52
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    return v3

    .line 56
    :cond_37
    :goto_37
    const/4 p0, 0x0

    .line 57
    return p0
.end method
