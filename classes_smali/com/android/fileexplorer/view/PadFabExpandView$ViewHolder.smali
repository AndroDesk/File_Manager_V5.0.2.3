.class Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "PadFabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/PadFabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public downIcon:Landroid/widget/ImageView;

.field public item:Landroid/view/View;

.field public title:Landroid/widget/TextView;

.field public upIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a03b2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->item:Landroid/view/View;

    .line 13
    const v0, 0x7f0a0428

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0a047c

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->upIcon:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0a0145

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->downIcon:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method private setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method
