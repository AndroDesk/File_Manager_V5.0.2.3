.class Lmiuix/appcompat/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 6
    instance-of v0, p1, Landroid/widget/ListAdapter;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroid/widget/ListAdapter;

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 15
    :cond_e
    if-eqz p2, :cond_2f

    .line 17
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 19
    if-eqz v0, :cond_20

    .line 21
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 23
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    .line 26
    move-result-object v0

    .line 27
    if-eq v0, p2, :cond_2f

    .line 29
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 32
    goto :goto_2f

    .line 33
    :cond_20
    instance-of p2, p1, Landroidx/appcompat/widget/u0;

    .line 35
    if-eqz p2, :cond_2f

    .line 37
    check-cast p1, Landroidx/appcompat/widget/u0;

    .line 39
    invoke-interface {p1}, Landroidx/appcompat/widget/u0;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_2f

    .line 45
    invoke-interface {p1}, Landroidx/appcompat/widget/u0;->a()V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-wide/16 v0, -0x1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 11
    move-result-wide v0

    .line 12
    :goto_b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-nez p2, :cond_22

    .line 7
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 10
    const/4 p2, 0x1

    .line 11
    new-array p2, p2, [Landroid/view/View;

    .line 13
    const/4 p3, 0x0

    .line 14
    aput-object p1, p2, p3

    .line 16
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 23
    move-result-object p2

    .line 24
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 26
    invoke-interface {p2, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 29
    move-result-object p2

    .line 30
    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-interface {p2, p1, p3}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 35
    :cond_22
    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    :cond_7
    return-void
.end method
