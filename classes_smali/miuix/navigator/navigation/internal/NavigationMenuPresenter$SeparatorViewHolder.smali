.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;
.super Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 1
    sget v0, Lmiuix/navigator/R$layout;->miuix_design_navigation_item_separator:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    return-void
.end method
