.class public final Landroidx/appcompat/widget/j0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->a:Landroidx/appcompat/widget/k0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/4 p1, -0x1

    .line 2
    if-eq p3, p1, :cond_d

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/j0;->a:Landroidx/appcompat/widget/k0;

    .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 8
    if-eqz p1, :cond_d

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/f0;->setListSelectionHidden(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
