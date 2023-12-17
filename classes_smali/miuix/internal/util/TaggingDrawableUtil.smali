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

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_30

    .line 7
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [I

    .line 12
    const v2, 0x10100a3

    .line 15
    const/4 v3, 0x0

    .line 16
    aput v2, v1, v3

    .line 18
    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    .line 20
    new-array v1, v0, [I

    .line 22
    const v2, 0x10100a4

    .line 25
    aput v2, v1, v3

    .line 27
    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    .line 29
    new-array v1, v0, [I

    .line 31
    const v2, 0x10100a5

    .line 34
    aput v2, v1, v3

    .line 36
    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 38
    new-array v0, v0, [I

    .line 40
    const v1, 0x10100a6

    .line 43
    aput v1, v0, v3

    .line 45
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    .line 47
    return-void

    .line 48
    nop

    .line 49
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

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static updateBackgroundState(Landroid/view/View;II)V
    .registers 6

    .line 1
    if-eqz p0, :cond_3d

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_3d

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 12
    if-eqz v1, :cond_21

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 17
    sget-object v2, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 19
    invoke-static {v1, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_21

    .line 25
    new-instance v1, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 27
    invoke-direct {v1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    move-object v0, v1

    .line 34
    :cond_21
    instance-of p0, v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 36
    if-eqz p0, :cond_3d

    .line 38
    check-cast v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 40
    const/4 p0, 0x1

    .line 41
    if-ne p2, p0, :cond_2d

    .line 43
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    .line 45
    goto :goto_3a

    .line 46
    :cond_2d
    if-nez p1, :cond_32

    .line 48
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    sub-int/2addr p2, p0

    .line 52
    if-ne p1, p2, :cond_38

    .line 54
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 59
    :goto_3a
    invoke-virtual {v0, p0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;II)V

    .line 4
    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 7
    return-void
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .registers 9

    .line 1
    if-eqz p0, :cond_6b

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_6b

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, -0x1

    .line 26
    if-ne p2, v3, :cond_2b

    .line 28
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 30
    if-ne p1, v4, :cond_27

    .line 32
    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    .line 34
    invoke-static {v0, p1}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    .line 37
    move-result p1

    .line 38
    sput p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 40
    :cond_27
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 42
    :goto_29
    move p2, p1

    .line 43
    goto :goto_55

    .line 44
    :cond_2b
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 46
    if-ne v5, v4, :cond_37

    .line 48
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    .line 50
    invoke-static {v0, v5}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    .line 53
    move-result v5

    .line 54
    sput v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 56
    :cond_37
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 58
    if-ne v5, v4, :cond_43

    .line 60
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    .line 62
    invoke-static {v0, v4}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    .line 65
    move-result v4

    .line 66
    sput v4, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 68
    :cond_43
    if-nez p1, :cond_4a

    .line 70
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 72
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 74
    goto :goto_55

    .line 75
    :cond_4a
    sub-int/2addr p2, v3

    .line 76
    if-ne p1, p2, :cond_52

    .line 78
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 80
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 85
    goto :goto_29

    .line 86
    :goto_55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v3

    .line 90
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    .line 92
    invoke-static {v0, v4}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    .line 95
    move-result v0

    .line 96
    if-lez v3, :cond_68

    .line 98
    if-ge v3, v0, :cond_68

    .line 100
    sub-int/2addr v0, v3

    .line 101
    div-int/lit8 v0, v0, 0x2

    .line 103
    add-int/2addr p1, v0

    .line 104
    add-int/2addr p2, v0

    .line 105
    :cond_68
    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 108
    :cond_6b
    :goto_6b
    return-void
.end method
