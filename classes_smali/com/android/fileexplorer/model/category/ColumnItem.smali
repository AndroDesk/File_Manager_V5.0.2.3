.class public Lcom/android/fileexplorer/model/category/ColumnItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "ColumnItem.java"


# instance fields
.field private mSplitLine:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a042d

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mTitle:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a03ce

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    .line 24
    return-void
.end method

.method private getTitleText(II)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v2, v1, v3

    .line 31
    const v2, 0x7f0f0033

    .line 34
    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    const v0, 0x7f11012a

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_37

    .line 51
    invoke-static {p2, v0, p1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p1

    .line 55
    goto :goto_3b

    .line 56
    :cond_37
    invoke-static {p1, v0, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object p1

    .line 60
    :goto_3b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/model/category/ColumnItem;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/category/ColumnItem;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p0

    .line 11
    const v1, 0x7f0d003a

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/model/category/ColumnItem;-><init>(Landroid/view/View;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public bindView(II)V
    .registers 4

    .line 1
    if-nez p1, :cond_11

    .line 3
    const p1, 0x7f110027

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/category/ColumnItem;->getTitleText(II)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    .line 12
    const/16 v0, 0x8

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    goto :goto_1e

    .line 18
    :cond_11
    const p1, 0x7f1102d8

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/category/ColumnItem;->getTitleText(II)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_1e
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mTitle:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
