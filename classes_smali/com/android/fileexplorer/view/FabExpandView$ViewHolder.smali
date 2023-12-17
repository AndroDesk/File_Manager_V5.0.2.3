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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0329be

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0329ea

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->upIcon:Landroid/widget/ImageView;

    const v0, 0x7f032cd3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->downIcon:Landroid/widget/ImageView;

    return-void
.end method
