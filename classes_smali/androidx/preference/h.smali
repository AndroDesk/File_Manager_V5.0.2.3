.class public final Landroidx/preference/h;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "PreferenceViewHolder.java"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/preference/h;->c:Landroid/util/SparseArray;

    .line 12
    const v1, 0x1020016

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    const v1, 0x1020010

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    const v1, 0x1020006

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget v1, Landroidx/preference/l;->icon_frame:I

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    const v1, 0x102003e

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Landroidx/preference/h;->a:Landroid/graphics/drawable/Drawable;

    .line 69
    if-eqz v2, :cond_4c

    .line 71
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Landroidx/preference/h;->b:Landroid/content/res/ColorStateList;

    .line 77
    :cond_4c
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->c:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_18

    .line 20
    iget-object v1, p0, Landroidx/preference/h;->c:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_18
    return-object v0
.end method
