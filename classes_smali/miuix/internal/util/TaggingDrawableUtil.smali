.class public Lmiuix/internal/util/TaggingDrawableUtil;
.super Ljava/lang/Object;
.source "TaggingDrawableUtil.java"


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_SINGLE:[I

.field private static final UNINITIAL:I = -0x1

.field private static mPaddingLarge:I = -0x1

.field private static mPaddingSingle:I = -0x1

.field private static mPaddingSmall:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a3

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    new-array v1, v0, [I

    const v2, 0x10100a4

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    new-array v1, v0, [I

    const v2, 0x10100a5

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    new-array v0, v0, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    return-void

    nop

    :array_30
    .array-data 4
        0x10100a3
        0x10100a4
        0x10100a5
        0x10100a6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDimen(Landroid/content/Context;I)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static updateBackgroundState(Landroid/view/View;II)V
    .registers 6

    if-eqz p0, :cond_3d

    if-nez p2, :cond_5

    goto :goto_3d

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_21

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    invoke-static {v1, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    invoke-direct {v1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_21
    instance-of p0, v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    if-eqz p0, :cond_3d

    check-cast v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2d

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    goto :goto_3a

    :cond_2d
    if-nez p1, :cond_32

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    goto :goto_3a

    :cond_32
    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_38

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    goto :goto_3a

    :cond_38
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    :goto_3a
    invoke-virtual {v0, p0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;II)V

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-void
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .registers 9

    if-eqz p0, :cond_6b

    if-nez p2, :cond_5

    goto :goto_6b

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne p2, v3, :cond_2b

    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    if-ne p1, v4, :cond_27

    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    invoke-static {v0, p1}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    :cond_27
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    :goto_29
    move p2, p1

    goto :goto_55

    :cond_2b
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    if-ne v5, v4, :cond_37

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-static {v0, v5}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v5

    sput v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    :cond_37
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    if-ne v5, v4, :cond_43

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-static {v0, v4}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v4

    sput v4, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    :cond_43
    if-nez p1, :cond_4a

    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    goto :goto_55

    :cond_4a
    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_52

    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    goto :goto_55

    :cond_52
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    goto :goto_29

    :goto_55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    invoke-static {v0, v4}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v0

    if-lez v3, :cond_68

    if-ge v3, v0, :cond_68

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    :cond_68
    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_6b
    :goto_6b
    return-void
.end method
