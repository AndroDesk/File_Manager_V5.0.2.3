.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# static fields
.field private static final ENABLED_PRESSED_STATE_SET:[I

.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field public static final TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String; = "Use a non-transparent color for the default color as it will be used to finish ripple animations."

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 4
    new-array v1, v0, [I

    .line 6
    const v2, 0x10100a7

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v1, v3

    .line 12
    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v2, v1, [I

    .line 17
    fill-array-data v2, :array_5a

    .line 20
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 22
    new-array v2, v0, [I

    .line 24
    const v4, 0x101009c

    .line 27
    aput v4, v2, v3

    .line 29
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 31
    new-array v2, v0, [I

    .line 33
    const v4, 0x1010367

    .line 36
    aput v4, v2, v3

    .line 38
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 40
    new-array v2, v1, [I

    .line 42
    fill-array-data v2, :array_62

    .line 45
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 47
    const/4 v2, 0x3

    .line 48
    new-array v2, v2, [I

    .line 50
    fill-array-data v2, :array_6a

    .line 53
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 55
    new-array v2, v1, [I

    .line 57
    fill-array-data v2, :array_74

    .line 60
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 62
    new-array v2, v1, [I

    .line 64
    fill-array-data v2, :array_7c

    .line 67
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 69
    new-array v0, v0, [I

    .line 71
    const v2, 0x10100a1

    .line 74
    aput v2, v0, v3

    .line 76
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    .line 78
    new-array v0, v1, [I

    .line 80
    fill-array-data v0, :array_84

    .line 83
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 85
    const-string v0, "RippleUtils"

    .line 87
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_5a
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    .line 99
    :array_62
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_6a
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_74
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_7c
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    :array_84
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 7

    .line 1
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_29

    .line 8
    new-array v0, v1, [[I

    .line 10
    new-array v1, v1, [I

    .line 12
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    .line 14
    aput-object v4, v0, v3

    .line 16
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 18
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 21
    move-result v4

    .line 22
    aput v4, v1, v3

    .line 24
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    .line 26
    aput-object v3, v0, v2

    .line 28
    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 30
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 33
    move-result p0

    .line 34
    aput p0, v1, v2

    .line 36
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 38
    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 41
    return-object p0

    .line 42
    :cond_29
    const/16 v0, 0xa

    .line 44
    new-array v4, v0, [[I

    .line 46
    new-array v0, v0, [I

    .line 48
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 50
    aput-object v5, v4, v3

    .line 52
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 55
    move-result v5

    .line 56
    aput v5, v0, v3

    .line 58
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 60
    aput-object v5, v4, v2

    .line 62
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 65
    move-result v5

    .line 66
    aput v5, v0, v2

    .line 68
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 70
    aput-object v2, v4, v1

    .line 72
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 75
    move-result v2

    .line 76
    aput v2, v0, v1

    .line 78
    const/4 v1, 0x3

    .line 79
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 81
    aput-object v2, v4, v1

    .line 83
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 86
    move-result v2

    .line 87
    aput v2, v0, v1

    .line 89
    const/4 v1, 0x4

    .line 90
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    .line 92
    aput-object v2, v4, v1

    .line 94
    aput v3, v0, v1

    .line 96
    const/4 v1, 0x5

    .line 97
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 99
    aput-object v2, v4, v1

    .line 101
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 104
    move-result v2

    .line 105
    aput v2, v0, v1

    .line 107
    const/4 v1, 0x6

    .line 108
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 110
    aput-object v2, v4, v1

    .line 112
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 115
    move-result v2

    .line 116
    aput v2, v0, v1

    .line 118
    const/4 v1, 0x7

    .line 119
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 121
    aput-object v2, v4, v1

    .line 123
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 126
    move-result v2

    .line 127
    aput v2, v0, v1

    .line 129
    const/16 v1, 0x8

    .line 131
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 133
    aput-object v2, v4, v1

    .line 135
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    .line 138
    move-result p0

    .line 139
    aput p0, v0, v1

    .line 141
    const/16 p0, 0x9

    .line 143
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    .line 145
    aput-object v1, v4, p0

    .line 147
    aput v3, v0, p0

    .line 149
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 151
    invoke-direct {p0, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 154
    return-object p0
.end method

.method private static doubleAlpha(I)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 7
    const/16 v1, 0xff

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    invoke-static {p0, v0}, Lf0/d;->c(II)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .registers 3

    .line 1
    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    :goto_c
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 15
    if-eqz p1, :cond_14

    .line 17
    invoke-static {p0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    .line 20
    move-result p0

    .line 21
    :cond_14
    return p0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_27

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v2, 0x1b

    .line 8
    if-gt v1, v2, :cond_26

    .line 10
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_26

    .line 20
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_26

    .line 32
    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    .line 34
    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_26
    return-object p0

    .line 40
    :cond_27
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .registers 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :goto_5
    const/4 v5, 0x1

    .line 7
    if-ge v2, v0, :cond_27

    .line 9
    aget v6, p0, v2

    .line 11
    const v7, 0x101009e

    .line 14
    if-ne v6, v7, :cond_11

    .line 16
    move v3, v5

    .line 17
    goto :goto_24

    .line 18
    :cond_11
    const v7, 0x101009c

    .line 21
    if-ne v6, v7, :cond_18

    .line 23
    :goto_16
    move v4, v5

    .line 24
    goto :goto_24

    .line 25
    :cond_18
    const v7, 0x10100a7

    .line 28
    if-ne v6, v7, :cond_1e

    .line 30
    goto :goto_16

    .line 31
    :cond_1e
    const v7, 0x1010367

    .line 34
    if-ne v6, v7, :cond_24

    .line 36
    goto :goto_16

    .line 37
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_5

    .line 40
    :cond_27
    if-eqz v3, :cond_2c

    .line 42
    if-eqz v4, :cond_2c

    .line 44
    move v1, v5

    .line 45
    :cond_2c
    return v1
.end method
