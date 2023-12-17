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
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/view/menu/ImmersionMenu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/android/fileexplorer/view/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    .line 20
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

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4
    if-eqz p1, :cond_1c

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->isVisible()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_19

    .line 23
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
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

    .line 1
    if-nez p2, :cond_1c

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    const v0, 0x7f0d011c

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    const p3, 0x1020014

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 22
    const/4 v0, 0x5

    .line 23
    invoke-virtual {p3, v0}, Landroid/view/View;->setTextAlignment(I)V

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->isEnabled()Z

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 46
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object p2
.end method

.method public update(Lcom/android/fileexplorer/view/menu/ImmersionMenu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/android/fileexplorer/view/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
