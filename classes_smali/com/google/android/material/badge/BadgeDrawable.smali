.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$SavedState;,
        Lcom/google/android/material/badge/BadgeDrawable$BadgeGravity;
    }
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field public static final BOTTOM_END:I = 0x800055

.field public static final BOTTOM_START:I = 0x800053

.field public static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field private static final DEFAULT_MAX_BADGE_CHARACTER_COUNT:I = 0x4

.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I

.field private static final MAX_CIRCULAR_BADGE_NUMBER_COUNT:I = 0x9

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final badgeRadius:F

.field private final badgeWidePadding:F

.field private final badgeWithTextRadius:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    .line 3
    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 5
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    .line 7
    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 25
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 27
    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 32
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    .line 41
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    .line 50
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v0

    .line 56
    int-to-float v0, v0

    .line 57
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 59
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    .line 61
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 64
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 77
    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 82
    sget p1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearanceResource(I)V

    .line 87
    return-void
.end method

.method private calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    const v1, 0x800053

    .line 10
    if-eq v0, v1, :cond_1d

    .line 12
    const v2, 0x800055

    .line 15
    if-eq v0, v2, :cond_1d

    .line 17
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 19
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 21
    invoke-static {v2}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    int-to-float v0, v2

    .line 27
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 29
    goto :goto_29

    .line 30
    :cond_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 32
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 34
    invoke-static {v2}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 37
    move-result v2

    .line 38
    sub-int/2addr v0, v2

    .line 39
    int-to-float v0, v0

    .line 40
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 42
    :goto_29
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 45
    move-result v0

    .line 46
    const/16 v2, 0x9

    .line 48
    if-gt v0, v2, :cond_43

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3a

    .line 56
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 61
    :goto_3c
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 63
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 65
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 67
    goto :goto_5b

    .line 68
    :cond_43
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 70
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 72
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 74
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 80
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    .line 83
    move-result v0

    .line 84
    const/high16 v2, 0x40000000  # 2.0f

    .line 86
    div-float/2addr v0, v2

    .line 87
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    .line 89
    add-float/2addr v0, v2

    .line 90
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 92
    :goto_5b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_68

    .line 102
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 107
    :goto_6a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result p1

    .line 111
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 113
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 116
    move-result v0

    .line 117
    const v2, 0x800033

    .line 120
    if-eq v0, v2, :cond_a7

    .line 122
    if-eq v0, v1, :cond_a7

    .line 124
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 126
    invoke-static {p3}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_94

    .line 132
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 134
    int-to-float p2, p2

    .line 135
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 137
    add-float/2addr p2, p3

    .line 138
    int-to-float p1, p1

    .line 139
    sub-float/2addr p2, p1

    .line 140
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 142
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 145
    move-result p1

    .line 146
    int-to-float p1, p1

    .line 147
    sub-float/2addr p2, p1

    .line 148
    goto :goto_a4

    .line 149
    :cond_94
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 151
    int-to-float p2, p2

    .line 152
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 154
    sub-float/2addr p2, p3

    .line 155
    int-to-float p1, p1

    .line 156
    add-float/2addr p2, p1

    .line 157
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 159
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 162
    move-result p1

    .line 163
    int-to-float p1, p1

    .line 164
    add-float/2addr p2, p1

    .line 165
    :goto_a4
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 167
    goto :goto_d2

    .line 168
    :cond_a7
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 170
    invoke-static {p3}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 173
    move-result p3

    .line 174
    if-nez p3, :cond_c0

    .line 176
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 178
    int-to-float p2, p2

    .line 179
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 181
    sub-float/2addr p2, p3

    .line 182
    int-to-float p1, p1

    .line 183
    add-float/2addr p2, p1

    .line 184
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 186
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 189
    move-result p1

    .line 190
    int-to-float p1, p1

    .line 191
    add-float/2addr p2, p1

    .line 192
    goto :goto_d0

    .line 193
    :cond_c0
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 195
    int-to-float p2, p2

    .line 196
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 198
    add-float/2addr p2, p3

    .line 199
    int-to-float p1, p1

    .line 200
    sub-float/2addr p2, p1

    .line 201
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 203
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 206
    move-result p1

    .line 207
    int-to-float p1, p1

    .line 208
    sub-float/2addr p2, p1

    .line 209
    :goto_d0
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 211
    :goto_d2
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    .line 3
    sget v1, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 9
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 4

    .line 1
    const-string v0, "badge"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 15
    :cond_e
    sget v1, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    .line 17
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V

    .line 9
    return-object v0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 24
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 26
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    move-result v0

    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 34
    int-to-float v0, v0

    .line 35
    add-float/2addr v3, v0

    .line 36
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method private getBadgeText()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 7
    if-gt v0, v1, :cond_11

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/content/Context;

    .line 26
    if-nez v0, :cond_1e

    .line 28
    const-string v0, ""

    .line 30
    return-object v0

    .line 31
    :cond_1e
    sget v1, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    .line 33
    const/4 v2, 0x2

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    .line 37
    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v4

    .line 43
    aput-object v4, v2, v3

    .line 45
    const/4 v3, 0x1

    .line 46
    const-string v4, "+"

    .line 48
    aput-object v4, v2, v3

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method private loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 1
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 3
    const/4 v6, 0x0

    .line 4
    new-array v5, v6, [I

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p2

    .line 14
    sget p3, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    .line 16
    const/4 p4, 0x4

    .line 17
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 24
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    .line 26
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 29
    move-result p4

    .line 30
    if-eqz p4, :cond_26

    .line 32
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 35
    move-result p3

    .line 36
    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 39
    :cond_26
    sget p3, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    .line 41
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    .line 44
    move-result p3

    .line 45
    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 48
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 50
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 53
    move-result p4

    .line 54
    if-eqz p4, :cond_3e

    .line 56
    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 63
    :cond_3e
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    .line 65
    const p3, 0x800035

    .line 68
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    .line 75
    sget p1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    .line 77
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffset(I)V

    .line 84
    sget p1, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    .line 86
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffset(I)V

    .line 93
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 8
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_15

    .line 15
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 22
    :cond_15
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 29
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 36
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    .line 43
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffset(I)V

    .line 50
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffset(I)V

    .line 57
    return-void
.end method

.method private setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/Context;

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 29
    return-void
.end method

.method private setTextAppearanceResource(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    .line 14
    invoke-direct {v1, v0, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 20
    return-void
.end method

.method private updateCenterAndBounds()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 9
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_14

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/View;

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object v1, v2

    .line 22
    :goto_15
    if-eqz v0, :cond_6d

    .line 24
    if-nez v1, :cond_1a

    .line 26
    goto :goto_6d

    .line 27
    :cond_1a
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 32
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    new-instance v4, Landroid/graphics/Rect;

    .line 39
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 42
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 45
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 47
    if-eqz v5, :cond_36

    .line 49
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    :cond_36
    if-nez v2, :cond_3c

    .line 57
    sget-boolean v5, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    .line 59
    if-eqz v5, :cond_47

    .line 61
    :cond_3c
    if-nez v2, :cond_44

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    :cond_44
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    :cond_47
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/badge/BadgeDrawable;->calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 77
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 79
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 81
    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 83
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 85
    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    .line 88
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 90
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 95
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_6d

    .line 103
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 105
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 8
    sub-double/2addr v0, v2

    .line 9
    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    .line 11
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide v0

    .line 15
    double-to-int v0, v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 20
    return-void
.end method


# virtual methods
.method public clearNumber()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_25

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_25

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_25

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawText(Landroid/graphics/Canvas;)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getBadgeGravity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBadgeTextColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_60

    .line 15
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 17
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$900(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_5f

    .line 23
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/content/Context;

    .line 31
    if-nez v0, :cond_21

    .line 33
    return-object v1

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 37
    move-result v1

    .line 38
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    if-gt v1, v2, :cond_4a

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 50
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$900(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 57
    move-result v2

    .line 58
    new-array v4, v4, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 63
    move-result v5

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v4, v3

    .line 70
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_4a
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 77
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$1000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 80
    move-result v1

    .line 81
    new-array v2, v4, [Ljava/lang/Object;

    .line 83
    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v2, v3

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_5f
    return-object v1

    .line 97
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 99
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$800(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;

    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxCharacterCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNumber()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 11
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getSavedState()Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    return-object v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasNumber()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$702(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object v0

    .line 16
    if-eq v0, p1, :cond_19

    .line 18
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    :cond_19
    return-void
.end method

.method public setBadgeGravity(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_2e

    .line 9
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 14
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 16
    if-eqz p1, :cond_2e

    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2e

    .line 24
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 34
    if-eqz v0, :cond_2a

    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    :goto_2b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 47
    :cond_2e
    return-void
.end method

.method public setBadgeTextColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 15
    move-result v0

    .line 16
    if-eq v0, p1, :cond_1d

    .line 18
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30
    :cond_1d
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$1002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$802(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$902(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 9
    return-void
.end method

.method public setMaxCharacterCount(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_1c

    .line 9
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    .line 17
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29
    :cond_1c
    return-void
.end method

.method public setNumber(I)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result p1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 8
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    .line 11
    move-result v0

    .line 12
    if-eq v0, p1, :cond_1e

    .line 14
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 19
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 31
    :cond_1e
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 9
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5
    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    return-void
.end method
