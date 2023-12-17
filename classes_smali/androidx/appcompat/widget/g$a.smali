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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lh/e;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lh/e;->abc_textfield_default_mtrl_alpha:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lh/e;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->a:[I

    const/4 v1, 0x7

    new-array v2, v1, [I

    sget v6, Lh/e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v6, v2, v3

    sget v6, Lh/e;->abc_seekbar_tick_mark_material:I

    aput v6, v2, v4

    sget v6, Lh/e;->abc_ic_menu_share_mtrl_alpha:I

    aput v6, v2, v5

    sget v6, Lh/e;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v6, v2, v0

    sget v6, Lh/e;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v7, 0x4

    aput v6, v2, v7

    sget v6, Lh/e;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v8, 0x5

    aput v6, v2, v8

    sget v6, Lh/e;->abc_ic_menu_paste_mtrl_am_alpha:I

    const/4 v9, 0x6

    aput v6, v2, v9

    iput-object v2, p0, Landroidx/appcompat/widget/g$a;->b:[I

    new-array v1, v1, [I

    sget v2, Lh/e;->abc_textfield_activated_mtrl_alpha:I

    aput v2, v1, v3

    sget v2, Lh/e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v2, v1, v4

    sget v2, Lh/e;->abc_cab_background_top_mtrl_alpha:I

    aput v2, v1, v5

    sget v2, Lh/e;->abc_text_cursor_material:I

    aput v2, v1, v0

    sget v2, Lh/e;->abc_text_select_handle_left_mtrl:I

    aput v2, v1, v7

    sget v2, Lh/e;->abc_text_select_handle_middle_mtrl:I

    aput v2, v1, v8

    sget v2, Lh/e;->abc_text_select_handle_right_mtrl:I

    aput v2, v1, v9

    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->c:[I

    new-array v1, v0, [I

    sget v2, Lh/e;->abc_popup_background_mtrl_mult:I

    aput v2, v1, v3

    sget v2, Lh/e;->abc_cab_background_internal_bg:I

    aput v2, v1, v4

    sget v2, Lh/e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v2, v1, v5

    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->d:[I

    new-array v1, v5, [I

    sget v2, Lh/e;->abc_tab_indicator_material:I

    aput v2, v1, v3

    sget v2, Lh/e;->abc_textfield_search_material:I

    aput v2, v1, v4

    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->e:[I

    new-array v1, v7, [I

    sget v2, Lh/e;->abc_btn_check_material:I

    aput v2, v1, v3

    sget v2, Lh/e;->abc_btn_radio_material:I

    aput v2, v1, v4

    sget v2, Lh/e;->abc_btn_check_material_anim:I

    aput v2, v1, v5

    sget v2, Lh/e;->abc_btn_radio_material_anim:I

    aput v2, v1, v0

    iput-object v1, p0, Landroidx/appcompat/widget/g$a;->f:[I

    return-void
.end method

.method public static a([II)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lh/a;->colorControlHighlight:I

    invoke-static {p0, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lh/a;->colorButtonNormal:I

    invoke-static {p0, v3}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    move-result p0

    sget-object v3, Landroidx/appcompat/widget/t0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p0, v0, v4

    sget-object p0, Landroidx/appcompat/widget/t0;->d:[I

    const/4 v3, 0x1

    aput-object p0, v1, v3

    invoke-static {v2, p1}, Lf0/d;->b(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Landroidx/appcompat/widget/t0;->c:[I

    const/4 v3, 0x2

    aput-object p0, v1, v3

    invoke-static {v2, p1}, Lf0/d;->b(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Landroidx/appcompat/widget/t0;->f:[I

    const/4 v2, 0x3

    aput-object p0, v1, v2

    aput p1, v0, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static c(Landroidx/appcompat/widget/n0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lh/e;->abc_star_black_48dp:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lh/e;->abc_star_half_black_48dp:I

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/n0;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_31

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_31

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_4d

    :cond_31
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_4d
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_65

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_65

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_65

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_7b

    :cond_65
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_7b
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/e0;->a:[I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_a

    sget-object p2, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_a
    invoke-static {p1, p2}, Landroidx/appcompat/widget/g;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 10

    sget v0, Lh/e;->abc_edit_text_material:I

    if-ne p2, v0, :cond_b

    sget p2, Lh/c;->abc_tint_edittext:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_b
    sget v0, Lh/e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_16

    sget p2, Lh/c;->abc_tint_switch_track:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_16
    sget v0, Lh/e;->abc_switch_thumb_material:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_77

    const/4 p2, 0x3

    new-array v0, p2, [[I

    new-array p2, p2, [I

    sget v2, Lh/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_51

    sget-object v2, Landroidx/appcompat/widget/t0;->b:[I

    aput-object v2, v0, v1

    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, p2, v1

    sget-object v1, Landroidx/appcompat/widget/t0;->e:[I

    aput-object v1, v0, v5

    sget v1, Lh/a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v5

    sget-object p1, Landroidx/appcompat/widget/t0;->f:[I

    aput-object p1, v0, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p2, v4

    goto :goto_71

    :cond_51
    sget-object v3, Landroidx/appcompat/widget/t0;->b:[I

    aput-object v3, v0, v1

    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, p2, v1

    sget-object v1, Landroidx/appcompat/widget/t0;->e:[I

    aput-object v1, v0, v5

    sget v1, Lh/a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result v1

    aput v1, p2, v5

    sget-object v1, Landroidx/appcompat/widget/t0;->f:[I

    aput-object v1, v0, v4

    invoke-static {p1, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v4

    :goto_71
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_77
    sget v0, Lh/e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_86

    sget p2, Lh/a;->colorButtonNormal:I

    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_86
    sget v0, Lh/e;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_8f

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8f
    sget v0, Lh/e;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_9e

    sget p2, Lh/a;->colorAccent:I

    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/g$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9e
    sget v0, Lh/e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_e1

    sget v0, Lh/e;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_a7

    goto :goto_e1

    :cond_a7
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->b:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_b6

    sget p2, Lh/a;->colorControlNormal:I

    invoke-static {p1, p2}, Landroidx/appcompat/widget/t0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_b6
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->e:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_c5

    sget p2, Lh/c;->abc_tint_default:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_c5
    iget-object v0, p0, Landroidx/appcompat/widget/g$a;->f:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/g$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_d4

    sget p2, Lh/c;->abc_tint_btn_checkable:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_d4
    sget v0, Lh/e;->abc_seekbar_thumb_material:I

    if-ne p2, v0, :cond_df

    sget p2, Lh/c;->abc_tint_seek_thumb:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_df
    const/4 p1, 0x0

    return-object p1

    :cond_e1
    :goto_e1
    sget p2, Lh/c;->abc_tint_spinner:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
