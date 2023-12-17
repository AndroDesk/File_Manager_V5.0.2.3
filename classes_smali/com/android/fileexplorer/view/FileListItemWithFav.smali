.class public Lcom/android/fileexplorer/view/FileListItemWithFav;
.super Lcom/android/fileexplorer/view/FileListItem;
.source "FileListItemWithFav.java"


# instance fields
.field private mCheckBoxLayout:Landroid/widget/FrameLayout;

.field public mFavoriteTagView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p2, :cond_19

    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p3, :cond_14

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez p1, :cond_14

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_14
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onBindFavItem(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    const-string v0, ""

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p1, :cond_e

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/view/FileListItem;->onFinishInflate()V

    const v0, 0x7f032ce2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    const v0, 0x7f032c01

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onShowGoItem()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->onShowGoList(Z)V

    return-void
.end method

.method public setCheckBoxMargin(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41700000  # 15.0f

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method
