.class public Lcom/android/fileexplorer/view/RefreshListViewFooter;
.super Landroid/widget/LinearLayout;
.source "RefreshListViewFooter.java"


# static fields
.field public static final STATE_LOADING:I

.field public static final STATE_NORMAL:I


# instance fields
.field private mContentView:Landroid/view/View;

.field private mHintView:Landroid/widget/TextView;

.field private mIsAutoLoadMore:Z

.field private mProgressBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->STATE_LOADING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f042c57

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f032edb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    const v0, 0x7f032ed9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    const v0, 0x7f032ed8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loading()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public normal()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAutoLoadMore(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    return-void
.end method

.method public setBottomMargin(I)V
    .registers 3

    if-gez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setState(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f11039e

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b

    :cond_17
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b

    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    const v0, 0x7f11020a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3b
    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
