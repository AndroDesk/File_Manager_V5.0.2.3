.class public final Landroidx/appcompat/widget/g$a;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/n0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [I

    .line 7
    sget v2, Lh/e;->abc_textfield_search_default_mtrl_alpha:I

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v1, v3

    .line 12
    sget v2, Lh/e;->abc_textfield_default_mtrl_alpha:I

    .line 14
    const/4 v4, 0x1

    .line 15
    aput v2, v1, v4

    .line 17
    sget v2, Lh/e;->abc_ab_share_pack_mtrl_alpha:I

    .line 19
    const/4 v5, 0x2

    .line 20
    aput v2, v1, v5

    .line 22
    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->a:[I

    .line 24
    const/4 v1, 0x7

    .line 25
    new-array v2, v1, [I

    .line 27
    sget v6, Lh/e;->abc_ic_commit_search_api_mtrl_alpha:I

    .line 29
    aput v6, v2, v3

    .line 31
    sget v6, Lh/e;->abc_seekbar_tick_mark_material:I

    .line 33
    aput v6, v2, v4

    .line 35
    sget v6, Lh/e;->abc_ic_menu_share_mtrl_alpha:I

    .line 37
    aput v6, v2, v5

    .line 39
    sget v6, Lh/e;->abc_ic_menu_copy_mtrl_am_alpha:I

    .line 41
    aput v6, v2, v0

    .line 43
    sget v6, Lh/e;->abc_ic_menu_cut_mtrl_alpha:I

    .line 45
    const/4 v7, 0x4

    .line 46
    aput v6, v2, v7

    .line 48
    sget v6, Lh/e;->abc_ic_menu_selectall_mtrl_alpha:I

    .line 50
    const/4 v8, 0x5

    .line 51
    aput v6, v2, v8

    .line 53
    sget v6, Lh/e;->abc_ic_menu_paste_mtrl_am_alpha:I

    .line 55
    const/4 v9, 0x6

    .line 56
    aput v6, v2, v9

    .line 58
    iput-object v2, p0, Landroidx/appcompat/widget/g$a;->b:[I

    .line 60
    new-array v1, v1, [I

    .line 62
    sget v2, Lh/e;->abc_textfield_activated_mtrl_alpha:I

    .line 64
    aput v2, v1, v3

    .line 66
    sget v2, Lh/e;->abc_textfield_search_activated_mtrl_alpha:I

    .line 68
    aput v2, v1, v4

    .line 70
    sget v2, Lh/e;->abc_cab_background_top_mtrl_alpha:I

    .line 72
    aput v2, v1, v5

    .line 74
    sget v2, Lh/e;->abc_text_cursor_material:I

    .line 76
    aput v2, v1, v0

    .line 78
    sget v2, Lh/e;->abc_text_select_handle_left_mtrl:I

    .line 80
    aput v2, v1, v7

    .line 82
    sget v2, Lh/e;->abc_text_select_handle_middle_mtrl:I

    .line 84
    aput v2, v1, v8

    .line 86
    sget v2, Lh/e;->abc_text_select_handle_right_mtrl:I

    .line 88
    aput v2, v1, v9

    .line 90
    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->c:[I

    .line 92
    new-array v1, v0, [I

    .line 94
    sget v2, Lh/e;->abc_popup_background_mtrl_mult:I

    .line 96
    aput v2, v1, v3

    .line 98
    sget v2, Lh/e;->abc_cab_background_internal_bg:I

    .line 100
    aput v2, v1, v4

    .line 102
    sget v2, Lh/e;->abc_menu_hardkey_panel_mtrl_mult:I

    .line 104
    aput v2, v1, v5

    .line 106
    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->d:[I

    .line 108
    new-array v1, v5, [I

    .line 110
    sget v2, Lh/e;->abc_tab_indicator_material:I

    .line 112
    aput v2, v1, v3

    .line 114
    sget v2, Lh/e;->abc_textfield_search_material:I

    .line 116
    aput v2, v1, v4

    .line 118
    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->e:[I

    .line 120
    new-array v1, v7, [I

    .line 122
    sget v2, Lh/e;->abc_btn_check_material:I

    .line 124
    aput v2, v1, v3

    .line 126
    sget v2, Lh/e;->abc_btn_radio_material:I

    .line 128
    aput v2, v1, v4

    .line 130
    sget v2, Lh/e;->abc_btn_check_material_anim:I

    .line 132
    aput v2, v1, v5

    .line 134
    sget v2, Lh/e;->abc_btn_radio_material_anim:I

    .line 136
    aput v2, v1, v0

    .line 138
    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->f:[I

    .line 140
    return-void
.end method

.method public static a([II)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_e

    .line 6
    aget v3, p0, v2

    .line 8
    if-ne v3, p1, :cond_b

    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_3

    .line 15
    :cond_e
    return v1
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [[I

    .line 4
    new-array v0, v0, [I

    .line 6
    sget v2, Lh/a;->colorControlHighlight:I

    .line 8
    invoke-static {p0, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 11
    move-result v2

    .line 12
    sget v3, Lh/a;->colorButtonNormal:I

    .line 14
    invoke-static {p0, v3}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    .line 17
    move-result p0

    .line 18
    sget-object v3, Landroidx/appcompat/widget/t0;->b:[I

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v1, v4

    .line 23
    aput p0, v0, v4

    .line 25
    sget-object p0, Landroidx/appcompat/widget/t0;->d:[I

    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object p0, v1, v3

    .line 30
    invoke-static {v2, p1}, Lf0/d;->b(II)I

    .line 33
    move-result p0

    .line 34
    aput p0, v0, v3

    .line 36
    sget-object p0, Landroidx/appcompat/widget/t0;->c:[I

    .line 38
    const/4 v3, 0x2

    .line 39
    aput-object p0, v1, v3

    .line 41
    invoke-static {v2, p1}, Lf0/d;->b(II)I

    .line 44
    move-result p0

    .line 45
    aput p0, v0, v3

    .line 47
    sget-object p0, Landroidx/appcompat/widget/t0;->f:[I

    .line 49
    const/4 v2, 0x3

    .line 50
    aput-object p0, v1, v2

    .line 52
    aput p1, v0, v2

    .line 54
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 56
    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 59
    return-object p0
.end method

.method public static c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p2

    .line 9
    sget v0, Lh/e;->abc_star_black_48dp:I

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Lh/e;->abc_star_half_black_48dp:I

    .line 17
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p0

    .line 21
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_31

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    move-result p1

    .line 30
    if-ne p1, p2, :cond_31

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    move-result p1

    .line 36
    if-ne p1, p2, :cond_31

    .line 38
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    goto :goto_4d

    .line 50
    :cond_31
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Landroid/graphics/Canvas;

    .line 58
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    move-object p1, v2

    .line 78
    :goto_4d
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 80
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 83
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    if-eqz v2, :cond_65

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    move-result v2

    .line 91
    if-ne v2, p2, :cond_65

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    move-result v2

    .line 97
    if-ne v2, p2, :cond_65

    .line 99
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    goto :goto_7b

    .line 102
    :cond_65
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Landroid/graphics/Canvas;

    .line 110
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    :goto_7b
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 126
    const/4 v2, 0x3

    .line 127
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 129
    aput-object v0, v2, v1

    .line 131
    const/4 v0, 0x1

    .line 132
    aput-object p0, v2, v0

    .line 134
    const/4 p0, 0x2

    .line 135
    aput-object p1, v2, p0

    .line 137
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    const/high16 p1, 0x1020000

    .line 142
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    const p1, 0x102000f

    .line 148
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    const p1, 0x102000d

    .line 154
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    return-object p2
.end method

.method public static e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/e0;->a:[I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 7
    if-nez p2, :cond_a

    .line 9
    sget-object p2, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    .line 11
    :cond_a
    invoke-static {p1, p2}, Landroidx/appcompat/widget/g;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 10

    .line 1
    sget v0, Lh/e;->abc_edit_text_material:I

    .line 3
    if-ne p2, v0, :cond_b

    .line 5
    sget p2, Lh/c;->abc_tint_edittext:I

    .line 7
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    sget v0, Lh/e;->abc_switch_track_mtrl_alpha:I

    .line 14
    if-ne p2, v0, :cond_16

    .line 16
    sget p2, Lh/c;->abc_tint_switch_track:I

    .line 18
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    sget v0, Lh/e;->abc_switch_thumb_material:I

    .line 25
    const/4 v1, 0x0

    .line 26
    if-ne p2, v0, :cond_77

    .line 28
    const/4 p2, 0x3

    .line 29
    new-array v0, p2, [[I

    .line 31
    new-array p2, p2, [I

    .line 33
    sget v2, Lh/a;->colorSwitchThumbNormal:I

    .line 35
    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x2

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v3, :cond_51

    .line 43
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_51

    .line 49
    sget-object v2, Landroidx/appcompat/widget/t0;->b:[I

    .line 51
    aput-object v2, v0, v1

    .line 53
    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 56
    move-result v2

    .line 57
    aput v2, p2, v1

    .line 59
    sget-object v1, Landroidx/appcompat/widget/t0;->e:[I

    .line 61
    aput-object v1, v0, v5

    .line 63
    sget v1, Lh/a;->colorControlActivated:I

    .line 65
    invoke-static {p1, v1}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 68
    move-result p1

    .line 69
    aput p1, p2, v5

    .line 71
    sget-object p1, Landroidx/appcompat/widget/t0;->f:[I

    .line 73
    aput-object p1, v0, v4

    .line 75
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 78
    move-result p1

    .line 79
    aput p1, p2, v4

    .line 81
    goto :goto_71

    .line 82
    :cond_51
    sget-object v3, Landroidx/appcompat/widget/t0;->b:[I

    .line 84
    aput-object v3, v0, v1

    .line 86
    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    .line 89
    move-result v3

    .line 90
    aput v3, p2, v1

    .line 92
    sget-object v1, Landroidx/appcompat/widget/t0;->e:[I

    .line 94
    aput-object v1, v0, v5

    .line 96
    sget v1, Lh/a;->colorControlActivated:I

    .line 98
    invoke-static {p1, v1}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 101
    move-result v1

    .line 102
    aput v1, p2, v5

    .line 104
    sget-object v1, Landroidx/appcompat/widget/t0;->f:[I

    .line 106
    aput-object v1, v0, v4

    .line 108
    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 111
    move-result p1

    .line 112
    aput p1, p2, v4

    .line 114
    :goto_71
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 116
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 119
    return-object p1

    .line 120
    :cond_77
    sget v0, Lh/e;->abc_btn_default_mtrl_shape:I

    .line 122
    if-ne p2, v0, :cond_86

    .line 124
    sget p2, Lh/a;->colorButtonNormal:I

    .line 126
    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 129
    move-result p2

    .line 130
    invoke-static {p1, p2}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_86
    sget v0, Lh/e;->abc_btn_borderless_material:I

    .line 137
    if-ne p2, v0, :cond_8f

    .line 139
    invoke-static {p1, v1}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_8f
    sget v0, Lh/e;->abc_btn_colored_material:I

    .line 146
    if-ne p2, v0, :cond_9e

    .line 148
    sget p2, Lh/a;->colorAccent:I

    .line 150
    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    .line 153
    move-result p2

    .line 154
    invoke-static {p1, p2}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :cond_9e
    sget v0, Lh/e;->abc_spinner_mtrl_am_alpha:I

    .line 161
    if-eq p2, v0, :cond_e1

    .line 163
    sget v0, Lh/e;->abc_spinner_textfield_background_material:I

    .line 165
    if-ne p2, v0, :cond_a7

    .line 167
    goto :goto_e1

    .line 168
    :cond_a7
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->b:[I

    .line 170
    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b6

    .line 176
    sget p2, Lh/a;->colorControlNormal:I

    .line 178
    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 181
    move-result-object p1

    .line 182
    return-object p1

    .line 183
    :cond_b6
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->e:[I

    .line 185
    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c5

    .line 191
    sget p2, Lh/c;->abc_tint_default:I

    .line 193
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_c5
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->f:[I

    .line 200
    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_d4

    .line 206
    sget p2, Lh/c;->abc_tint_btn_checkable:I

    .line 208
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 211
    move-result-object p1

    .line 212
    return-object p1

    .line 213
    :cond_d4
    sget v0, Lh/e;->abc_seekbar_thumb_material:I

    .line 215
    if-ne p2, v0, :cond_df

    .line 217
    sget p2, Lh/c;->abc_tint_seek_thumb:I

    .line 219
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 222
    move-result-object p1

    .line 223
    return-object p1

    .line 224
    :cond_df
    const/4 p1, 0x0

    .line 225
    return-object p1

    .line 226
    :cond_e1
    :goto_e1
    sget p2, Lh/c;->abc_tint_spinner:I

    .line 228
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 231
    move-result-object p1

    .line 232
    return-object p1
.end method
