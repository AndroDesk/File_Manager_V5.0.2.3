.class public final Landroidx/preference/PreferenceFragmentCompat$d;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:Z

.field public final synthetic d:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$d;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat$d;->c:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 7

    .line 1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/preference/h;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_12

    .line 11
    check-cast v0, Landroidx/preference/h;

    .line 13
    iget-boolean v0, v0, Landroidx/preference/h;->e:Z

    .line 15
    if-eqz v0, :cond_12

    .line 17
    move v0, v3

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    if-nez v0, :cond_16

    .line 22
    return v2

    .line 23
    :cond_16
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat$d;->c:Z

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v1

    .line 33
    sub-int/2addr v1, v3

    .line 34
    if-ge p1, v1, :cond_38

    .line 36
    add-int/2addr p1, v3

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 44
    move-result-object p1

    .line 45
    instance-of p2, p1, Landroidx/preference/h;

    .line 47
    if-eqz p2, :cond_37

    .line 49
    check-cast p1, Landroidx/preference/h;

    .line 51
    iget-boolean p1, p1, Landroidx/preference/h;->d:Z

    .line 53
    if-eqz p1, :cond_37

    .line 55
    move v2, v3

    .line 56
    :cond_37
    move v0, v2

    .line 57
    :cond_38
    return v0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2, p3}, Landroidx/preference/PreferenceFragmentCompat$d;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_a

    .line 7
    iget p2, p0, Landroidx/preference/PreferenceFragmentCompat$d;->b:I

    .line 9
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    :cond_a
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 10

    .line 1
    iget-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$d;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez p3, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result p3

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v2, p3, :cond_35

    .line 18
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0, v3, p2}, Landroidx/preference/PreferenceFragmentCompat$d;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_32

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 31
    move-result v4

    .line 32
    float-to-int v4, v4

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v3

    .line 37
    add-int/2addr v3, v4

    .line 38
    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat$d;->a:Landroid/graphics/drawable/Drawable;

    .line 40
    iget v5, p0, Landroidx/preference/PreferenceFragmentCompat$d;->b:I

    .line 42
    add-int/2addr v5, v3

    .line 43
    invoke-virtual {v4, v1, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$d;->a:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_f

    .line 54
    :cond_35
    return-void
.end method
