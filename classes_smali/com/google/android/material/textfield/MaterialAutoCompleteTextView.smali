.class public Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;
.super Landroidx/appcompat/widget/c;
.source "MaterialAutoCompleteTextView.java"


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final modalListPopup:Landroidx/appcompat/widget/k0;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView:[I

    sget v5, Lcom/google/android/material/R$style;->Widget_AppCompat_AutoCompleteTextView:I

    new-array v6, v0, [I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_android_inputType:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-nez p3, :cond_32

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/c;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_32
    const-string p3, "accessibility"

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    new-instance p3, Landroidx/appcompat/widget/k0;

    .line 13
    sget v1, Lh/a;->listPopupWindowStyle:I

    .line 14
    invoke-direct {p3, p1, v2, v1, v0}, Landroidx/appcompat/widget/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    iput-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p3, Landroidx/appcompat/widget/k0;->A:Z

    .line 17
    iget-object v0, p3, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 18
    iput-object p0, p3, Landroidx/appcompat/widget/k0;->o:Landroid/view/View;

    .line 19
    iget-object p1, p3, Landroidx/appcompat/widget/k0;->B:Landroidx/appcompat/widget/n;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    new-instance p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;-><init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/k0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/k0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->updateText(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_12

    .line 7
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_4

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method private measureContentWidth()I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_91

    .line 12
    if-nez v1, :cond_f

    .line 14
    goto/16 :goto_91

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result v3

    .line 20
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    move-result v4

    .line 28
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result v4

    .line 32
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    .line 34
    invoke-virtual {v5}, Landroidx/appcompat/widget/k0;->isShowing()Z

    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_29

    .line 40
    const/4 v5, -0x1

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    iget-object v5, v5, Landroidx/appcompat/widget/k0;->c:Landroidx/appcompat/widget/f0;

    .line 44
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 47
    move-result v5

    .line 48
    :goto_2f
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v5

    .line 52
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 55
    move-result v6

    .line 56
    add-int/lit8 v5, v5, 0xf

    .line 58
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result v5

    .line 62
    add-int/lit8 v6, v5, -0xf

    .line 64
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 67
    move-result v6

    .line 68
    const/4 v7, 0x0

    .line 69
    move v8, v6

    .line 70
    move-object v9, v7

    .line 71
    move v6, v2

    .line 72
    :goto_47
    if-ge v8, v5, :cond_72

    .line 74
    invoke-interface {v0, v8}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 77
    move-result v10

    .line 78
    if-eq v10, v2, :cond_51

    .line 80
    move-object v9, v7

    .line 81
    move v2, v10

    .line 82
    :cond_51
    invoke-interface {v0, v8, v9, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v10

    .line 90
    if-nez v10, :cond_64

    .line 92
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 94
    const/4 v11, -0x2

    .line 95
    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_64
    invoke-virtual {v9, v3, v4}, Landroid/view/View;->measure(II)V

    .line 104
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 107
    move-result v10

    .line 108
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 111
    move-result v6

    .line 112
    add-int/lit8 v8, v8, 0x1

    .line 114
    goto :goto_47

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    .line 117
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_87

    .line 123
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 128
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    .line 130
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 132
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 134
    add-int/2addr v2, v0

    .line 135
    add-int/2addr v6, v2

    .line 136
    :cond_87
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 143
    move-result v0

    .line 144
    add-int/2addr v0, v6

    .line 145
    return v0

    .line 146
    :cond_91
    :goto_91
    return v2
.end method

.method private updateText(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    invoke-super {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_20

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_20

    .line 16
    invoke-super {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_20

    .line 22
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isMeizuDevice()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_20

    .line 28
    const-string v0, ""

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 33
    :cond_20
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result p2

    .line 8
    const/high16 v0, -0x80000000

    .line 10
    if-ne p2, v0, :cond_26

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    move-result p2

    .line 16
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->measureContentWidth()I

    .line 19
    move-result v0

    .line 20
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p2

    .line 24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result p1

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 39
    :cond_26
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    .line 6
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/k0;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    return-void
.end method

.method public showDropDown()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_16

    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/k0;

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/widget/k0;->show()V

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 26
    :goto_19
    return-void
.end method
