.class public final Lmiuix/spring/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Capability:[I

.field public static final Capability_queryPatterns:I = 0x0

.field public static final Capability_shortcutMatchRequired:I = 0x1

.field public static final ColorStateListItem:[I

.field public static final ColorStateListItem_alpha:I = 0x3

.field public static final ColorStateListItem_android_alpha:I = 0x1

.field public static final ColorStateListItem_android_color:I = 0x0

.field public static final ColorStateListItem_android_lStar:I = 0x2

.field public static final ColorStateListItem_lStar:I = 0x4

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final FontFamily_fontProviderSystemFontFamily:I = 0x6

.field public static final GradientColor:[I

.field public static final GradientColorItem:[I

.field public static final GradientColorItem_android_color:I = 0x0

.field public static final GradientColorItem_android_offset:I = 0x1

.field public static final GradientColor_android_centerColor:I = 0x7

.field public static final GradientColor_android_centerX:I = 0x3

.field public static final GradientColor_android_centerY:I = 0x4

.field public static final GradientColor_android_endColor:I = 0x1

.field public static final GradientColor_android_endX:I = 0xa

.field public static final GradientColor_android_endY:I = 0xb

.field public static final GradientColor_android_gradientRadius:I = 0x5

.field public static final GradientColor_android_startColor:I = 0x0

.field public static final GradientColor_android_startX:I = 0x8

.field public static final GradientColor_android_startY:I = 0x9

.field public static final GradientColor_android_tileMode:I = 0x6

.field public static final GradientColor_android_type:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Lmiuix/spring/R$styleable;->Capability:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_3a

    sput-object v1, Lmiuix/spring/R$styleable;->ColorStateListItem:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_48

    sput-object v1, Lmiuix/spring/R$styleable;->FontFamily:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_5a

    sput-object v1, Lmiuix/spring/R$styleable;->FontFamilyFont:[I

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_72

    sput-object v1, Lmiuix/spring/R$styleable;->GradientColor:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lmiuix/spring/R$styleable;->GradientColorItem:[I

    return-void

    :array_32
    .array-data 4
        0x7f04050d
        0x7f040567
    .end array-data

    :array_3a
    .array-data 4
        0x10101a5
        0x101031f
        0x1010647
        0x7f040084
        0x7f040331
    .end array-data

    :array_48
    .array-data 4
        0x7f0402a5
        0x7f0402a6
        0x7f0402a7
        0x7f0402a8
        0x7f0402a9
        0x7f0402aa
        0x7f0402ab
    .end array-data

    :array_5a
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f0402a3
        0x7f0402ac
        0x7f0402ad
        0x7f0402ae
        0x7f0406a8
    .end array-data

    :array_72
    .array-data 4
        0x101019d
        0x101019e
        0x10101a1
        0x10101a2
        0x10101a3
        0x10101a4
        0x1010201
        0x101020b
        0x1010510
        0x1010511
        0x1010512
        0x1010513
    .end array-data

    :array_8e
    .array-data 4
        0x10101a5
        0x1010514
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
