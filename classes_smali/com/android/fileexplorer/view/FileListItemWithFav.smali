.class public Lcom/android/fileexplorer/view/FileListItemWithFav;
.super Lcom/android/fileexplorer/view/FileListItem;
.source "FileListItemWithFav.java"


# instance fields
.field private mCheckBoxLayout:Landroid/widget/FrameLayout;

.field public mFavoriteTagView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/FileListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 5

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 4
    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p3, :cond_14

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_14
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onBindFavItem(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    .line 1
    const-string v0, ""

    .line 3
    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 8
    if-eqz p1, :cond_e

    .line 10
    const/16 p2, 0x8

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/FileListItem;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0174

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 13
    const v0, 0x7f0a0197

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    .line 24
    return-void
.end method

.method public onShowGoItem()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->onShowGoList(Z)V

    .line 5
    return-void
.end method

.method public setCheckBoxMargin(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    const/high16 v1, 0x41700000  # 15.0f

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    mul-float/2addr v1, p1

    .line 19
    float-to-int p1, v1

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mCheckBoxLayout:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :cond_1b
    return-void
.end method
