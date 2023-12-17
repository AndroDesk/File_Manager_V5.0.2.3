.class public Lmiuix/internal/widget/PopupMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;
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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    if-eqz p2, :cond_15

    .line 5
    invoke-direct {p0, p2, v0}, Lmiuix/internal/widget/PopupMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 6
    :cond_15
    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
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
    invoke-virtual {p0, v2}, Lmiuix/internal/widget/PopupMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

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
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

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
    if-nez p2, :cond_2f

    .line 4
    iget-object p2, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item:I

    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    new-instance p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p3, v1}, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;-><init>(Lmiuix/internal/widget/PopupMenuAdapter$1;)V

    .line 18
    const v1, 0x1020006

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    iput-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 29
    const v1, 0x1020014

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 38
    iput-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 40
    sget v1, Lmiuix/appcompat/R$id;->tag_popup_menu_item:I

    .line 42
    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lmiuix/internal/widget/PopupMenuAdapter;->getCount()I

    .line 51
    move-result p3

    .line 52
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemBackground(Landroid/view/View;II)V

    .line 55
    sget p3, Lmiuix/appcompat/R$id;->tag_popup_menu_item:I

    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 61
    if-eqz p3, :cond_69

    .line 63
    check-cast p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    .line 65
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_59

    .line 75
    iget-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    iget-object v0, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 92
    const/16 v1, 0x8

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_60
    iget-object p3, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_69
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
