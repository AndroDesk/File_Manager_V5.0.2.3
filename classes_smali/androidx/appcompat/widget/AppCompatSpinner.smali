.class public final Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$b;,
        Landroidx/appcompat/widget/AppCompatSpinner$c;,
        Landroidx/appcompat/widget/AppCompatSpinner$d;,
        Landroidx/appcompat/widget/AppCompatSpinner$g;,
        Landroidx/appcompat/widget/AppCompatSpinner$e;,
        Landroidx/appcompat/widget/AppCompatSpinner$h;,
        Landroidx/appcompat/widget/AppCompatSpinner$f;,
        Landroidx/appcompat/widget/AppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field public static final i:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/appcompat/widget/d;

.field public final b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/t;

.field public d:Landroid/widget/SpinnerAdapter;

.field public final e:Z

.field public f:Landroidx/appcompat/widget/AppCompatSpinner$h;

.field public g:I

.field public final h:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10102f1

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->i:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    sget-object v0, Lh/j;->Spinner:[I

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Landroidx/appcompat/widget/d;

    .line 27
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    .line 30
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 32
    sget v2, Lh/j;->Spinner_popupTheme:I

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2f

    .line 40
    new-instance v3, Lm/c;

    .line 42
    invoke-direct {v3, p1, v2}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    .line 50
    :goto_31
    const/4 v2, 0x0

    .line 51
    const/4 v3, -0x1

    .line 52
    :try_start_33
    sget-object v4, Landroidx/appcompat/widget/AppCompatSpinner;->i:[I

    .line 54
    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 57
    move-result-object v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_4e
    .catchall {:try_start_33 .. :try_end_39} :catchall_4b

    .line 58
    :try_start_39
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_59

    .line 64
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 67
    move-result v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_49
    .catchall {:try_start_39 .. :try_end_43} :catchall_45

    .line 68
    move v3, v1

    .line 69
    goto :goto_59

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    move-object v2, v4

    .line 72
    goto/16 :goto_d5

    .line 74
    :catch_49
    move-exception v1

    .line 75
    goto :goto_50

    .line 76
    :catchall_4b
    move-exception p1

    .line 77
    goto/16 :goto_d5

    .line 79
    :catch_4e
    move-exception v1

    .line 80
    move-object v4, v2

    .line 81
    :goto_50
    :try_start_50
    const-string v5, "AppCompatSpinner"

    .line 83
    const-string v6, "Could not read android:spinnerMode"

    .line 85
    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_45

    .line 88
    if-eqz v4, :cond_5c

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    :cond_5c
    const/4 v1, 0x1

    .line 94
    if-eqz v3, :cond_9a

    .line 96
    if-eq v3, v1, :cond_62

    .line 98
    goto :goto_a9

    .line 99
    :cond_62
    new-instance v3, Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 101
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    .line 103
    invoke-direct {v3, p0, v4, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$g;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    .line 108
    sget-object v5, Lh/j;->Spinner:[I

    .line 110
    invoke-static {v4, p2, v5, p3}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 113
    move-result-object v4

    .line 114
    sget v5, Lh/j;->Spinner_android_dropDownWidth:I

    .line 116
    const/4 v6, -0x2

    .line 117
    iget-object v7, v4, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    .line 119
    invoke-virtual {v7, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 122
    move-result v5

    .line 123
    iput v5, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    .line 125
    sget v5, Lh/j;->Spinner_android_popupBackground:I

    .line 127
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/k0;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    sget v5, Lh/j;->Spinner_android_prompt:I

    .line 136
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    iput-object v5, v3, Landroidx/appcompat/widget/AppCompatSpinner$g;->E:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v4}, Landroidx/appcompat/widget/y0;->n()V

    .line 145
    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 147
    new-instance v4, Landroidx/appcompat/widget/t;

    .line 149
    invoke-direct {v4, p0, p0, v3}, Landroidx/appcompat/widget/t;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$g;)V

    .line 152
    iput-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroidx/appcompat/widget/t;

    .line 154
    goto :goto_a9

    .line 155
    :cond_9a
    new-instance v3, Landroidx/appcompat/widget/AppCompatSpinner$e;

    .line 157
    invoke-direct {v3, p0}, Landroidx/appcompat/widget/AppCompatSpinner$e;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 160
    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 162
    sget v4, Lh/j;->Spinner_android_prompt:I

    .line 164
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner$e;->c:Ljava/lang/CharSequence;

    .line 170
    :goto_a9
    sget v3, Lh/j;->Spinner_android_entries:I

    .line 172
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_c1

    .line 178
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 180
    const v5, 0x1090008

    .line 183
    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 186
    sget p1, Lh/g;->support_simple_spinner_dropdown_item:I

    .line 188
    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 191
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 194
    :cond_c1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Z

    .line 199
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroid/widget/SpinnerAdapter;

    .line 201
    if-eqz p1, :cond_cf

    .line 203
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 206
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroid/widget/SpinnerAdapter;

    .line 208
    :cond_cf
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 210
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 213
    return-void

    .line 214
    :goto_d5
    if-eqz v2, :cond_da

    .line 216
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    :cond_da
    throw p1
.end method


# virtual methods
.method public final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result v2

    .line 17
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 24
    move-result v3

    .line 25
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v3

    .line 29
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 32
    move-result v4

    .line 33
    add-int/lit8 v5, v3, 0xf

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v4

    .line 39
    sub-int v5, v4, v3

    .line 41
    rsub-int/lit8 v5, v5, 0xf

    .line 43
    sub-int/2addr v3, v5

    .line 44
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x0

    .line 49
    move v6, v3

    .line 50
    move-object v7, v5

    .line 51
    move v3, v0

    .line 52
    :goto_33
    if-ge v6, v4, :cond_5e

    .line 54
    invoke-interface {p1, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 57
    move-result v8

    .line 58
    if-eq v8, v0, :cond_3d

    .line 60
    move-object v7, v5

    .line 61
    move v0, v8

    .line 62
    :cond_3d
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v8

    .line 70
    if-nez v8, :cond_50

    .line 72
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    const/4 v9, -0x2

    .line 75
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_50
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result v8

    .line 88
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v3

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_33

    .line 95
    :cond_5e
    if-eqz p2, :cond_6d

    .line 97
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 102
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Landroid/graphics/Rect;

    .line 104
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 106
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 108
    add-int/2addr p2, p1

    .line 109
    add-int/2addr v3, p2

    .line 110
    :cond_6d
    return v3
.end method

.method public final drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getHorizontalOffset()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getVerticalOffset()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    .line 7
    return v0

    .line 8
    :cond_7
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->getHintText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 16
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->dismiss()V

    .line 19
    :cond_12
    return-void
.end method

.method public final onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 6
    if-eqz p2, :cond_32

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    move-result p2

    .line 12
    const/high16 v0, -0x80000000

    .line 14
    if-ne p2, v0, :cond_32

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 31
    move-result v0

    .line 32
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p2

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    move-result p1

    .line 40
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 51
    :cond_32
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->a:Z

    .line 12
    if-eqz p1, :cond_1b

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$a;

    .line 22
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 3
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 12
    if-eqz v1, :cond_15

    .line 14
    invoke-interface {v1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_15

    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->a:Z

    .line 25
    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroidx/appcompat/widget/t;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/h0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final performClick()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$h;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_17

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 13
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->b(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/View;)I

    .line 20
    move-result v2

    .line 21
    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$h;->show(II)V

    .line 24
    :cond_17
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Z

    if-nez v0, :cond_7

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroid/widget/SpinnerAdapter;

    return-void

    .line 4
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    if-eqz v0, :cond_24

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/content/Context;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    :cond_16
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    new-instance v2, Landroidx/appcompat/widget/AppCompatSpinner$f;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$f;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->e()V

    .line 11
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setHorizontalOriginalOffset(I)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 10
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setHorizontalOffset(I)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 17
    :goto_10
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setVerticalOffset(I)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 12
    :goto_b
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:I

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 11
    :goto_a
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :goto_b
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/AppCompatSpinner$h;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$h;->setPromptText(Ljava/lang/CharSequence;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 12
    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->h(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    return-void
.end method
