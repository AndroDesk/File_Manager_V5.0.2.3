.class public Lcom/android/fileexplorer/view/RefreshListViewFooter;
.super Landroid/widget/LinearLayout;
.source "RefreshListViewFooter.java"


# static fields
.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NORMAL:I


# instance fields
.field private mContentView:Landroid/view/View;

.field private mHintView:Landroid/widget/TextView;

.field private mIsAutoLoadMore:Z

.field private mProgressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshListViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d01c1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, -0x2

    .line 22
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    const v0, 0x7f0a034d

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 37
    const v0, 0x7f0a034f

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 46
    const v0, 0x7f0a034e

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 55
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 57
    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 11
    return v0
.end method

.method public hide()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method

.method public loading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void
.end method

.method public normal()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 9
    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void
.end method

.method public setAutoLoadMore(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    .line 3
    return-void
.end method

.method public setBottomMargin(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
.end method

.method public setState(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_17

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f11039e

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_3b

    .line 24
    :cond_17
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mIsAutoLoadMore:Z

    .line 26
    const/16 v1, 0x8

    .line 28
    if-eqz p1, :cond_29

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    goto :goto_3b

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mHintView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f11020a

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mProgressBar:Landroid/view/View;

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_3b
    return-void
.end method

.method public show()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    const/4 v1, -0x2

    .line 10
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewFooter;->mContentView:Landroid/view/View;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method
