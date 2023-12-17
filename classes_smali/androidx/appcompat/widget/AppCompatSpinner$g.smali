.class public final Landroidx/appcompat/widget/AppCompatSpinner$g;
.super Landroidx/appcompat/widget/k0;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public E:Ljava/lang/CharSequence;

.field public F:Landroid/widget/ListAdapter;

.field public final G:Landroid/graphics/Rect;

.field public H:I

.field public final synthetic I:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p4, v0}, Landroidx/appcompat/widget/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    .line 9
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->G:Landroid/graphics/Rect;

    .line 14
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroidx/appcompat/widget/k0;->A:Z

    .line 19
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 24
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$g$a;

    .line 26
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$g$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$g;)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final f()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_26

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 10
    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 17
    invoke-static {v0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 25
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 27
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 32
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 34
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 36
    neg-int v0, v0

    .line 37
    :goto_24
    move v1, v0

    .line 38
    goto :goto_2e

    .line 39
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 41
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 43
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 45
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 47
    :goto_2e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v0

    .line 53
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 67
    iget v5, v4, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    .line 69
    const/4 v6, -0x2

    .line 70
    if-ne v5, v6, :cond_7b

    .line 72
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->F:Landroid/widget/ListAdapter;

    .line 74
    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 83
    move-result v4

    .line 84
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    move-result-object v5

    .line 98
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 102
    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 104
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 106
    sub-int/2addr v5, v7

    .line 107
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 109
    sub-int/2addr v5, v6

    .line 110
    if-le v4, v5, :cond_70

    .line 112
    move v4, v5

    .line 113
    :cond_70
    sub-int v5, v3, v0

    .line 115
    sub-int/2addr v5, v2

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 119
    move-result v4

    .line 120
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/k0;->e(I)V

    .line 123
    goto :goto_88

    .line 124
    :cond_7b
    const/4 v4, -0x1

    .line 125
    if-ne v5, v4, :cond_85

    .line 127
    sub-int v4, v3, v0

    .line 129
    sub-int/2addr v4, v2

    .line 130
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/k0;->e(I)V

    .line 133
    goto :goto_88

    .line 134
    :cond_85
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/k0;->e(I)V

    .line 137
    :goto_88
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 139
    invoke-static {v4}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_99

    .line 145
    sub-int/2addr v3, v2

    .line 146
    iget v0, p0, Landroidx/appcompat/widget/k0;->e:I

    .line 148
    sub-int/2addr v3, v0

    .line 149
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->H:I

    .line 151
    sub-int/2addr v3, v0

    .line 152
    add-int/2addr v3, v1

    .line 153
    goto :goto_9e

    .line 154
    :cond_99
    iget v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->H:I

    .line 156
    add-int/2addr v0, v2

    .line 157
    add-int v3, v0, v1

    .line 159
    :goto_9e
    iput v3, p0, Landroidx/appcompat/widget/k0;->f:I

    .line 161
    return-void
.end method

.method public final getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->E:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->F:Landroid/widget/ListAdapter;

    .line 6
    return-void
.end method

.method public final setHorizontalOriginalOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->H:I

    .line 3
    return-void
.end method

.method public final setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->E:Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public final show(II)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$g;->f()V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->show()V

    .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 23
    invoke-static {v1, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(Landroid/view/View;I)V

    .line 26
    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$c;->c(Landroid/view/View;I)V

    .line 29
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 31
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 34
    move-result p1

    .line 35
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3c

    .line 43
    if-eqz p2, :cond_3c

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/f0;->setListSelectionHidden(Z)V

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 52
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getChoiceMode()I

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3c

    .line 58
    invoke-virtual {p2, p1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 61
    :cond_3c
    if-eqz v0, :cond_3f

    .line 63
    return-void

    .line 64
    :cond_3f
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_57

    .line 72
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$g$b;

    .line 74
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$g$b;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$g;)V

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$g$c;

    .line 82
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$g$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$g;Landroidx/appcompat/widget/AppCompatSpinner$g$b;)V

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/k0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 88
    :cond_57
    return-void
.end method
