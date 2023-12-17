.class Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImmersionMenuAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/view/menu/ImmersionMenu;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/android/fileexplorer/view/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    return-void
.end method

.method private buildVisibleItems(Lcom/android/fileexplorer/view/menu/ImmersionMenu;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/view/menu/ImmersionMenu;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_20

    iget-object p2, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f042c8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public update(Lcom/android/fileexplorer/view/menu/ImmersionMenu;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/android/fileexplorer/view/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
