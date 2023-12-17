.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImmersionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 17
    invoke-direct {p0, p2, v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4
    if-eqz p1, :cond_1c

    .line 6
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 13
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

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
.method public checkMenuItem(Landroid/view/MenuItem;)Z
    .registers 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_2d

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_immersion_popup_menu_item:I

    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    new-instance p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p3, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$1;)V

    .line 18
    const v1, 0x1020006

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    iput-object v1, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 29
    const v1, 0x1020014

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 38
    iput-object v1, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->getCount()I

    .line 49
    move-result p3

    .line 50
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 56
    move-result-object p3

    .line 57
    if-eqz p3, :cond_65

    .line 59
    check-cast p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    .line 61
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_55

    .line 71
    iget-object v1, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    goto :goto_5c

    .line 86
    :cond_55
    iget-object v0, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 88
    const/16 v1, 0x8

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_5c
    iget-object p3, p3, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_65
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
