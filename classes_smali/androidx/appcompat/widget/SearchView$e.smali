.class public final Landroidx/appcompat/widget/SearchView$e;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$e;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$e;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->i:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x1

    .line 10
    if-le p2, p3, :cond_61

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p2

    .line 20
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->c:Landroid/view/View;

    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result p3

    .line 26
    new-instance p4, Landroid/graphics/Rect;

    .line 28
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-static {p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 34
    move-result p5

    .line 35
    iget-boolean p6, p1, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 37
    if-eqz p6, :cond_34

    .line 39
    sget p6, Lh/d;->abc_dropdownitem_icon_width:I

    .line 41
    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p6

    .line 45
    sget p7, Lh/d;->abc_dropdownitem_text_padding_left:I

    .line 47
    invoke-virtual {p2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p2

    .line 51
    add-int/2addr p2, p6

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 p2, 0x0

    .line 54
    :goto_35
    iget-object p6, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 56
    invoke-virtual {p6}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object p6

    .line 60
    invoke-virtual {p6, p4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 63
    if-eqz p5, :cond_44

    .line 65
    iget p5, p4, Landroid/graphics/Rect;->left:I

    .line 67
    neg-int p5, p5

    .line 68
    goto :goto_49

    .line 69
    :cond_44
    iget p5, p4, Landroid/graphics/Rect;->left:I

    .line 71
    add-int/2addr p5, p2

    .line 72
    sub-int p5, p3, p5

    .line 74
    :goto_49
    iget-object p6, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 76
    invoke-virtual {p6, p5}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 79
    iget-object p5, p1, Landroidx/appcompat/widget/SearchView;->i:Landroid/view/View;

    .line 81
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 84
    move-result p5

    .line 85
    iget p6, p4, Landroid/graphics/Rect;->left:I

    .line 87
    add-int/2addr p5, p6

    .line 88
    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 90
    add-int/2addr p5, p4

    .line 91
    add-int/2addr p5, p2

    .line 92
    sub-int/2addr p5, p3

    .line 93
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 95
    invoke-virtual {p1, p5}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 98
    :cond_61
    return-void
.end method
