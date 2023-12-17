.class public Lcom/android/fileexplorer/view/GuideDialog;
.super Ljava/lang/Object;
.source "GuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/GuideDialog$PageInfo;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIndicators:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/GuideDialog$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/GuideDialog$PageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/view/LayoutInflater;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/GuideDialog;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/GuideDialog;->refreshIndicator(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/GuideDialog;)Lmiuix/appcompat/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-object p0
.end method

.method private initIndicator(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_11

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    .line 12
    const/16 v0, 0x8

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 24
    new-array v2, v0, [Landroid/widget/ImageView;

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_1b
    if-ge v4, v0, :cond_4c

    .line 30
    new-instance v5, Landroid/widget/ImageView;

    .line 32
    iget-object v6, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    .line 34
    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    aput-object v5, v2, v4

    .line 39
    const v6, 0x7f0801d5

    .line 42
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    const/16 v6, 0xe

    .line 49
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v6, 0xa

    .line 54
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v6, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    .line 59
    aget-object v7, v2, v4

    .line 61
    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    aget-object v5, v2, v4

    .line 66
    if-ne v4, p1, :cond_45

    .line 68
    move v6, v1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v6, v3

    .line 71
    :goto_46
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_1b

    .line 77
    :cond_4c
    return-void
.end method

.method private initView()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;->initIndicator(I)V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 7
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$4;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$4;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 17
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$5;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$5;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    .line 22
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 25
    return-void
.end method

.method private refreshIndicator(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_1d

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_1d

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v3

    .line 19
    if-ne v2, p1, :cond_16

    .line 21
    const/4 v4, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v1

    .line 24
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_a

    .line 30
    :cond_1d
    return-void
.end method


# virtual methods
.method public show()V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    .line 10
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f0d00e5

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0a01ba

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 31
    iput-object v2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 33
    const v2, 0x7f0a01f6

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/LinearLayout;

    .line 42
    iput-object v2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 47
    invoke-direct {p0}, Lcom/android/fileexplorer/view/GuideDialog;->initView()V

    .line 50
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$1;

    .line 52
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$1;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    const v2, 0x7f1101d7

    .line 62
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 65
    const v2, 0x7f1101d6

    .line 68
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 71
    new-instance v2, Lcom/android/fileexplorer/view/GuideDialog$2;

    .line 73
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/GuideDialog$2;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    .line 76
    const v3, 0x7f110469

    .line 79
    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 82
    new-instance v2, Lcom/android/fileexplorer/view/GuideDialog$3;

    .line 84
    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/view/GuideDialog$3;-><init>(Lcom/android/fileexplorer/view/GuideDialog;Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 99
    const-wide/16 v2, 0x7d0

    .line 101
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 104
    return-void
.end method
