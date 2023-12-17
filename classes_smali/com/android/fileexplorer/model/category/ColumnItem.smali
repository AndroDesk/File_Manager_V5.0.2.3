.class public Lcom/android/fileexplorer/model/category/ColumnItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "ColumnItem.java"


# instance fields
.field private mSplitLine:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    const v0, 0x7f0329bb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f032e58

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    return-void
.end method

.method private getTitleText(II)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f11012a

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p2, v0, p1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_3b

    :cond_37
    invoke-static {p1, v0, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/model/category/ColumnItem;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/model/category/ColumnItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f042dac

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/model/category/ColumnItem;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindView(II)V
    .registers 4

    if-nez p1, :cond_11

    const p1, 0x7f110027

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/category/ColumnItem;->getTitleText(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_11
    const p1, 0x7f1102d8

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/category/ColumnItem;->getTitleText(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mSplitLine:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1e
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/ColumnItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
