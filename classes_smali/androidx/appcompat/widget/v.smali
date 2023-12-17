.class public final Landroidx/appcompat/widget/v;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/v$e;,
        Landroidx/appcompat/widget/v$b;,
        Landroidx/appcompat/widget/v$c;,
        Landroidx/appcompat/widget/v$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/w0;

.field public c:Landroidx/appcompat/widget/w0;

.field public d:Landroidx/appcompat/widget/w0;

.field public e:Landroidx/appcompat/widget/w0;

.field public f:Landroidx/appcompat/widget/w0;

.field public g:Landroidx/appcompat/widget/w0;

.field public h:Landroidx/appcompat/widget/w0;

.field public final i:Landroidx/appcompat/widget/z;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/v;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/z;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;
    .registers 4

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    monitor-exit p1

    if-eqz p0, :cond_15

    new-instance p1, Landroidx/appcompat/widget/w0;

    invoke-direct {p1}, Landroidx/appcompat/widget/w0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/widget/w0;->d:Z

    iput-object p0, p1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_15
    const/4 p0, 0x0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_ce

    if-eqz p1, :cond_ce

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-lt v0, v1, :cond_13

    invoke-static {p2, p0}, Landroidx/core/content/a;->v(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_ce

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v0, v1, :cond_1d

    invoke-static {p2, p0}, Landroidx/core/content/a;->v(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_ce

    :cond_1d
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le p1, v0, :cond_26

    add-int/lit8 v1, v0, 0x0

    goto :goto_28

    :cond_26
    add-int/lit8 v1, p1, 0x0

    :goto_28
    const/4 v2, 0x0

    if-le p1, v0, :cond_2d

    sub-int/2addr p1, v2

    goto :goto_2f

    :cond_2d
    add-int/lit8 p1, v0, 0x0

    :goto_2f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    if-ltz v1, :cond_cb

    if-le p1, v0, :cond_3a

    goto/16 :goto_cb

    :cond_3a
    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4e

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_4e

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4c

    goto :goto_4e

    :cond_4c
    move v4, v2

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v4, v6

    :goto_4f
    if-eqz v4, :cond_56

    invoke-static {p2, v3, v2, v2}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_ce

    :cond_56
    const/16 v3, 0x800

    if-gt v0, v3, :cond_5f

    invoke-static {p2, p0, v1, p1}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_ce

    :cond_5f
    sub-int v0, p1, v1

    const/16 v3, 0x400

    if-le v0, v3, :cond_67

    move v3, v2

    goto :goto_68

    :cond_67
    move v3, v0

    :goto_68
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p1

    rsub-int v5, v3, 0x800

    const-wide v7, 0x3fe999999999999aL  # 0.8

    int-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-int v7, v9

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_95

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_95
    add-int v7, p1, v4

    sub-int/2addr v7, v6

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_a4

    add-int/lit8 v4, v4, -0x1

    :cond_a4
    add-int v7, v5, v3

    add-int/2addr v7, v4

    if-eq v3, v0, :cond_c0

    add-int v0, v1, v5

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    add-int/2addr v4, p1

    invoke-interface {p0, p1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    aput-object p0, p1, v6

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_c5

    :cond_c0
    add-int/2addr v7, v1

    invoke-interface {p0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_c5
    add-int/2addr v5, v2

    add-int/2addr v3, v5

    invoke-static {p2, p0, v5, v3}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_ce

    :cond_cb
    :goto_cb
    invoke-static {p2, v3, v2, v2}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_ce
    :goto_ce
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    :cond_d
    return-void
.end method

.method public final b()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_36

    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_52

    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    :cond_52
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    move-result-object v10

    sget-object v3, Lh/j;->AppCompatTextHelper:[I

    invoke-static {v9, v7, v3, v8}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object v11

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v11, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    sget v1, Lh/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v12, -0x1

    invoke-virtual {v11, v1, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v1

    sget v2, Lh/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_3f

    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    :cond_3f
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    :cond_51
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    :cond_63
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    :cond_75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v3, Lh/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    :cond_89
    sget v3, Lh/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    :cond_9b
    invoke-virtual {v11}, Landroidx/appcompat/widget/y0;->n()V

    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    const/16 v4, 0x1a

    if-eq v1, v12, :cond_ec

    sget-object v5, Lh/j;->TextAppearance:[I

    new-instance v6, Landroidx/appcompat/widget/y0;

    invoke-virtual {v9, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v6, v9, v1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_c5

    sget v1, Lh/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-virtual {v6, v1, v13}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v1

    const/4 v5, 0x1

    goto :goto_c7

    :cond_c5
    move v1, v13

    move v5, v1

    :goto_c7
    invoke-virtual {v0, v9, v6}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    sget v15, Lh/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v16

    if-eqz v16, :cond_d7

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_d8

    :cond_d7
    const/4 v15, 0x0

    :goto_d8
    if-lt v2, v4, :cond_e7

    sget v14, Lh/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v17

    if-eqz v17, :cond_e7

    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_e8

    :cond_e7
    const/4 v14, 0x0

    :goto_e8
    invoke-virtual {v6}, Landroidx/appcompat/widget/y0;->n()V

    goto :goto_f0

    :cond_ec
    move v1, v13

    move v5, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_f0
    sget-object v6, Lh/j;->TextAppearance:[I

    new-instance v11, Landroidx/appcompat/widget/y0;

    invoke-virtual {v9, v7, v6, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v11, v9, v6}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_10a

    sget v6, Lh/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v18

    if-eqz v18, :cond_10a

    invoke-virtual {v11, v6, v13}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v1

    const/4 v5, 0x1

    :cond_10a
    sget v6, Lh/j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v18

    if-eqz v18, :cond_116

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v15

    :cond_116
    if-lt v2, v4, :cond_124

    sget v4, Lh/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_124

    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v14

    :cond_124
    const/16 v4, 0x1c

    if-lt v2, v4, :cond_13c

    sget v2, Lh/j;->TextAppearance_android_textSize:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_13c

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v2

    if-nez v2, :cond_13c

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_13c
    invoke-virtual {v0, v9, v11}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    invoke-virtual {v11}, Landroidx/appcompat/widget/y0;->n()V

    if-nez v3, :cond_14b

    if-eqz v5, :cond_14b

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_14b
    iget-object v1, v0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_160

    iget v2, v0, Landroidx/appcompat/widget/v;->k:I

    if-ne v2, v12, :cond_15b

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v3, v0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_160

    :cond_15b
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_160
    :goto_160
    if-eqz v14, :cond_167

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1, v14}, Landroidx/appcompat/widget/v$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_167
    if-eqz v15, :cond_172

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v15}, Landroidx/appcompat/widget/v$c;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/appcompat/widget/v$c;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    :cond_172
    iget-object v11, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    iget-object v1, v11, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    sget-object v3, Lh/j;->AppCompatTextView:[I

    invoke-virtual {v1, v7, v3, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    iget-object v1, v11, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v4, p1

    move-object v5, v14

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    sget v1, Lh/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_198

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v11, Landroidx/appcompat/widget/z;->a:I

    :cond_198
    sget v1, Lh/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000  # -1.0f

    if-eqz v2, :cond_1a7

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_1a8

    :cond_1a7
    move v1, v3

    :goto_1a8
    sget v2, Lh/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1b5

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_1b6

    :cond_1b5
    move v2, v3

    :goto_1b6
    sget v4, Lh/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1c3

    invoke-virtual {v14, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_1c4

    :cond_1c3
    move v4, v3

    :goto_1c4
    sget v5, Lh/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1fa

    invoke-virtual {v14, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-lez v5, :cond_1fa

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v8, v6, [I

    if-lez v6, :cond_1f7

    move v15, v13

    :goto_1e3
    if-ge v15, v6, :cond_1ee

    invoke-virtual {v5, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    aput v18, v8, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1e3

    :cond_1ee
    invoke-static {v8}, Landroidx/appcompat/widget/z;->b([I)[I

    move-result-object v6

    iput-object v6, v11, Landroidx/appcompat/widget/z;->f:[I

    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->h()Z

    :cond_1f7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1fa
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->i()Z

    move-result v5

    const/4 v6, 0x2

    const/high16 v8, 0x3f800000  # 1.0f

    if-eqz v5, :cond_239

    iget v5, v11, Landroidx/appcompat/widget/z;->a:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_23b

    iget-boolean v5, v11, Landroidx/appcompat/widget/z;->g:Z

    if-nez v5, :cond_235

    iget-object v5, v11, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    cmpl-float v14, v2, v3

    if-nez v14, :cond_223

    const/high16 v2, 0x41400000  # 12.0f

    invoke-static {v6, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_223
    cmpl-float v14, v4, v3

    if-nez v14, :cond_22d

    const/high16 v4, 0x42e00000  # 112.0f

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    :cond_22d
    cmpl-float v5, v1, v3

    if-nez v5, :cond_232

    move v1, v8

    :cond_232
    invoke-virtual {v11, v2, v4, v1}, Landroidx/appcompat/widget/z;->j(FFF)V

    :cond_235
    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->g()Z

    goto :goto_23b

    :cond_239
    iput v13, v11, Landroidx/appcompat/widget/z;->a:I

    :cond_23b
    :goto_23b
    sget-boolean v1, Landroidx/appcompat/widget/h1;->b:Z

    if-eqz v1, :cond_278

    iget-object v1, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    iget v2, v1, Landroidx/appcompat/widget/z;->a:I

    if-eqz v2, :cond_278

    iget-object v1, v1, Landroidx/appcompat/widget/z;->f:[I

    array-length v2, v1

    if-lez v2, :cond_278

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/appcompat/widget/v$d;->a(Landroid/widget/TextView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_273

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget-object v2, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    iget v2, v2, Landroidx/appcompat/widget/z;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    iget v3, v3, Landroidx/appcompat/widget/z;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    iget v4, v4, Landroidx/appcompat/widget/z;->c:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v2, v3, v4, v13}, Landroidx/appcompat/widget/v$d;->b(Landroid/widget/TextView;IIII)V

    goto :goto_278

    :cond_273
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v2, v1, v13}, Landroidx/appcompat/widget/v$d;->c(Landroid/widget/TextView;[II)V

    :cond_278
    :goto_278
    sget-object v1, Lh/j;->AppCompatTextView:[I

    new-instance v2, Landroidx/appcompat/widget/y0;

    invoke-virtual {v9, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget v1, Lh/j;->AppCompatTextView_drawableLeftCompat:I

    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v1

    if-eq v1, v12, :cond_290

    invoke-virtual {v10, v9, v1}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_291

    :cond_290
    const/4 v1, 0x0

    :goto_291
    sget v3, Lh/j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v2, v3, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    if-eq v3, v12, :cond_29e

    invoke-virtual {v10, v9, v3}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_29f

    :cond_29e
    const/4 v3, 0x0

    :goto_29f
    sget v4, Lh/j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v2, v4, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v4

    if-eq v4, v12, :cond_2ac

    invoke-virtual {v10, v9, v4}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2ad

    :cond_2ac
    const/4 v4, 0x0

    :goto_2ad
    sget v5, Lh/j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v2, v5, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v5

    if-eq v5, v12, :cond_2ba

    invoke-virtual {v10, v9, v5}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2bb

    :cond_2ba
    const/4 v5, 0x0

    :goto_2bb
    sget v7, Lh/j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v2, v7, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v7

    if-eq v7, v12, :cond_2c8

    invoke-virtual {v10, v9, v7}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2c9

    :cond_2c8
    const/4 v7, 0x0

    :goto_2c9
    sget v11, Lh/j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v2, v11, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v11

    if-eq v11, v12, :cond_2d6

    invoke-virtual {v10, v9, v11}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_2d7

    :cond_2d6
    const/4 v9, 0x0

    :goto_2d7
    const/4 v10, 0x3

    if-nez v7, :cond_328

    if-eqz v9, :cond_2dd

    goto :goto_328

    :cond_2dd
    if-nez v1, :cond_2e5

    if-nez v3, :cond_2e5

    if-nez v4, :cond_2e5

    if-eqz v5, :cond_348

    :cond_2e5
    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v7}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v9, v7, v13

    if-nez v9, :cond_315

    aget-object v11, v7, v6

    if-eqz v11, :cond_2f4

    goto :goto_315

    :cond_2f4
    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v9, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2ff

    goto :goto_301

    :cond_2ff
    aget-object v1, v7, v13

    :goto_301
    if-eqz v3, :cond_304

    goto :goto_307

    :cond_304
    const/4 v3, 0x1

    aget-object v3, v7, v3

    :goto_307
    if-eqz v4, :cond_30a

    goto :goto_30c

    :cond_30a
    aget-object v4, v7, v6

    :goto_30c
    if-eqz v5, :cond_30f

    goto :goto_311

    :cond_30f
    aget-object v5, v7, v10

    :goto_311
    invoke-virtual {v9, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_348

    :cond_315
    :goto_315
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_31a

    goto :goto_31d

    :cond_31a
    const/4 v3, 0x1

    aget-object v3, v7, v3

    :goto_31d
    aget-object v4, v7, v6

    if-eqz v5, :cond_322

    goto :goto_324

    :cond_322
    aget-object v5, v7, v10

    :goto_324
    invoke-static {v1, v9, v3, v4, v5}, Landroidx/appcompat/widget/v$b;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_348

    :cond_328
    :goto_328
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_333

    goto :goto_335

    :cond_333
    aget-object v7, v1, v13

    :goto_335
    if-eqz v3, :cond_338

    goto :goto_33b

    :cond_338
    const/4 v3, 0x1

    aget-object v3, v1, v3

    :goto_33b
    if-eqz v9, :cond_33e

    goto :goto_340

    :cond_33e
    aget-object v9, v1, v6

    :goto_340
    if-eqz v5, :cond_343

    goto :goto_345

    :cond_343
    aget-object v5, v1, v10

    :goto_345
    invoke-static {v4, v7, v3, v9, v5}, Landroidx/appcompat/widget/v$b;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_348
    :goto_348
    sget v1, Lh/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_35c

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Landroidx/core/widget/k$c;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_35c
    sget v1, Lh/j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_375

    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Landroidx/core/widget/k$c;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    :cond_375
    sget v1, Lh/j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v1

    sget v3, Lh/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v2, v3, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v3

    sget v4, Lh/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v2, v4, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v4

    invoke-virtual {v2}, Landroidx/appcompat/widget/y0;->n()V

    if-eq v1, v12, :cond_391

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/k;->b(Landroid/widget/TextView;I)V

    :cond_391
    if-eq v3, v12, :cond_398

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/k;->c(Landroid/widget/TextView;I)V

    :cond_398
    if-eq v4, v12, :cond_3af

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v4}, La/b;->n(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    if-eq v4, v2, :cond_3af

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v1, v2, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_3af
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .registers 7

    sget-object v0, Lh/j;->TextAppearance:[I

    new-instance v1, Landroidx/appcompat/widget/y0;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget p2, Lh/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1d
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Lh/j;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_34
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    const/16 p1, 0x1a

    if-lt p2, p1, :cond_4e

    sget p1, Lh/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {p2, p1}, Landroidx/appcompat/widget/v$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_4e
    invoke-virtual {v1}, Landroidx/appcompat/widget/y0;->n()V

    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_5c

    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5c
    return-void
.end method

.method public final i(IIII)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/z;->j(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    :cond_2d
    return-void
.end method

.method public final j([II)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_55

    new-array v3, v1, [I

    if-nez p2, :cond_15

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_31

    :cond_15
    iget-object v4, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_1f
    if-ge v2, v1, :cond_31

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_31
    :goto_31
    invoke-static {v3}, Landroidx/appcompat/widget/z;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/z;->f:[I

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->h()Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_57

    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_55
    iput-boolean v2, v0, Landroidx/appcompat/widget/z;->g:Z

    :goto_57
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    :cond_60
    return-void
.end method

.method public final k(I)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    move-result v1

    if-eqz v1, :cond_50

    if-eqz p1, :cond_3f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_33

    iget-object p1, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000  # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000  # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/z;->j(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    goto :goto_50

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    const/4 p1, 0x0

    iput p1, v0, Landroidx/appcompat/widget/z;->a:I

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Landroidx/appcompat/widget/z;->d:F

    iput v1, v0, Landroidx/appcompat/widget/z;->e:F

    iput v1, v0, Landroidx/appcompat/widget/z;->c:F

    new-array v1, p1, [I

    iput-object v1, v0, Landroidx/appcompat/widget/z;->f:[I

    iput-boolean p1, v0, Landroidx/appcompat/widget/z;->b:Z

    :cond_50
    :goto_50
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/w0;

    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    iput-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/w0;

    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    iput-object p1, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->c:Z

    iput-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    iput-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    return-void
.end method

.method public final n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V
    .registers 13

    sget v0, Lh/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_23

    sget v5, Lh/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/v;->k:I

    if-eq v5, v3, :cond_23

    iget v5, p0, Landroidx/appcompat/widget/v;->j:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, Landroidx/appcompat/widget/v;->j:I

    :cond_23
    sget v5, Lh/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5a

    sget v6, Lh/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_5a

    :cond_35
    sget p1, Lh/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_59

    iput-boolean v4, p0, Landroidx/appcompat/widget/v;->m:Z

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result p1

    if-eq p1, v7, :cond_55

    if-eq p1, v2, :cond_50

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4b

    goto :goto_59

    :cond_4b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    goto :goto_59

    :cond_50
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    goto :goto_59

    :cond_55
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    :cond_59
    :goto_59
    return-void

    :cond_5a
    :goto_5a
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    sget v6, Lh/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_66

    move v5, v6

    :cond_66
    iget v6, p0, Landroidx/appcompat/widget/v;->k:I

    iget v8, p0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_aa

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v9, Landroidx/appcompat/widget/v$a;

    invoke-direct {v9, p0, v6, v8, p1}, Landroidx/appcompat/widget/v$a;-><init>(Landroidx/appcompat/widget/v;IILjava/lang/ref/WeakReference;)V

    :try_start_7c
    iget p1, p0, Landroidx/appcompat/widget/v;->j:I

    invoke-virtual {p2, v5, p1, v9}, Landroidx/appcompat/widget/y0;->g(IILandroidx/appcompat/widget/v$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a1

    if-lt v0, v1, :cond_9f

    iget v0, p0, Landroidx/appcompat/widget/v;->k:I

    if-eq v0, v3, :cond_9f

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/v;->k:I

    iget v6, p0, Landroidx/appcompat/widget/v;->j:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_97

    move v6, v7

    goto :goto_98

    :cond_97
    move v6, v4

    :goto_98
    invoke-static {p1, v0, v6}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    goto :goto_a1

    :cond_9f
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    :cond_a1
    :goto_a1
    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_a7

    move p1, v7

    goto :goto_a8

    :cond_a7
    move p1, v4

    :goto_a8
    iput-boolean p1, p0, Landroidx/appcompat/widget/v;->m:Z
    :try_end_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7c .. :try_end_aa} :catch_aa
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7c .. :try_end_aa} :catch_aa

    :catch_aa
    :cond_aa
    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_d7

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_cf

    iget p2, p0, Landroidx/appcompat/widget/v;->k:I

    if-eq p2, v3, :cond_cf

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/v;->k:I

    iget v0, p0, Landroidx/appcompat/widget/v;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c8

    move v4, v7

    :cond_c8
    invoke-static {p1, p2, v4}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    goto :goto_d7

    :cond_cf
    iget p2, p0, Landroidx/appcompat/widget/v;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    :cond_d7
    :goto_d7
    return-void
.end method
