.class public final enum Lmiuix/graphics/MiuiBlendMode;
.super Ljava/lang/Enum;
.source "MiuiBlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/graphics/MiuiBlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/graphics/MiuiBlendMode;

.field private static final BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

.field public static final enum CLEAR:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR_BURN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR_DODGE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DARKEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DIFFERENCE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_ATOP:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_IN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_OUT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_OVER:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum EXCLUSION:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum HARD_LIGHT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum HUE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST_COEFF:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST_SEPARABLE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LIGHTEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LUMINOSITY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum MODULATE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum MULTIPLY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum OVERLAY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum PLUS:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SATURATION:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SCREEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SOFT_LIGHT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_ATOP:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_IN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_OUT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_OVER:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum XOR:Lmiuix/graphics/MiuiBlendMode;


# instance fields
.field private final mPorterDuffMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 35

    new-instance v0, Lmiuix/graphics/MiuiBlendMode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiuix/graphics/MiuiBlendMode;->CLEAR:Lmiuix/graphics/MiuiBlendMode;

    new-instance v1, Lmiuix/graphics/MiuiBlendMode;

    const-string v3, "SRC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lmiuix/graphics/MiuiBlendMode;->SRC:Lmiuix/graphics/MiuiBlendMode;

    new-instance v3, Lmiuix/graphics/MiuiBlendMode;

    const-string v5, "DST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lmiuix/graphics/MiuiBlendMode;->DST:Lmiuix/graphics/MiuiBlendMode;

    new-instance v5, Lmiuix/graphics/MiuiBlendMode;

    const-string v7, "SRC_OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lmiuix/graphics/MiuiBlendMode;->SRC_OVER:Lmiuix/graphics/MiuiBlendMode;

    new-instance v7, Lmiuix/graphics/MiuiBlendMode;

    const-string v9, "DST_OVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lmiuix/graphics/MiuiBlendMode;->DST_OVER:Lmiuix/graphics/MiuiBlendMode;

    new-instance v9, Lmiuix/graphics/MiuiBlendMode;

    const-string v11, "SRC_IN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lmiuix/graphics/MiuiBlendMode;->SRC_IN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v11, Lmiuix/graphics/MiuiBlendMode;

    const-string v13, "DST_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lmiuix/graphics/MiuiBlendMode;->DST_IN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v13, Lmiuix/graphics/MiuiBlendMode;

    const-string v15, "SRC_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lmiuix/graphics/MiuiBlendMode;->SRC_OUT:Lmiuix/graphics/MiuiBlendMode;

    new-instance v15, Lmiuix/graphics/MiuiBlendMode;

    const-string v14, "DST_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lmiuix/graphics/MiuiBlendMode;->DST_OUT:Lmiuix/graphics/MiuiBlendMode;

    new-instance v14, Lmiuix/graphics/MiuiBlendMode;

    const-string v12, "SRC_ATOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lmiuix/graphics/MiuiBlendMode;->SRC_ATOP:Lmiuix/graphics/MiuiBlendMode;

    new-instance v12, Lmiuix/graphics/MiuiBlendMode;

    const-string v10, "DST_ATOP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lmiuix/graphics/MiuiBlendMode;->DST_ATOP:Lmiuix/graphics/MiuiBlendMode;

    new-instance v10, Lmiuix/graphics/MiuiBlendMode;

    const-string v8, "XOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lmiuix/graphics/MiuiBlendMode;->XOR:Lmiuix/graphics/MiuiBlendMode;

    new-instance v8, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "PLUS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lmiuix/graphics/MiuiBlendMode;->PLUS:Lmiuix/graphics/MiuiBlendMode;

    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    const-string v4, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->MODULATE:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v2, "SCREEN"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->SCREEN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "OVERLAY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->OVERLAY:Lmiuix/graphics/MiuiBlendMode;

    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    const-string v4, "DARKEN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->DARKEN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v2, "LIGHTEN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LIGHTEN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "COLOR_DODGE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->COLOR_DODGE:Lmiuix/graphics/MiuiBlendMode;

    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    const-string v4, "COLOR_BURN"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->COLOR_BURN:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v2, "HARD_LIGHT"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->HARD_LIGHT:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "SOFT_LIGHT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->SOFT_LIGHT:Lmiuix/graphics/MiuiBlendMode;

    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    const-string v4, "DIFFERENCE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->DIFFERENCE:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v4, "EXCLUSION"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->EXCLUSION:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "MULTIPLY"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->MULTIPLY:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "HUE"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->HUE:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "SATURATION"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->SATURATION:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "COLOR"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->COLOR:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "LUMINOSITY"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LUMINOSITY:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "LAST_COEFF"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->LAST_COEFF:Lmiuix/graphics/MiuiBlendMode;

    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "LAST_SEPARABLE"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LAST_SEPARABLE:Lmiuix/graphics/MiuiBlendMode;

    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    const-string v6, "LAST"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->LAST:Lmiuix/graphics/MiuiBlendMode;

    const/16 v4, 0x20

    new-array v4, v4, [Lmiuix/graphics/MiuiBlendMode;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->$VALUES:[Lmiuix/graphics/MiuiBlendMode;

    invoke-static {}, Lmiuix/graphics/MiuiBlendMode;->values()[Lmiuix/graphics/MiuiBlendMode;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/MiuiBlendMode;->BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    return-void
.end method

.method public static blendModeToPorterDuffMode(Lmiuix/graphics/MiuiBlendMode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    sget-object v1, Lmiuix/graphics/MiuiBlendMode$1;->$SwitchMap$miuix$graphics$MiuiBlendMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_46

    return-object v0

    :pswitch_f  #0x12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_12  #0x11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_15  #0x10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_18  #0xf
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1b  #0xe
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1e  #0xd
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_21  #0xc
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_24  #0xb
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_27  #0xa
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2a  #0x9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2d  #0x8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_30  #0x7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_33  #0x6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_36  #0x5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_39  #0x4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_3c  #0x3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_3f  #0x2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_42  #0x1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_27  #0000000a
        :pswitch_24  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_18  #0000000f
        :pswitch_15  #00000010
        :pswitch_12  #00000011
        :pswitch_f  #00000012
    .end packed-switch
.end method

.method public static fromValue(I)Lmiuix/graphics/MiuiBlendMode;
    .registers 6

    sget-object v0, Lmiuix/graphics/MiuiBlendMode;->BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    iget v4, v3, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    if-ne v4, p0, :cond_d

    return-object v3

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toValue(Lmiuix/graphics/MiuiBlendMode;)I
    .registers 1

    iget p0, p0, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/graphics/MiuiBlendMode;
    .registers 2

    const-class v0, Lmiuix/graphics/MiuiBlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/graphics/MiuiBlendMode;

    return-object p0
.end method

.method public static values()[Lmiuix/graphics/MiuiBlendMode;
    .registers 1

    sget-object v0, Lmiuix/graphics/MiuiBlendMode;->$VALUES:[Lmiuix/graphics/MiuiBlendMode;

    invoke-virtual {v0}, [Lmiuix/graphics/MiuiBlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/graphics/MiuiBlendMode;

    return-object v0
.end method
