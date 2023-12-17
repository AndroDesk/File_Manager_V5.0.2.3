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
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/v;->k:I

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 12
    new-instance v0, Landroidx/appcompat/widget/z;

    .line 14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;
    .registers 4

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/n0;

    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/n0;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_15

    .line 11
    new-instance p1, Landroidx/appcompat/widget/w0;

    .line 13
    invoke-direct {p1}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/w0;->d:Z

    .line 19
    iput-object p0, p1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 21
    return-object p1

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    monitor-exit p1

    .line 26
    throw p0
.end method

.method public static h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-ge v0, v1, :cond_ce

    .line 7
    if-eqz p1, :cond_ce

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    move-result-object p0

    .line 13
    if-lt v0, v1, :cond_13

    .line 15
    invoke-static {p2, p0}, Landroidx/core/content/a;->v(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 18
    goto/16 :goto_ce

    .line 20
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    if-lt v0, v1, :cond_1d

    .line 25
    invoke-static {p2, p0}, Landroidx/core/content/a;->v(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 28
    goto/16 :goto_ce

    .line 30
    :cond_1d
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 32
    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 34
    if-le p1, v0, :cond_26

    .line 36
    add-int/lit8 v1, v0, 0x0

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    add-int/lit8 v1, p1, 0x0

    .line 41
    :goto_28
    const/4 v2, 0x0

    .line 42
    if-le p1, v0, :cond_2d

    .line 44
    sub-int/2addr p1, v2

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    add-int/lit8 p1, v0, 0x0

    .line 48
    :goto_2f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 51
    move-result v0

    .line 52
    const/4 v3, 0x0

    .line 53
    if-ltz v1, :cond_cb

    .line 55
    if-le p1, v0, :cond_3a

    .line 57
    goto/16 :goto_cb

    .line 59
    :cond_3a
    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 61
    and-int/lit16 v4, v4, 0xfff

    .line 63
    const/16 v5, 0x81

    .line 65
    const/4 v6, 0x1

    .line 66
    if-eq v4, v5, :cond_4e

    .line 68
    const/16 v5, 0xe1

    .line 70
    if-eq v4, v5, :cond_4e

    .line 72
    const/16 v5, 0x12

    .line 74
    if-ne v4, v5, :cond_4c

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    move v4, v2

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    :goto_4e
    move v4, v6

    .line 80
    :goto_4f
    if-eqz v4, :cond_56

    .line 82
    invoke-static {p2, v3, v2, v2}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 85
    goto/16 :goto_ce

    .line 87
    :cond_56
    const/16 v3, 0x800

    .line 89
    if-gt v0, v3, :cond_5f

    .line 91
    invoke-static {p2, p0, v1, p1}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 94
    goto/16 :goto_ce

    .line 96
    :cond_5f
    sub-int v0, p1, v1

    .line 98
    const/16 v3, 0x400

    .line 100
    if-le v0, v3, :cond_67

    .line 102
    move v3, v2

    .line 103
    goto :goto_68

    .line 104
    :cond_67
    move v3, v0

    .line 105
    :goto_68
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 108
    move-result v4

    .line 109
    sub-int/2addr v4, p1

    .line 110
    rsub-int v5, v3, 0x800

    .line 112
    const-wide v7, 0x3fe999999999999aL  # 0.8

    .line 117
    int-to-double v9, v5

    .line 118
    mul-double/2addr v9, v7

    .line 119
    double-to-int v7, v9

    .line 120
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 123
    move-result v7

    .line 124
    sub-int v7, v5, v7

    .line 126
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 129
    move-result v4

    .line 130
    sub-int/2addr v5, v4

    .line 131
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 134
    move-result v5

    .line 135
    sub-int/2addr v1, v5

    .line 136
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 139
    move-result v7

    .line 140
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_95

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    add-int/lit8 v5, v5, -0x1

    .line 150
    :cond_95
    add-int v7, p1, v4

    .line 152
    sub-int/2addr v7, v6

    .line 153
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 156
    move-result v7

    .line 157
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_a4

    .line 163
    add-int/lit8 v4, v4, -0x1

    .line 165
    :cond_a4
    add-int v7, v5, v3

    .line 167
    add-int/2addr v7, v4

    .line 168
    if-eq v3, v0, :cond_c0

    .line 170
    add-int v0, v1, v5

    .line 172
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 175
    move-result-object v0

    .line 176
    add-int/2addr v4, p1

    .line 177
    invoke-interface {p0, p1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    move-result-object p0

    .line 181
    const/4 p1, 0x2

    .line 182
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 184
    aput-object v0, p1, v2

    .line 186
    aput-object p0, p1, v6

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    move-result-object p0

    .line 192
    goto :goto_c5

    .line 193
    :cond_c0
    add-int/2addr v7, v1

    .line 194
    invoke-interface {p0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 197
    move-result-object p0

    .line 198
    :goto_c5
    add-int/2addr v5, v2

    .line 199
    add-int/2addr v3, v5

    .line 200
    invoke-static {p2, p0, v5, v3}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 203
    goto :goto_ce

    .line 204
    :cond_cb
    :goto_cb
    invoke-static {p2, v3, v2, v2}, Lp0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 207
    :cond_ce
    :goto_ce
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_d

    .line 3
    if-eqz p2, :cond_d

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/g;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;[I)V

    .line 14
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_12

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    .line 9
    if-nez v0, :cond_12

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    .line 13
    if-nez v0, :cond_12

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    .line 17
    if-eqz v0, :cond_36

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v0

    .line 25
    aget-object v3, v0, v2

    .line 27
    iget-object v4, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    .line 29
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 32
    const/4 v3, 0x1

    .line 33
    aget-object v3, v0, v3

    .line 35
    iget-object v4, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    .line 37
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 40
    aget-object v3, v0, v1

    .line 42
    iget-object v4, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    .line 44
    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 47
    const/4 v3, 0x3

    .line 48
    aget-object v0, v0, v3

    .line 50
    iget-object v3, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    .line 52
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    .line 57
    if-nez v0, :cond_3e

    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    .line 61
    if-eqz v0, :cond_52

    .line 63
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 65
    invoke-static {v0}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 71
    iget-object v3, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    .line 73
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 76
    aget-object v0, v0, v1

    .line 78
    iget-object v1, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/w0;)V

    .line 83
    :cond_52
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move/from16 v8, p2

    .line 7
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v9

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/g;->a()Landroidx/appcompat/widget/g;

    .line 16
    move-result-object v10

    .line 17
    sget-object v3, Lh/j;->AppCompatTextHelper:[I

    .line 19
    invoke-static {v9, v7, v3, v8}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 22
    move-result-object v11

    .line 23
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    iget-object v5, v11, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    .line 31
    move-object/from16 v4, p1

    .line 33
    move/from16 v6, p2

    .line 35
    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 38
    sget v1, Lh/j;->AppCompatTextHelper_android_textAppearance:I

    .line 40
    const/4 v12, -0x1

    .line 41
    invoke-virtual {v11, v1, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 44
    move-result v1

    .line 45
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableLeft:I

    .line 47
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 50
    move-result v3

    .line 51
    const/4 v13, 0x0

    .line 52
    if-eqz v3, :cond_3f

    .line 54
    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 57
    move-result v2

    .line 58
    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 61
    move-result-object v2

    .line 62
    iput-object v2, v0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    .line 64
    :cond_3f
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableTop:I

    .line 66
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_51

    .line 72
    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 75
    move-result v2

    .line 76
    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 79
    move-result-object v2

    .line 80
    iput-object v2, v0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    .line 82
    :cond_51
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableRight:I

    .line 84
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_63

    .line 90
    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 93
    move-result v2

    .line 94
    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 97
    move-result-object v2

    .line 98
    iput-object v2, v0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    .line 100
    :cond_63
    sget v2, Lh/j;->AppCompatTextHelper_android_drawableBottom:I

    .line 102
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_75

    .line 108
    invoke-virtual {v11, v2, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 111
    move-result v2

    .line 112
    invoke-static {v9, v10, v2}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 115
    move-result-object v2

    .line 116
    iput-object v2, v0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    .line 118
    :cond_75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    sget v3, Lh/j;->AppCompatTextHelper_android_drawableStart:I

    .line 122
    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_89

    .line 128
    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 131
    move-result v3

    .line 132
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 135
    move-result-object v3

    .line 136
    iput-object v3, v0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    .line 138
    :cond_89
    sget v3, Lh/j;->AppCompatTextHelper_android_drawableEnd:I

    .line 140
    invoke-virtual {v11, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_9b

    .line 146
    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 149
    move-result v3

    .line 150
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/v;->c(Landroid/content/Context;Landroidx/appcompat/widget/g;I)Landroidx/appcompat/widget/w0;

    .line 153
    move-result-object v3

    .line 154
    iput-object v3, v0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    .line 156
    :cond_9b
    invoke-virtual {v11}, Landroidx/appcompat/widget/y0;->n()V

    .line 159
    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 161
    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 164
    move-result-object v3

    .line 165
    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    .line 167
    const/16 v4, 0x1a

    .line 169
    if-eq v1, v12, :cond_ec

    .line 171
    sget-object v5, Lh/j;->TextAppearance:[I

    .line 173
    new-instance v6, Landroidx/appcompat/widget/y0;

    .line 175
    invoke-virtual {v9, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v6, v9, v1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 182
    if-nez v3, :cond_c5

    .line 184
    sget v1, Lh/j;->TextAppearance_textAllCaps:I

    .line 186
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_c5

    .line 192
    invoke-virtual {v6, v1, v13}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 195
    move-result v1

    .line 196
    const/4 v5, 0x1

    .line 197
    goto :goto_c7

    .line 198
    :cond_c5
    move v1, v13

    .line 199
    move v5, v1

    .line 200
    :goto_c7
    invoke-virtual {v0, v9, v6}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    .line 203
    sget v15, Lh/j;->TextAppearance_textLocale:I

    .line 205
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_d7

    .line 211
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 214
    move-result-object v15

    .line 215
    goto :goto_d8

    .line 216
    :cond_d7
    const/4 v15, 0x0

    .line 217
    :goto_d8
    if-lt v2, v4, :cond_e7

    .line 219
    sget v14, Lh/j;->TextAppearance_fontVariationSettings:I

    .line 221
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 224
    move-result v17

    .line 225
    if-eqz v17, :cond_e7

    .line 227
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 230
    move-result-object v14

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    const/4 v14, 0x0

    .line 233
    :goto_e8
    invoke-virtual {v6}, Landroidx/appcompat/widget/y0;->n()V

    .line 236
    goto :goto_f0

    .line 237
    :cond_ec
    move v1, v13

    .line 238
    move v5, v1

    .line 239
    const/4 v14, 0x0

    .line 240
    const/4 v15, 0x0

    .line 241
    :goto_f0
    sget-object v6, Lh/j;->TextAppearance:[I

    .line 243
    new-instance v11, Landroidx/appcompat/widget/y0;

    .line 245
    invoke-virtual {v9, v7, v6, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 248
    move-result-object v6

    .line 249
    invoke-direct {v11, v9, v6}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 252
    if-nez v3, :cond_10a

    .line 254
    sget v6, Lh/j;->TextAppearance_textAllCaps:I

    .line 256
    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 259
    move-result v18

    .line 260
    if-eqz v18, :cond_10a

    .line 262
    invoke-virtual {v11, v6, v13}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 265
    move-result v1

    .line 266
    const/4 v5, 0x1

    .line 267
    :cond_10a
    sget v6, Lh/j;->TextAppearance_textLocale:I

    .line 269
    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 272
    move-result v18

    .line 273
    if-eqz v18, :cond_116

    .line 275
    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 278
    move-result-object v15

    .line 279
    :cond_116
    if-lt v2, v4, :cond_124

    .line 281
    sget v4, Lh/j;->TextAppearance_fontVariationSettings:I

    .line 283
    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_124

    .line 289
    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 292
    move-result-object v14

    .line 293
    :cond_124
    const/16 v4, 0x1c

    .line 295
    if-lt v2, v4, :cond_13c

    .line 297
    sget v2, Lh/j;->TextAppearance_android_textSize:I

    .line 299
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_13c

    .line 305
    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    .line 308
    move-result v2

    .line 309
    if-nez v2, :cond_13c

    .line 311
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 313
    const/4 v4, 0x0

    .line 314
    invoke-virtual {v2, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    :cond_13c
    invoke-virtual {v0, v9, v11}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    .line 320
    invoke-virtual {v11}, Landroidx/appcompat/widget/y0;->n()V

    .line 323
    if-nez v3, :cond_14b

    .line 325
    if-eqz v5, :cond_14b

    .line 327
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 329
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 332
    :cond_14b
    iget-object v1, v0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 334
    if-eqz v1, :cond_160

    .line 336
    iget v2, v0, Landroidx/appcompat/widget/v;->k:I

    .line 338
    if-ne v2, v12, :cond_15b

    .line 340
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 342
    iget v3, v0, Landroidx/appcompat/widget/v;->j:I

    .line 344
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 347
    goto :goto_160

    .line 348
    :cond_15b
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 350
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 353
    :cond_160
    :goto_160
    if-eqz v14, :cond_167

    .line 355
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 357
    invoke-static {v1, v14}, Landroidx/appcompat/widget/v$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 360
    :cond_167
    if-eqz v15, :cond_172

    .line 362
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 364
    invoke-static {v15}, Landroidx/appcompat/widget/v$c;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 367
    move-result-object v2

    .line 368
    invoke-static {v1, v2}, Landroidx/appcompat/widget/v$c;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 371
    :cond_172
    iget-object v11, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 373
    iget-object v1, v11, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    .line 375
    sget-object v3, Lh/j;->AppCompatTextView:[I

    .line 377
    invoke-virtual {v1, v7, v3, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 380
    move-result-object v14

    .line 381
    iget-object v1, v11, Landroidx/appcompat/widget/z;->i:Landroid/widget/TextView;

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 386
    move-result-object v2

    .line 387
    move-object/from16 v4, p1

    .line 389
    move-object v5, v14

    .line 390
    move/from16 v6, p2

    .line 392
    invoke-static/range {v1 .. v6}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 395
    sget v1, Lh/j;->AppCompatTextView_autoSizeTextType:I

    .line 397
    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_198

    .line 403
    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 406
    move-result v1

    .line 407
    iput v1, v11, Landroidx/appcompat/widget/z;->a:I

    .line 409
    :cond_198
    sget v1, Lh/j;->AppCompatTextView_autoSizeStepGranularity:I

    .line 411
    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 414
    move-result v2

    .line 415
    const/high16 v3, -0x40800000  # -1.0f

    .line 417
    if-eqz v2, :cond_1a7

    .line 419
    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 422
    move-result v1

    .line 423
    goto :goto_1a8

    .line 424
    :cond_1a7
    move v1, v3

    .line 425
    :goto_1a8
    sget v2, Lh/j;->AppCompatTextView_autoSizeMinTextSize:I

    .line 427
    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 430
    move-result v4

    .line 431
    if-eqz v4, :cond_1b5

    .line 433
    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 436
    move-result v2

    .line 437
    goto :goto_1b6

    .line 438
    :cond_1b5
    move v2, v3

    .line 439
    :goto_1b6
    sget v4, Lh/j;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 441
    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_1c3

    .line 447
    invoke-virtual {v14, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 450
    move-result v4

    .line 451
    goto :goto_1c4

    .line 452
    :cond_1c3
    move v4, v3

    .line 453
    :goto_1c4
    sget v5, Lh/j;->AppCompatTextView_autoSizePresetSizes:I

    .line 455
    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_1fa

    .line 461
    invoke-virtual {v14, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 464
    move-result v5

    .line 465
    if-lez v5, :cond_1fa

    .line 467
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 474
    move-result-object v5

    .line 475
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 478
    move-result v6

    .line 479
    new-array v8, v6, [I

    .line 481
    if-lez v6, :cond_1f7

    .line 483
    move v15, v13

    .line 484
    :goto_1e3
    if-ge v15, v6, :cond_1ee

    .line 486
    invoke-virtual {v5, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 489
    move-result v18

    .line 490
    aput v18, v8, v15

    .line 492
    add-int/lit8 v15, v15, 0x1

    .line 494
    goto :goto_1e3

    .line 495
    :cond_1ee
    invoke-static {v8}, Landroidx/appcompat/widget/z;->b([I)[I

    .line 498
    move-result-object v6

    .line 499
    iput-object v6, v11, Landroidx/appcompat/widget/z;->f:[I

    .line 501
    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->h()Z

    .line 504
    :cond_1f7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 507
    :cond_1fa
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->i()Z

    .line 513
    move-result v5

    .line 514
    const/4 v6, 0x2

    .line 515
    const/high16 v8, 0x3f800000  # 1.0f

    .line 517
    if-eqz v5, :cond_239

    .line 519
    iget v5, v11, Landroidx/appcompat/widget/z;->a:I

    .line 521
    const/4 v14, 0x1

    .line 522
    if-ne v5, v14, :cond_23b

    .line 524
    iget-boolean v5, v11, Landroidx/appcompat/widget/z;->g:Z

    .line 526
    if-nez v5, :cond_235

    .line 528
    iget-object v5, v11, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    .line 530
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 537
    move-result-object v5

    .line 538
    cmpl-float v14, v2, v3

    .line 540
    if-nez v14, :cond_223

    .line 542
    const/high16 v2, 0x41400000  # 12.0f

    .line 544
    invoke-static {v6, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 547
    move-result v2

    .line 548
    :cond_223
    cmpl-float v14, v4, v3

    .line 550
    if-nez v14, :cond_22d

    .line 552
    const/high16 v4, 0x42e00000  # 112.0f

    .line 554
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 557
    move-result v4

    .line 558
    :cond_22d
    cmpl-float v5, v1, v3

    .line 560
    if-nez v5, :cond_232

    .line 562
    move v1, v8

    .line 563
    :cond_232
    invoke-virtual {v11, v2, v4, v1}, Landroidx/appcompat/widget/z;->j(FFF)V

    .line 566
    :cond_235
    invoke-virtual {v11}, Landroidx/appcompat/widget/z;->g()Z

    .line 569
    goto :goto_23b

    .line 570
    :cond_239
    iput v13, v11, Landroidx/appcompat/widget/z;->a:I

    .line 572
    :cond_23b
    :goto_23b
    sget-boolean v1, Landroidx/appcompat/widget/h1;->b:Z

    .line 574
    if-eqz v1, :cond_278

    .line 576
    iget-object v1, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 578
    iget v2, v1, Landroidx/appcompat/widget/z;->a:I

    .line 580
    if-eqz v2, :cond_278

    .line 582
    iget-object v1, v1, Landroidx/appcompat/widget/z;->f:[I

    .line 584
    array-length v2, v1

    .line 585
    if-lez v2, :cond_278

    .line 587
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 589
    invoke-static {v2}, Landroidx/appcompat/widget/v$d;->a(Landroid/widget/TextView;)I

    .line 592
    move-result v2

    .line 593
    int-to-float v2, v2

    .line 594
    cmpl-float v2, v2, v3

    .line 596
    if-eqz v2, :cond_273

    .line 598
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 600
    iget-object v2, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 602
    iget v2, v2, Landroidx/appcompat/widget/z;->d:F

    .line 604
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 607
    move-result v2

    .line 608
    iget-object v3, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 610
    iget v3, v3, Landroidx/appcompat/widget/z;->e:F

    .line 612
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 615
    move-result v3

    .line 616
    iget-object v4, v0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 618
    iget v4, v4, Landroidx/appcompat/widget/z;->c:F

    .line 620
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 623
    move-result v4

    .line 624
    invoke-static {v1, v2, v3, v4, v13}, Landroidx/appcompat/widget/v$d;->b(Landroid/widget/TextView;IIII)V

    .line 627
    goto :goto_278

    .line 628
    :cond_273
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 630
    invoke-static {v2, v1, v13}, Landroidx/appcompat/widget/v$d;->c(Landroid/widget/TextView;[II)V

    .line 633
    :cond_278
    :goto_278
    sget-object v1, Lh/j;->AppCompatTextView:[I

    .line 635
    new-instance v2, Landroidx/appcompat/widget/y0;

    .line 637
    invoke-virtual {v9, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 640
    move-result-object v1

    .line 641
    invoke-direct {v2, v9, v1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 644
    sget v1, Lh/j;->AppCompatTextView_drawableLeftCompat:I

    .line 646
    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 649
    move-result v1

    .line 650
    if-eq v1, v12, :cond_290

    .line 652
    invoke-virtual {v10, v9, v1}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 655
    move-result-object v1

    .line 656
    goto :goto_291

    .line 657
    :cond_290
    const/4 v1, 0x0

    .line 658
    :goto_291
    sget v3, Lh/j;->AppCompatTextView_drawableTopCompat:I

    .line 660
    invoke-virtual {v2, v3, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 663
    move-result v3

    .line 664
    if-eq v3, v12, :cond_29e

    .line 666
    invoke-virtual {v10, v9, v3}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 669
    move-result-object v3

    .line 670
    goto :goto_29f

    .line 671
    :cond_29e
    const/4 v3, 0x0

    .line 672
    :goto_29f
    sget v4, Lh/j;->AppCompatTextView_drawableRightCompat:I

    .line 674
    invoke-virtual {v2, v4, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 677
    move-result v4

    .line 678
    if-eq v4, v12, :cond_2ac

    .line 680
    invoke-virtual {v10, v9, v4}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 683
    move-result-object v4

    .line 684
    goto :goto_2ad

    .line 685
    :cond_2ac
    const/4 v4, 0x0

    .line 686
    :goto_2ad
    sget v5, Lh/j;->AppCompatTextView_drawableBottomCompat:I

    .line 688
    invoke-virtual {v2, v5, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 691
    move-result v5

    .line 692
    if-eq v5, v12, :cond_2ba

    .line 694
    invoke-virtual {v10, v9, v5}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 697
    move-result-object v5

    .line 698
    goto :goto_2bb

    .line 699
    :cond_2ba
    const/4 v5, 0x0

    .line 700
    :goto_2bb
    sget v7, Lh/j;->AppCompatTextView_drawableStartCompat:I

    .line 702
    invoke-virtual {v2, v7, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 705
    move-result v7

    .line 706
    if-eq v7, v12, :cond_2c8

    .line 708
    invoke-virtual {v10, v9, v7}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 711
    move-result-object v7

    .line 712
    goto :goto_2c9

    .line 713
    :cond_2c8
    const/4 v7, 0x0

    .line 714
    :goto_2c9
    sget v11, Lh/j;->AppCompatTextView_drawableEndCompat:I

    .line 716
    invoke-virtual {v2, v11, v12}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 719
    move-result v11

    .line 720
    if-eq v11, v12, :cond_2d6

    .line 722
    invoke-virtual {v10, v9, v11}, Landroidx/appcompat/widget/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 725
    move-result-object v9

    .line 726
    goto :goto_2d7

    .line 727
    :cond_2d6
    const/4 v9, 0x0

    .line 728
    :goto_2d7
    const/4 v10, 0x3

    .line 729
    if-nez v7, :cond_328

    .line 731
    if-eqz v9, :cond_2dd

    .line 733
    goto :goto_328

    .line 734
    :cond_2dd
    if-nez v1, :cond_2e5

    .line 736
    if-nez v3, :cond_2e5

    .line 738
    if-nez v4, :cond_2e5

    .line 740
    if-eqz v5, :cond_348

    .line 742
    :cond_2e5
    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 744
    invoke-static {v7}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 747
    move-result-object v7

    .line 748
    aget-object v9, v7, v13

    .line 750
    if-nez v9, :cond_315

    .line 752
    aget-object v11, v7, v6

    .line 754
    if-eqz v11, :cond_2f4

    .line 756
    goto :goto_315

    .line 757
    :cond_2f4
    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 759
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 762
    move-result-object v7

    .line 763
    iget-object v9, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 765
    if-eqz v1, :cond_2ff

    .line 767
    goto :goto_301

    .line 768
    :cond_2ff
    aget-object v1, v7, v13

    .line 770
    :goto_301
    if-eqz v3, :cond_304

    .line 772
    goto :goto_307

    .line 773
    :cond_304
    const/4 v3, 0x1

    .line 774
    aget-object v3, v7, v3

    .line 776
    :goto_307
    if-eqz v4, :cond_30a

    .line 778
    goto :goto_30c

    .line 779
    :cond_30a
    aget-object v4, v7, v6

    .line 781
    :goto_30c
    if-eqz v5, :cond_30f

    .line 783
    goto :goto_311

    .line 784
    :cond_30f
    aget-object v5, v7, v10

    .line 786
    :goto_311
    invoke-virtual {v9, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 789
    goto :goto_348

    .line 790
    :cond_315
    :goto_315
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 792
    if-eqz v3, :cond_31a

    .line 794
    goto :goto_31d

    .line 795
    :cond_31a
    const/4 v3, 0x1

    .line 796
    aget-object v3, v7, v3

    .line 798
    :goto_31d
    aget-object v4, v7, v6

    .line 800
    if-eqz v5, :cond_322

    .line 802
    goto :goto_324

    .line 803
    :cond_322
    aget-object v5, v7, v10

    .line 805
    :goto_324
    invoke-static {v1, v9, v3, v4, v5}, Landroidx/appcompat/widget/v$b;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 808
    goto :goto_348

    .line 809
    :cond_328
    :goto_328
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 811
    invoke-static {v1}, Landroidx/appcompat/widget/v$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 814
    move-result-object v1

    .line 815
    iget-object v4, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 817
    if-eqz v7, :cond_333

    .line 819
    goto :goto_335

    .line 820
    :cond_333
    aget-object v7, v1, v13

    .line 822
    :goto_335
    if-eqz v3, :cond_338

    .line 824
    goto :goto_33b

    .line 825
    :cond_338
    const/4 v3, 0x1

    .line 826
    aget-object v3, v1, v3

    .line 828
    :goto_33b
    if-eqz v9, :cond_33e

    .line 830
    goto :goto_340

    .line 831
    :cond_33e
    aget-object v9, v1, v6

    .line 833
    :goto_340
    if-eqz v5, :cond_343

    .line 835
    goto :goto_345

    .line 836
    :cond_343
    aget-object v5, v1, v10

    .line 838
    :goto_345
    invoke-static {v4, v7, v3, v9, v5}, Landroidx/appcompat/widget/v$b;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 841
    :cond_348
    :goto_348
    sget v1, Lh/j;->AppCompatTextView_drawableTint:I

    .line 843
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 846
    move-result v3

    .line 847
    if-eqz v3, :cond_35c

    .line 849
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 852
    move-result-object v1

    .line 853
    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 855
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    invoke-static {v3, v1}, Landroidx/core/widget/k$c;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 861
    :cond_35c
    sget v1, Lh/j;->AppCompatTextView_drawableTintMode:I

    .line 863
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 866
    move-result v3

    .line 867
    if-eqz v3, :cond_375

    .line 869
    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 872
    move-result v1

    .line 873
    const/4 v3, 0x0

    .line 874
    invoke-static {v1, v3}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 877
    move-result-object v1

    .line 878
    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 880
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    invoke-static {v3, v1}, Landroidx/core/widget/k$c;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 886
    :cond_375
    sget v1, Lh/j;->AppCompatTextView_firstBaselineToTopHeight:I

    .line 888
    invoke-virtual {v2, v1, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    .line 891
    move-result v1

    .line 892
    sget v3, Lh/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 894
    invoke-virtual {v2, v3, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    .line 897
    move-result v3

    .line 898
    sget v4, Lh/j;->AppCompatTextView_lineHeight:I

    .line 900
    invoke-virtual {v2, v4, v12}, Landroidx/appcompat/widget/y0;->d(II)I

    .line 903
    move-result v4

    .line 904
    invoke-virtual {v2}, Landroidx/appcompat/widget/y0;->n()V

    .line 907
    if-eq v1, v12, :cond_391

    .line 909
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 911
    invoke-static {v2, v1}, Landroidx/core/widget/k;->b(Landroid/widget/TextView;I)V

    .line 914
    :cond_391
    if-eq v3, v12, :cond_398

    .line 916
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 918
    invoke-static {v1, v3}, Landroidx/core/widget/k;->c(Landroid/widget/TextView;I)V

    .line 921
    :cond_398
    if-eq v4, v12, :cond_3af

    .line 923
    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 925
    invoke-static {v4}, La/b;->n(I)V

    .line 928
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 931
    move-result-object v2

    .line 932
    const/4 v3, 0x0

    .line 933
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 936
    move-result v2

    .line 937
    if-eq v4, v2, :cond_3af

    .line 939
    sub-int/2addr v4, v2

    .line 940
    int-to-float v2, v4

    .line 941
    invoke-virtual {v1, v2, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 944
    :cond_3af
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .registers 7

    .line 1
    sget-object v0, Lh/j;->TextAppearance:[I

    .line 3
    new-instance v1, Landroidx/appcompat/widget/y0;

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 12
    sget p2, Lh/j;->TextAppearance_textAllCaps:I

    .line 14
    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1d

    .line 21
    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 24
    move-result p2

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 30
    :cond_1d
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    sget v0, Lh/j;->TextAppearance_android_textSize:I

    .line 34
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_34

    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/y0;->d(II)I

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_34

    .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    :cond_34
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/v;->n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V

    .line 56
    const/16 p1, 0x1a

    .line 58
    if-lt p2, p1, :cond_4e

    .line 60
    sget p1, Lh/j;->TextAppearance_fontVariationSettings:I

    .line 62
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_4e

    .line 68
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4e

    .line 74
    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 76
    invoke-static {p2, p1}, Landroidx/appcompat/widget/v$d;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 79
    :cond_4e
    invoke-virtual {v1}, Landroidx/appcompat/widget/y0;->n()V

    .line 82
    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 84
    if-eqz p1, :cond_5c

    .line 86
    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 88
    iget v0, p0, Landroidx/appcompat/widget/v;->j:I

    .line 90
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    :cond_5c
    return-void
.end method

.method public final i(IIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2d

    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/z;->j(FFF)V

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    .line 46
    :cond_2d
    return-void
.end method

.method public final j([II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_60

    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_55

    .line 13
    new-array v3, v1, [I

    .line 15
    if-nez p2, :cond_15

    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 20
    move-result-object v3

    .line 21
    goto :goto_31

    .line 22
    :cond_15
    iget-object v4, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object v4

    .line 32
    :goto_1f
    if-ge v2, v1, :cond_31

    .line 34
    aget v5, p1, v2

    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    :goto_31
    invoke-static {v3}, Landroidx/appcompat/widget/z;->b([I)[I

    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Landroidx/appcompat/widget/z;->f:[I

    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->h()Z

    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_3e

    .line 62
    goto :goto_57

    .line 63
    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v0, "None of the preset sizes is valid: "

    .line 67
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p2

    .line 86
    :cond_55
    iput-boolean v2, v0, Landroidx/appcompat/widget/z;->g:Z

    .line 88
    :goto_57
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_60

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    .line 97
    :cond_60
    return-void
.end method

.method public final k(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->i:Landroidx/appcompat/widget/z;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->i()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_50

    .line 9
    if-eqz p1, :cond_3f

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_33

    .line 14
    iget-object p1, v0, Landroidx/appcompat/widget/z;->j:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000  # 12.0f

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000  # 112.0f

    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000  # 1.0f

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/z;->j(FFF)V

    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_50

    .line 48
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()V

    .line 51
    goto :goto_50

    .line 52
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 56
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Landroidx/appcompat/widget/z;->a:I

    .line 67
    const/high16 v1, -0x40800000  # -1.0f

    .line 69
    iput v1, v0, Landroidx/appcompat/widget/z;->d:F

    .line 71
    iput v1, v0, Landroidx/appcompat/widget/z;->e:F

    .line 73
    iput v1, v0, Landroidx/appcompat/widget/z;->c:F

    .line 75
    new-array v1, p1, [I

    .line 77
    iput-object v1, v0, Landroidx/appcompat/widget/z;->f:[I

    .line 79
    iput-boolean p1, v0, Landroidx/appcompat/widget/z;->b:Z

    .line 81
    :cond_50
    :goto_50
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/w0;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 16
    if-eqz p1, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->d:Z

    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/w0;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/w0;

    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 16
    if-eqz p1, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/w0;->c:Z

    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/w0;

    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/w0;

    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/w0;

    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/w0;

    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/w0;

    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/w0;

    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;Landroidx/appcompat/widget/y0;)V
    .registers 13

    .line 1
    sget v0, Lh/j;->TextAppearance_android_textStyle:I

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/v;->j:I

    .line 5
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1c

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lt v0, v1, :cond_23

    .line 20
    sget v5, Lh/j;->TextAppearance_android_textFontWeight:I

    .line 22
    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 25
    move-result v5

    .line 26
    iput v5, p0, Landroidx/appcompat/widget/v;->k:I

    .line 28
    if-eq v5, v3, :cond_23

    .line 30
    iget v5, p0, Landroidx/appcompat/widget/v;->j:I

    .line 32
    and-int/2addr v5, v2

    .line 33
    or-int/2addr v5, v4

    .line 34
    iput v5, p0, Landroidx/appcompat/widget/v;->j:I

    .line 36
    :cond_23
    sget v5, Lh/j;->TextAppearance_android_fontFamily:I

    .line 38
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    if-nez v6, :cond_5a

    .line 45
    sget v6, Lh/j;->TextAppearance_fontFamily:I

    .line 47
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_35

    .line 53
    goto :goto_5a

    .line 54
    :cond_35
    sget p1, Lh/j;->TextAppearance_android_typeface:I

    .line 56
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_59

    .line 62
    iput-boolean v4, p0, Landroidx/appcompat/widget/v;->m:Z

    .line 64
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 67
    move-result p1

    .line 68
    if-eq p1, v7, :cond_55

    .line 70
    if-eq p1, v2, :cond_50

    .line 72
    const/4 p2, 0x3

    .line 73
    if-eq p1, p2, :cond_4b

    .line 75
    goto :goto_59

    .line 76
    :cond_4b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 78
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 80
    goto :goto_59

    .line 81
    :cond_50
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 83
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 85
    goto :goto_59

    .line 86
    :cond_55
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 88
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 90
    :cond_59
    :goto_59
    return-void

    .line 91
    :cond_5a
    :goto_5a
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 94
    sget v6, Lh/j;->TextAppearance_fontFamily:I

    .line 96
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_66

    .line 102
    move v5, v6

    .line 103
    :cond_66
    iget v6, p0, Landroidx/appcompat/widget/v;->k:I

    .line 105
    iget v8, p0, Landroidx/appcompat/widget/v;->j:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_aa

    .line 113
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 115
    iget-object v9, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 117
    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 120
    new-instance v9, Landroidx/appcompat/widget/v$a;

    .line 122
    invoke-direct {v9, p0, v6, v8, p1}, Landroidx/appcompat/widget/v$a;-><init>(Landroidx/appcompat/widget/v;IILjava/lang/ref/WeakReference;)V

    .line 125
    :try_start_7c
    iget p1, p0, Landroidx/appcompat/widget/v;->j:I

    .line 127
    invoke-virtual {p2, v5, p1, v9}, Landroidx/appcompat/widget/y0;->g(IILandroidx/appcompat/widget/v$a;)Landroid/graphics/Typeface;

    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_a1

    .line 133
    if-lt v0, v1, :cond_9f

    .line 135
    iget v0, p0, Landroidx/appcompat/widget/v;->k:I

    .line 137
    if-eq v0, v3, :cond_9f

    .line 139
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 142
    move-result-object p1

    .line 143
    iget v0, p0, Landroidx/appcompat/widget/v;->k:I

    .line 145
    iget v6, p0, Landroidx/appcompat/widget/v;->j:I

    .line 147
    and-int/2addr v6, v2

    .line 148
    if-eqz v6, :cond_97

    .line 150
    move v6, v7

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v6, v4

    .line 153
    :goto_98
    invoke-static {p1, v0, v6}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 159
    goto :goto_a1

    .line 160
    :cond_9f
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 162
    :cond_a1
    :goto_a1
    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 164
    if-nez p1, :cond_a7

    .line 166
    move p1, v7

    .line 167
    goto :goto_a8

    .line 168
    :cond_a7
    move p1, v4

    .line 169
    :goto_a8
    iput-boolean p1, p0, Landroidx/appcompat/widget/v;->m:Z
    :try_end_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7c .. :try_end_aa} :catch_aa
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7c .. :try_end_aa} :catch_aa

    .line 171
    :catch_aa
    :cond_aa
    iget-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 173
    if-nez p1, :cond_d7

    .line 175
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_d7

    .line 181
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    if-lt p2, v1, :cond_cf

    .line 185
    iget p2, p0, Landroidx/appcompat/widget/v;->k:I

    .line 187
    if-eq p2, v3, :cond_cf

    .line 189
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 192
    move-result-object p1

    .line 193
    iget p2, p0, Landroidx/appcompat/widget/v;->k:I

    .line 195
    iget v0, p0, Landroidx/appcompat/widget/v;->j:I

    .line 197
    and-int/2addr v0, v2

    .line 198
    if-eqz v0, :cond_c8

    .line 200
    move v4, v7

    .line 201
    :cond_c8
    invoke-static {p1, p2, v4}, Landroidx/appcompat/widget/v$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 207
    goto :goto_d7

    .line 208
    :cond_cf
    iget p2, p0, Landroidx/appcompat/widget/v;->j:I

    .line 210
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Landroidx/appcompat/widget/v;->l:Landroid/graphics/Typeface;

    .line 216
    :cond_d7
    :goto_d7
    return-void
.end method
