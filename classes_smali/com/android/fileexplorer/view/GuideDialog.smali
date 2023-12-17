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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/view/LayoutInflater;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/GuideDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/GuideDialog;->refreshIndicator(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/GuideDialog;)Lmiuix/appcompat/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private initIndicator(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mPageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Landroid/widget/ImageView;

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v0, :cond_4c

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v4

    const v6, 0x7f0801d5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xe

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    aget-object v7, v2, v4

    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    aget-object v5, v2, v4

    if-ne v4, p1, :cond_45

    move v6, v1

    goto :goto_46

    :cond_45
    move v6, v3

    :goto_46
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_4c
    return-void
.end method

.method private initView()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;->initIndicator(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$4;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$5;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    return-void
.end method

.method private refreshIndicator(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, p1, :cond_1d

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1d

    iget-object v3, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    return-void
.end method


# virtual methods
.method public show()V
    .registers 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f042d73

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f032c2c

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    iput-object v2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    const v2, 0x7f032c60

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/fileexplorer/view/GuideDialog;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/GuideDialog;->initView()V

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/GuideDialog$1;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1101d7

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1101d6

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/fileexplorer/view/GuideDialog$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/GuideDialog$2;-><init>(Lcom/android/fileexplorer/view/GuideDialog;)V

    const v3, 0x7f110469

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/fileexplorer/view/GuideDialog$3;

    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/view/GuideDialog$3;-><init>(Lcom/android/fileexplorer/view/GuideDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
