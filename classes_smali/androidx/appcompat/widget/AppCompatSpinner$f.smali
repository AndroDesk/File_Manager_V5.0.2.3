.class public final Landroidx/appcompat/widget/AppCompatSpinner$f;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/widget/SpinnerAdapter;

.field public b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

    .line 6
    instance-of v0, p1, Landroid/widget/ListAdapter;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroid/widget/ListAdapter;

    .line 13
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->b:Landroid/widget/ListAdapter;

    .line 15
    :cond_e
    if-eqz p2, :cond_29

    .line 17
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 23
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    .line 26
    goto :goto_29

    .line 27
    :cond_1a
    instance-of p2, p1, Landroidx/appcompat/widget/u0;

    .line 29
    if-eqz p2, :cond_29

    .line 31
    check-cast p1, Landroidx/appcompat/widget/u0;

    .line 33
    invoke-interface {p1}, Landroidx/appcompat/widget/u0;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_29

    .line 39
    invoke-interface {p1}, Landroidx/appcompat/widget/u0;->a()V

    .line 42
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->b:Landroid/widget/ListAdapter;

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

.method public final getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

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

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

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

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

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

.method public final getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

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

.method public final getItemViewType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$f;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

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

.method public final isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$f;->getCount()I

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

.method public final isEnabled(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->b:Landroid/widget/ListAdapter;

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

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$f;->a:Landroid/widget/SpinnerAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    :cond_7
    return-void
.end method
