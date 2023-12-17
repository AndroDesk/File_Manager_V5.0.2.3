.class public Lcom/android/fileexplorer/view/menu/ImmersionMenu;
.super Ljava/lang/Object;
.source "ImmersionMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private add(ILjava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    iget-object v1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addSubMenu(ILjava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenu;
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->setSubMenu(Lcom/android/fileexplorer/view/menu/ImmersionMenu;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    return-object p2
.end method


# virtual methods
.method public add(II)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(II)Lcom/android/fileexplorer/view/menu/ImmersionMenu;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->addSubMenu(ILjava/lang/CharSequence;)Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    move-result-object p1

    return-object p1
.end method

.method public findItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    .line 16
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->getItemId()I

    .line 19
    move-result v3

    .line 20
    if-ne v3, p1, :cond_16

    .line 22
    return-object v2

    .line 23
    :cond_16
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->hasSubMenu()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_27

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;->getSubMenu()Lcom/android/fileexplorer/view/menu/ImmersionMenu;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->findItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_27

    .line 39
    return-object v2

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public getItem(I)Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/view/menu/ImmersionMenuItem;

    .line 9
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
