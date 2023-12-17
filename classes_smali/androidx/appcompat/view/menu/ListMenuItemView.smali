.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o$a;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public a:Landroidx/appcompat/view/menu/j;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/CheckBox;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:Landroid/content/Context;

.field public m:Z

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Z

.field public p:Landroid/view/LayoutInflater;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    sget v0, Lh/a;->listMenuViewStyle:I

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lh/j;->MenuView:[I

    .line 12
    invoke-static {v1, p2, v2, v0}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    .line 15
    move-result-object p2

    .line 16
    sget v0, Lh/j;->MenuView_android_itemBackground:I

    .line 18
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    .line 24
    sget v0, Lh/j;->MenuView_android_itemTextAppearance:I

    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    .line 33
    sget v0, Lh/j;->MenuView_preserveIconSpacing:I

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 42
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    .line 44
    sget v0, Lh/j;->MenuView_subMenuArrow:I

    .line 46
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [I

    .line 59
    const v2, 0x1010129

    .line 62
    aput v2, v0, v1

    .line 64
    sget v2, Lh/a;->dropDownListViewStyle:I

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Z

    .line 77
    invoke-virtual {p2}, Landroidx/appcompat/widget/y0;->n()V

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    .line 17
    return-object v0
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const/16 p1, 0x8

    .line 11
    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_23

    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 21
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v2

    .line 27
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 29
    add-int/2addr v2, v3

    .line 30
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 32
    add-int/2addr v2, v0

    .line 33
    add-int/2addr v2, v1

    .line 34
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 36
    :cond_23
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/j;I)V
    .registers 12

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x8

    .line 10
    if-eqz p2, :cond_d

    .line 12
    move p2, v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p2, v1

    .line 15
    :goto_e
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 30
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 32
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h;->isShortcutsVisible()Z

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p2, :cond_37

    .line 39
    iget-object p2, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 41
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_31

    .line 47
    iget-char p2, p1, Landroidx/appcompat/view/menu/j;->j:C

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    iget-char p2, p1, Landroidx/appcompat/view/menu/j;->h:C

    .line 52
    :goto_33
    if-eqz p2, :cond_37

    .line 54
    move p2, v2

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move p2, v0

    .line 57
    :goto_38
    iget-object v3, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 59
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 62
    if-eqz p2, :cond_5e

    .line 64
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 66
    iget-object v3, p2, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 68
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->isShortcutsVisible()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5a

    .line 74
    iget-object v3, p2, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 76
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_54

    .line 82
    iget-char p2, p2, Landroidx/appcompat/view/menu/j;->j:C

    .line 84
    goto :goto_56

    .line 85
    :cond_54
    iget-char p2, p2, Landroidx/appcompat/view/menu/j;->h:C

    .line 87
    :goto_56
    if-eqz p2, :cond_5a

    .line 89
    move p2, v2

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move p2, v0

    .line 92
    :goto_5b
    if-eqz p2, :cond_5e

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v0, v1

    .line 96
    :goto_5f
    if-nez v0, :cond_11b

    .line 98
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 100
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 102
    iget-object v4, v3, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 104
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_70

    .line 110
    iget-char v4, v3, Landroidx/appcompat/view/menu/j;->j:C

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    iget-char v4, v3, Landroidx/appcompat/view/menu/j;->h:C

    .line 115
    :goto_72
    if-nez v4, :cond_78

    .line 117
    const-string v1, ""

    .line 119
    goto/16 :goto_118

    .line 121
    :cond_78
    iget-object v5, v3, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 123
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v5

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    iget-object v7, v3, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 138
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v7

    .line 142
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_a0

    .line 152
    sget v7, Lh/h;->abc_prepend_shortcut_label:I

    .line 154
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_a0
    iget-object v7, v3, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 163
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_ab

    .line 169
    iget v3, v3, Landroidx/appcompat/view/menu/j;->k:I

    .line 171
    goto :goto_ad

    .line 172
    :cond_ab
    iget v3, v3, Landroidx/appcompat/view/menu/j;->i:I

    .line 174
    :goto_ad
    const/high16 v7, 0x10000

    .line 176
    sget v8, Lh/h;->abc_menu_meta_shortcut_label:I

    .line 178
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 181
    move-result-object v8

    .line 182
    invoke-static {v6, v3, v7, v8}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 185
    const/16 v7, 0x1000

    .line 187
    sget v8, Lh/h;->abc_menu_ctrl_shortcut_label:I

    .line 189
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 192
    move-result-object v8

    .line 193
    invoke-static {v6, v3, v7, v8}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 196
    const/4 v7, 0x2

    .line 197
    sget v8, Lh/h;->abc_menu_alt_shortcut_label:I

    .line 199
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 202
    move-result-object v8

    .line 203
    invoke-static {v6, v3, v7, v8}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 206
    sget v7, Lh/h;->abc_menu_shift_shortcut_label:I

    .line 208
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 211
    move-result-object v7

    .line 212
    invoke-static {v6, v3, v2, v7}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 215
    const/4 v2, 0x4

    .line 216
    sget v7, Lh/h;->abc_menu_sym_shortcut_label:I

    .line 218
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 221
    move-result-object v7

    .line 222
    invoke-static {v6, v3, v2, v7}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 225
    sget v2, Lh/h;->abc_menu_function_shortcut_label:I

    .line 227
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 230
    move-result-object v2

    .line 231
    invoke-static {v6, v3, v1, v2}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 234
    if-eq v4, v1, :cond_10b

    .line 236
    const/16 v1, 0xa

    .line 238
    if-eq v4, v1, :cond_101

    .line 240
    const/16 v1, 0x20

    .line 242
    if-eq v4, v1, :cond_f7

    .line 244
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    goto :goto_114

    .line 248
    :cond_f7
    sget v1, Lh/h;->abc_menu_space_shortcut_label:I

    .line 250
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    goto :goto_114

    .line 258
    :cond_101
    sget v1, Lh/h;->abc_menu_enter_shortcut_label:I

    .line 260
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    goto :goto_114

    .line 268
    :cond_10b
    sget v1, Lh/h;->abc_menu_delete_shortcut_label:I

    .line 270
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_114
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 281
    :goto_118
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_11b
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 289
    move-result p2

    .line 290
    if-eq p2, v0, :cond_128

    .line 292
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 294
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_128
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    .line 307
    move-result p2

    .line 308
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 311
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 314
    move-result p2

    .line 315
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 318
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 320
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method public final onFinishInflate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    .line 6
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 11
    sget v0, Lh/f;->title:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 21
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    .line 23
    const/4 v2, -0x1

    .line 24
    if-eq v1, v2, :cond_1e

    .line 26
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 31
    :cond_1e
    sget v0, Lh/f;->shortcut:I

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 41
    sget v0, Lh/f;->submenuarrow:I

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    .line 51
    if-eqz v0, :cond_39

    .line 53
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_39
    sget v0, Lh/f;->group_divider:I

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 68
    sget v0, Lh/f;->content:I

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 78
    return-void
.end method

.method public final onMeasure(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    if-lez v0, :cond_1e

    .line 25
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 27
    if-gtz v2, :cond_1e

    .line 29
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 31
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 34
    return-void
.end method

.method public setCheckable(Z)V
    .registers 6

    .line 1
    if-nez p1, :cond_b

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 14
    iget v0, v0, Landroidx/appcompat/view/menu/j;->x:I

    .line 16
    and-int/lit8 v0, v0, 0x4

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v1

    .line 24
    :goto_17
    const/4 v2, -0x1

    .line 25
    if-eqz v0, :cond_3c

    .line 27
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 29
    if-nez v0, :cond_37

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 34
    move-result-object v0

    .line 35
    sget v3, Lh/g;->abc_list_menu_item_radio:I

    .line 37
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/RadioButton;

    .line 43
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 45
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 47
    if-eqz v3, :cond_34

    .line 49
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 52
    goto :goto_37

    .line 53
    :cond_34
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    :cond_37
    :goto_37
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 58
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 60
    goto :goto_5d

    .line 61
    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 63
    if-nez v0, :cond_59

    .line 65
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 68
    move-result-object v0

    .line 69
    sget v3, Lh/g;->abc_list_menu_item_checkbox:I

    .line 71
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/CheckBox;

    .line 77
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 79
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 81
    if-eqz v3, :cond_56

    .line 83
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 86
    goto :goto_59

    .line 87
    :cond_56
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 90
    :cond_59
    :goto_59
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 92
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 94
    :goto_5d
    const/16 v3, 0x8

    .line 96
    if-eqz p1, :cond_7f

    .line 98
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 100
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_73

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_73
    if-eqz v2, :cond_8d

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 121
    move-result p1

    .line 122
    if-eq p1, v3, :cond_8d

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    goto :goto_8d

    .line 128
    :cond_7f
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 130
    if-eqz p1, :cond_86

    .line 132
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_86
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 137
    if-eqz p1, :cond_8d

    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_8d
    :goto_8d
    return-void
.end method

.method public setChecked(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    iget v0, v0, Landroidx/appcompat/view/menu/j;->x:I

    .line 5
    and-int/lit8 v0, v0, 0x4

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v0, v1

    .line 13
    :goto_c
    const/4 v2, -0x1

    .line 14
    if-eqz v0, :cond_2f

    .line 16
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 18
    if-nez v0, :cond_2c

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 23
    move-result-object v0

    .line 24
    sget v3, Lh/g;->abc_list_menu_item_radio:I

    .line 26
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/RadioButton;

    .line 32
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 34
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 36
    if-eqz v1, :cond_29

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 47
    goto :goto_4e

    .line 48
    :cond_2f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 50
    if-nez v0, :cond_4c

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 55
    move-result-object v0

    .line 56
    sget v3, Lh/g;->abc_list_menu_item_checkbox:I

    .line 58
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/CheckBox;

    .line 64
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 66
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 68
    if-eqz v1, :cond_49

    .line 70
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 77
    :cond_4c
    :goto_4c
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 79
    :goto_4e
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Z

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 5
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Z

    .line 7
    if-nez v1, :cond_c

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const/16 p1, 0x8

    .line 15
    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getOptionalIconsVisible()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_12

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Z

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 20
    :goto_13
    if-nez v0, :cond_1a

    .line 22
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 29
    if-nez v2, :cond_25

    .line 31
    if-nez p1, :cond_25

    .line 33
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 35
    if-nez v3, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    if-nez v2, :cond_40

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 43
    move-result-object v2

    .line 44
    sget v3, Lh/g;->abc_list_menu_item_icon:I

    .line 46
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/ImageView;

    .line 52
    iput-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 54
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    .line 56
    if-eqz v3, :cond_3d

    .line 58
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 65
    :cond_40
    :goto_40
    if-nez p1, :cond_4f

    .line 67
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 69
    if-eqz v2, :cond_47

    .line 71
    goto :goto_4f

    .line 72
    :cond_47
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 74
    const/16 v0, 0x8

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    goto :goto_65

    .line 80
    :cond_4f
    :goto_4f
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 82
    if-eqz v0, :cond_54

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 p1, 0x0

    .line 86
    :goto_55
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_65

    .line 97
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_25

    .line 16
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result p1

    .line 29
    const/16 v0, 0x8

    .line 31
    if-eq p1, v0, :cond_25

    .line 33
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method
