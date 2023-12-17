.class public final Landroidx/appcompat/widget/b1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/d0;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroidx/appcompat/widget/r0;

.field public d:Landroidx/appcompat/widget/AppCompatSpinner;

.field public e:Landroid/view/View;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/view/Window$Callback;

.field public n:Z

.field public o:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .registers 7

    .line 1
    sget v0, Lh/h;->abc_action_bar_up_description:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/appcompat/widget/b1;->p:I

    .line 9
    iput v1, p0, Landroidx/appcompat/widget/b1;->q:I

    .line 11
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    .line 25
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 27
    if-eqz v2, :cond_1e

    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    iput-boolean v2, p0, Landroidx/appcompat/widget/b1;->i:Z

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 44
    const/4 v2, 0x0

    .line 45
    sget-object v3, Lh/j;->ActionBar:[I

    .line 47
    sget v4, Lh/a;->actionBarStyle:I

    .line 49
    invoke-static {p1, v2, v3, v4}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 52
    move-result-object p1

    .line 53
    sget v2, Lh/j;->ActionBar_homeAsUpIndicator:I

    .line 55
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    .line 61
    sget v2, Lh/j;->ActionBar_title:I

    .line 63
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4b

    .line 73
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_4b
    sget v2, Lh/j;->ActionBar_subtitle:I

    .line 78
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_5a

    .line 88
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->p(Ljava/lang/CharSequence;)V

    .line 91
    :cond_5a
    sget v2, Lh/j;->ActionBar_logo:I

    .line 93
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_65

    .line 99
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->k(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_65
    sget v2, Lh/j;->ActionBar_icon:I

    .line 104
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_70

    .line 110
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_70
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    .line 115
    if-nez v2, :cond_7b

    .line 117
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    .line 119
    if-eqz v2, :cond_7b

    .line 121
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->G(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_7b
    sget v2, Lh/j;->ActionBar_displayOptions:I

    .line 126
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 129
    move-result v2

    .line 130
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->n(I)V

    .line 133
    sget v2, Lh/j;->ActionBar_customNavigationLayout:I

    .line 135
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_a6

    .line 141
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 150
    move-result-object v3

    .line 151
    iget-object v4, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 153
    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setCustomView(Landroid/view/View;)V

    .line 160
    iget v2, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 162
    or-int/lit8 v2, v2, 0x10

    .line 164
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->n(I)V

    .line 167
    :cond_a6
    sget v2, Lh/j;->ActionBar_height:I

    .line 169
    iget-object v3, p1, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    .line 171
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 174
    move-result v2

    .line 175
    if-lez v2, :cond_bd

    .line 177
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 182
    move-result-object v3

    .line 183
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_bd
    sget v2, Lh/j;->ActionBar_contentInsetStart:I

    .line 192
    const/4 v3, -0x1

    .line 193
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/y0;->c(II)I

    .line 196
    move-result v2

    .line 197
    sget v4, Lh/j;->ActionBar_contentInsetEnd:I

    .line 199
    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/widget/y0;->c(II)I

    .line 202
    move-result v3

    .line 203
    if-gez v2, :cond_ce

    .line 205
    if-ltz v3, :cond_db

    .line 207
    :cond_ce
    iget-object v4, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 209
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 212
    move-result v2

    .line 213
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 216
    move-result v3

    .line 217
    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 220
    :cond_db
    sget v2, Lh/j;->ActionBar_titleTextStyle:I

    .line 222
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_ec

    .line 228
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 237
    :cond_ec
    sget v2, Lh/j;->ActionBar_subtitleTextStyle:I

    .line 239
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_fd

    .line 245
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 254
    :cond_fd
    sget v2, Lh/j;->ActionBar_popupTheme:I

    .line 256
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_10a

    .line 262
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 264
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 267
    :cond_10a
    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->n()V

    .line 270
    iget p1, p0, Landroidx/appcompat/widget/b1;->q:I

    .line 272
    if-ne v0, p1, :cond_112

    .line 274
    goto :goto_125

    .line 275
    :cond_112
    iput v0, p0, Landroidx/appcompat/widget/b1;->q:I

    .line 277
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 279
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 282
    move-result-object p1

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_125

    .line 289
    iget p1, p0, Landroidx/appcompat/widget/b1;->q:I

    .line 291
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->B(I)V

    .line 294
    :cond_125
    :goto_125
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 296
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 299
    move-result-object p1

    .line 300
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    .line 302
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 304
    new-instance v0, Landroidx/appcompat/widget/a1;

    .line 306
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/a1;-><init>(Landroidx/appcompat/widget/b1;)V

    .line 309
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public final B(I)V
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_c

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->o(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public final C()V
    .registers 3

    .line 1
    const-string v0, "ToolbarWidgetWrapper"

    .line 3
    const-string v1, "Progress display unsupported"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final D(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/v;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->I()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 14
    return-void
.end method

.method public final E()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public final F()V
    .registers 3

    .line 1
    const-string v0, "ToolbarWidgetWrapper"

    .line 3
    const-string v1, "Progress display unsupported"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final G(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 5
    and-int/lit8 v0, v0, 0x4

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    .line 16
    :goto_f
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :goto_19
    return-void
.end method

.method public final H(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 6
    return-void
.end method

.method public final I()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    if-nez v0, :cond_1d

    .line 5
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    sget v3, Lh/a;->actionDropDownStyle:I

    .line 14
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 19
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(I)V

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public final J()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 17
    iget v1, p0, Landroidx/appcompat/widget/b1;->q:I

    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public final K()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 5
    if-eqz v1, :cond_15

    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->g:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 25
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/b1;->n:Z

    .line 4
    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final collapseActionView()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 6
    return-void
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    if-nez v0, :cond_15

    .line 5
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 18
    sget v1, Lh/f;->action_menu_presenter:I

    .line 20
    iput v1, v0, Landroidx/appcompat/view/menu/b;->i:I

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 24
    iput-object p2, v0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 26
    iget-object p2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 28
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 31
    return-void
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 6
    return-void
.end method

.method public final i(Landroidx/appcompat/widget/r0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    if-ne v0, v1, :cond_11

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_11
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 20
    if-eqz p1, :cond_36

    .line 22
    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_36

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 41
    const/4 v1, -0x2

    .line 42
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    const v1, 0x800053

    .line 49
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/r0;->setAllowCollapse(Z)V

    .line 55
    :cond_36
    return-void
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method public final k(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    .line 6
    return-void
.end method

.method public final l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n(I)V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 3
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 6
    if-eqz v0, :cond_6a

    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2b

    .line 13
    and-int/lit8 v1, p1, 0x4

    .line 15
    if-eqz v1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->J()V

    .line 20
    :cond_13
    iget v1, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 22
    and-int/lit8 v1, v1, 0x4

    .line 24
    if-eqz v1, :cond_26

    .line 26
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 28
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    .line 30
    if-eqz v3, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    .line 35
    :goto_22
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 41
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_2b
    :goto_2b
    and-int/lit8 v1, v0, 0x3

    .line 46
    if-eqz v1, :cond_32

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    .line 51
    :cond_32
    and-int/lit8 v1, v0, 0x8

    .line 53
    if-eqz v1, :cond_53

    .line 55
    and-int/lit8 v1, p1, 0x8

    .line 57
    if-eqz v1, :cond_49

    .line 59
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 61
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 68
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 73
    goto :goto_53

    .line 74
    :cond_49
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 76
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 81
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_53
    :goto_53
    and-int/lit8 v0, v0, 0x10

    .line 86
    if-eqz v0, :cond_6a

    .line 88
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    .line 90
    if-eqz v0, :cond_6a

    .line 92
    and-int/lit8 p1, p1, 0x10

    .line 94
    if-eqz p1, :cond_65

    .line 96
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    goto :goto_6a

    .line 102
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    :cond_6a
    :goto_6a
    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->J()V

    .line 6
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 5
    and-int/lit8 v0, v0, 0x8

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 14
    :cond_d
    return-void
.end method

.method public final q(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "Can\'t set dropdown selected position without an adapter"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method public final r(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->k(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method public final s()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    .line 3
    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 7
    and-int/lit8 v1, v1, 0x10

    .line 9
    if-eqz v1, :cond_f

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_f
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    .line 18
    if-eqz p1, :cond_1e

    .line 20
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 22
    and-int/lit8 v0, v0, 0x10

    .line 24
    if-eqz v0, :cond_1e

    .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    :cond_1e
    return-void
.end method

.method public final setIcon(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 8
    and-int/lit8 v0, v0, 0x8

    .line 10
    if-eqz v0, :cond_1d

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    .line 19
    if-eqz v0, :cond_1d

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public final setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->m:Landroid/view/Window$Callback;

    .line 3
    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    .line 3
    if-nez v0, :cond_1e

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 9
    and-int/lit8 v0, v0, 0x8

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 15
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    :cond_1e
    return-void
.end method

.method public final t(IJ)Lm0/o0;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 6
    move-result-object v0

    .line 7
    if-nez p1, :cond_b

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Lm0/o0;->a(F)V

    .line 16
    invoke-virtual {v0, p2, p3}, Lm0/o0;->c(J)V

    .line 19
    new-instance p2, Landroidx/appcompat/widget/b1$a;

    .line 21
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/b1$a;-><init>(Landroidx/appcompat/widget/b1;I)V

    .line 24
    invoke-virtual {v0, p2}, Lm0/o0;->d(Lm0/p0;)V

    .line 27
    return-object v0
.end method

.method public final u(I)V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    .line 3
    if-eq p1, v0, :cond_69

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1d

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    goto :goto_2e

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 14
    if-eqz v0, :cond_2e

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 22
    if-ne v0, v3, :cond_2e

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 26
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 32
    if-eqz v0, :cond_2e

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 40
    if-ne v0, v3, :cond_2e

    .line 42
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 44
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_2e
    :goto_2e
    iput p1, p0, Landroidx/appcompat/widget/b1;->p:I

    .line 49
    if-eqz p1, :cond_69

    .line 51
    const/4 v0, 0x0

    .line 52
    if-eq p1, v2, :cond_5f

    .line 54
    if-ne p1, v1, :cond_53

    .line 56
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 58
    if-eqz p1, :cond_69

    .line 60
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 62
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroidx/appcompat/widget/Toolbar$g;

    .line 73
    const/4 v0, -0x2

    .line 74
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 76
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    const v0, 0x800053

    .line 81
    iput v0, p1, Landroidx/appcompat/app/a$a;->a:I

    .line 83
    goto :goto_69

    .line 84
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string v1, "Invalid navigation mode "

    .line 88
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    :cond_5f
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->I()V

    .line 99
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 101
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 106
    :cond_69
    :goto_69
    return-void
.end method

.method public final v(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->G(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method public final w(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public final x()Landroidx/appcompat/widget/Toolbar;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    return-object v0
.end method

.method public final y()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final z()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    .line 3
    return v0
.end method
