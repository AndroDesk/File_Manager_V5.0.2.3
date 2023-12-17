.class Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "FabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public downIcon:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public upIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a0428

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a047c

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->upIcon:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0a0145

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/ImageView;

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->downIcon:Landroid/widget/ImageView;

    .line 37
    return-void
.end method
