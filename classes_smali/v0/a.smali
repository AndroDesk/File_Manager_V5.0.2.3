.class public final Lv0/a;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/a$a;,
        Lv0/a$c;,
        Lv0/a$b;,
        Lv0/a$d;
    }
.end annotation


# static fields
.field public static final A:[B

.field public static final k:[I

.field public static final l:[I

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[Ljava/lang/String;

.field public static final q:[I

.field public static final r:[B

.field public static final s:Lv0/a$c;

.field public static final t:[[Lv0/a$c;

.field public static final u:[Lv0/a$c;

.field public static final v:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lv0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lv0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/res/AssetManager$AssetInputStream;

.field public b:I

.field public final c:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lv0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashSet;

.field public e:Ljava/nio/ByteOrder;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .registers 29

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v7, v1, v8

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v0, [Ljava/lang/Integer;

    aput-object v9, v1, v4

    const/4 v12, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v8

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v6, [I

    fill-array-data v1, :array_aea

    sput-object v1, Lv0/a;->k:[I

    new-array v1, v2, [I

    aput v10, v1, v4

    sput-object v1, Lv0/a;->l:[I

    new-array v1, v6, [B

    fill-array-data v1, :array_af4

    sput-object v1, Lv0/a;->m:[B

    new-array v1, v5, [B

    fill-array-data v1, :array_afa

    sput-object v1, Lv0/a;->n:[B

    const/16 v1, 0xa

    new-array v12, v1, [B

    fill-array-data v12, :array_b02

    sput-object v12, Lv0/a;->o:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    filled-new-array/range {v16 .. v28}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lv0/a;->p:[Ljava/lang/String;

    const/16 v12, 0xe

    new-array v1, v12, [I

    fill-array-data v1, :array_b0c

    sput-object v1, Lv0/a;->q:[I

    new-array v1, v10, [B

    fill-array-data v1, :array_b2c

    sput-object v1, Lv0/a;->r:[B

    const/16 v1, 0x29

    new-array v1, v1, [Lv0/a$c;

    new-instance v12, Lv0/a$c;

    const-string v10, "NewSubfileType"

    const/16 v5, 0xfe

    invoke-direct {v12, v10, v5, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v12, v1, v4

    new-instance v5, Lv0/a$c;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v5, v10, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v10, "ImageWidth"

    const/16 v12, 0x100

    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    aput-object v5, v1, v8

    new-instance v5, Lv0/a$c;

    const-string v10, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    aput-object v5, v1, v6

    new-instance v5, Lv0/a$c;

    const-string v10, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v0

    new-instance v5, Lv0/a$c;

    const-string v10, "Compression"

    const/16 v12, 0x103

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v14

    new-instance v5, Lv0/a$c;

    const-string v10, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x7

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "Make"

    const/16 v12, 0x10f

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "Model"

    const/16 v12, 0x110

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x9

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v12, "StripOffsets"

    const/16 v10, 0x111

    invoke-direct {v5, v12, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v12, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v5, v12, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "RowsPerStrip"

    const/16 v12, 0x116

    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v10, 0xd

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "StripByteCounts"

    const/16 v12, 0x117

    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v10, 0xe

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xf

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x10

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x11

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x12

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x13

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "Software"

    const/16 v12, 0x131

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x14

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x15

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v12, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v5, v12, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x16

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v12, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v5, v12, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x17

    aput-object v5, v1, v10

    new-instance v5, Lv0/a$c;

    const-string v12, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x18

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x19

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1a

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1b

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1c

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v5, v12, v2, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1d

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v5, v12, v2, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1e

    aput-object v5, v1, v2

    new-instance v5, Lv0/a$c;

    const-string v12, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1f

    aput-object v5, v1, v2

    new-instance v2, Lv0/a$c;

    const-string v5, "Copyright"

    const v12, 0x8298

    invoke-direct {v2, v5, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "SensorTopBorder"

    invoke-direct {v2, v5, v0, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v2, v5, v14, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x24

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "SensorBottomBorder"

    const/4 v12, 0x6

    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x25

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "SensorRightBorder"

    const/4 v12, 0x7

    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x26

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "ISO"

    invoke-direct {v2, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x27

    aput-object v2, v1, v5

    new-instance v2, Lv0/a$c;

    const-string v5, "JpgFromRaw"

    const/16 v10, 0x2e

    invoke-direct {v2, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x28

    aput-object v2, v1, v5

    const/16 v2, 0x3b

    new-array v2, v2, [Lv0/a$c;

    new-instance v5, Lv0/a$c;

    const-string v10, "ExposureTime"

    const v12, 0x829a

    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v4

    new-instance v5, Lv0/a$c;

    const-string v10, "FNumber"

    const v12, 0x829d

    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v5, v2, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v8

    new-instance v5, Lv0/a$c;

    const-string v10, "SpectralSensitivity"

    const v12, 0x8824

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v6

    new-instance v5, Lv0/a$c;

    const-string v10, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v0

    new-instance v5, Lv0/a$c;

    const-string v10, "OECF"

    const v12, 0x8828

    const/4 v4, 0x7

    invoke-direct {v5, v10, v12, v4}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v14

    new-instance v5, Lv0/a$c;

    const-string v10, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v5, v2, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v4

    new-instance v5, Lv0/a$c;

    const-string v10, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v5, v2, v10

    new-instance v5, Lv0/a$c;

    const-string v10, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v5, v10, v12, v4}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x9

    aput-object v5, v2, v4

    new-instance v4, Lv0/a$c;

    const-string v5, "CompressedBitsPerPixel"

    const v10, 0x9102

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v10, "ShutterSpeedValue"

    const v12, 0x9201

    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v4, v2, v10

    new-instance v4, Lv0/a$c;

    const-string v10, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v4, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v4, v2, v10

    new-instance v4, Lv0/a$c;

    const-string v10, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xd

    aput-object v4, v2, v10

    new-instance v4, Lv0/a$c;

    const-string v10, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xe

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "MaxApertureValue"

    const v10, 0x9205

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubjectDistance"

    const v10, 0x9206

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "MeteringMode"

    const v10, 0x9207

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "LightSource"

    const v10, 0x9208

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "Flash"

    const v10, 0x9209

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FocalLength"

    const v10, 0x920a

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubjectArea"

    const v10, 0x9214

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "MakerNote"

    const v10, 0x927c

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "UserComment"

    const v10, 0x9286

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubSecTime"

    const v10, 0x9290

    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubSecTimeOriginal"

    const v10, 0x9291

    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubSecTimeDigitized"

    const v10, 0x9292

    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FlashpixVersion"

    const v10, 0xa000

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "ColorSpace"

    const v10, 0xa001

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "PixelXDimension"

    const v10, 0xa002

    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "PixelYDimension"

    const v10, 0xa003

    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "RelatedSoundFile"

    const v10, 0xa004

    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1f

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v4, v5, v10, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FlashEnergy"

    const v10, 0xa20b

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SpatialFrequencyResponse"

    const v10, 0xa20c

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FocalPlaneXResolution"

    const v10, 0xa20e

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FocalPlaneYResolution"

    const v10, 0xa20f

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x24

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FocalPlaneResolutionUnit"

    const v10, 0xa210

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x25

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubjectLocation"

    const v10, 0xa214

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x26

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "ExposureIndex"

    const v10, 0xa215

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x27

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SensingMethod"

    const v10, 0xa217

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x28

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FileSource"

    const v10, 0xa300

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x29

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SceneType"

    const v10, 0xa301

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2a

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "CFAPattern"

    const v10, 0xa302

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2b

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "CustomRendered"

    const v10, 0xa401

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2c

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "ExposureMode"

    const v10, 0xa402

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2d

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "WhiteBalance"

    const v10, 0xa403

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2e

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "DigitalZoomRatio"

    const v10, 0xa404

    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2f

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "FocalLengthIn35mmFilm"

    const v10, 0xa405

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x30

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SceneCaptureType"

    const v10, 0xa406

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x31

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "GainControl"

    const v10, 0xa407

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x32

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "Contrast"

    const v10, 0xa408

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x33

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "Saturation"

    const v10, 0xa409

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x34

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "Sharpness"

    const v10, 0xa40a

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x35

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "DeviceSettingDescription"

    const v10, 0xa40b

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x36

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "SubjectDistanceRange"

    const v10, 0xa40c

    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x37

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "ImageUniqueID"

    const v10, 0xa420

    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x38

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "DNGVersion"

    const v10, 0xc612

    const/4 v12, 0x1

    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x39

    aput-object v4, v2, v5

    new-instance v4, Lv0/a$c;

    const-string v5, "DefaultCropSize"

    const v10, 0xc620

    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x3a

    aput-object v4, v2, v5

    const/16 v4, 0x1f

    new-array v4, v4, [Lv0/a$c;

    new-instance v5, Lv0/a$c;

    const-string v10, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-direct {v5, v10, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v12

    new-instance v5, Lv0/a$c;

    const-string v10, "GPSLatitudeRef"

    invoke-direct {v5, v10, v0, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v0

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSLatitude"

    invoke-direct {v0, v5, v8, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSLongitudeRef"

    invoke-direct {v0, v5, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v6

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSAltitudeRef"

    const/4 v10, 0x1

    invoke-direct {v0, v5, v14, v10}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSTimeStamp"

    const/4 v10, 0x7

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSSatellites"

    const/16 v10, 0x8

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSStatus"

    const/16 v10, 0x9

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSMeasureMode"

    const/16 v10, 0xa

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDOP"

    const/16 v10, 0xb

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSSpeedRef"

    const/16 v10, 0xc

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSSpeed"

    const/16 v10, 0xd

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSTrackRef"

    const/16 v10, 0xe

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSTrack"

    const/16 v10, 0xf

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSImgDirectionRef"

    const/16 v10, 0x10

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSImgDirection"

    const/16 v10, 0x11

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSMapDatum"

    const/16 v10, 0x12

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestLatitudeRef"

    const/16 v10, 0x13

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestLatitude"

    const/16 v10, 0x14

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestLongitudeRef"

    const/16 v10, 0x15

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestLongitude"

    const/16 v10, 0x16

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestBearing"

    const/16 v10, 0x18

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestDistanceRef"

    const/16 v10, 0x19

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDestDistance"

    const/16 v10, 0x1a

    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSProcessingMethod"

    const/16 v10, 0x1b

    const/4 v12, 0x7

    invoke-direct {v0, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSAreaInformation"

    const/16 v10, 0x1c

    invoke-direct {v0, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDateStamp"

    const/16 v10, 0x1d

    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lv0/a$c;

    const-string v5, "GPSDifferential"

    const/16 v10, 0x1e

    invoke-direct {v0, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    const/4 v0, 0x1

    new-array v5, v0, [Lv0/a$c;

    new-instance v10, Lv0/a$c;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v10, v12, v0, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v10, v5, v0

    const/16 v10, 0x25

    new-array v10, v10, [Lv0/a$c;

    new-instance v12, Lv0/a$c;

    const-string v14, "NewSubfileType"

    const/16 v6, 0xfe

    const/4 v8, 0x4

    invoke-direct {v12, v14, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v12, v10, v0

    new-instance v0, Lv0/a$c;

    const-string v6, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v0, v6, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x1

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ThumbnailImageWidth"

    const/16 v8, 0x100

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x2

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ThumbnailImageLength"

    const/16 v8, 0x101

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x3

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v8, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x4

    aput-object v0, v10, v8

    new-instance v0, Lv0/a$c;

    const-string v8, "Compression"

    const/16 v12, 0x103

    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x5

    aput-object v0, v10, v8

    new-instance v0, Lv0/a$c;

    const-string v8, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x6

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x7

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0xa

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Orientation"

    const/16 v8, 0x112

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "RowsPerStrip"

    const/16 v8, 0x116

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0xd

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0xe

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "XResolution"

    const/16 v8, 0x11a

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Software"

    const/16 v8, 0x131

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v12, 0x4

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "Copyright"

    const v8, 0x8298

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v12, 0x4

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "DNGVersion"

    const v8, 0xc612

    const/4 v12, 0x1

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "DefaultCropSize"

    const v8, 0xc620

    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x24

    aput-object v0, v10, v6

    new-instance v0, Lv0/a$c;

    const-string v6, "StripOffsets"

    const/16 v8, 0x111

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv0/a;->s:Lv0/a$c;

    new-array v0, v12, [Lv0/a$c;

    new-instance v6, Lv0/a$c;

    const-string v8, "ThumbnailImage"

    const/16 v12, 0x100

    const/4 v14, 0x7

    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v6, v0, v8

    new-instance v6, Lv0/a$c;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    const/4 v14, 0x4

    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v6, v0, v8

    new-instance v6, Lv0/a$c;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v6, v0, v8

    new-array v6, v8, [Lv0/a$c;

    new-instance v8, Lv0/a$c;

    const-string v12, "PreviewImageStart"

    move-object/from16 v17, v11

    const/16 v11, 0x101

    invoke-direct {v8, v12, v11, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v8, v6, v11

    new-instance v8, Lv0/a$c;

    const-string v12, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v12, v11, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x1

    aput-object v8, v6, v11

    new-array v8, v11, [Lv0/a$c;

    new-instance v12, Lv0/a$c;

    const-string v14, "AspectFrame"

    const/16 v11, 0x1113

    move-object/from16 v21, v13

    const/4 v13, 0x3

    invoke-direct {v12, v14, v11, v13}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v12, v8, v11

    const/4 v12, 0x1

    new-array v14, v12, [Lv0/a$c;

    new-instance v12, Lv0/a$c;

    const-string v11, "ColorSpace"

    move-object/from16 v22, v7

    const/16 v7, 0x37

    invoke-direct {v12, v11, v7, v13}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v12, v14, v7

    const/16 v11, 0xa

    new-array v12, v11, [[Lv0/a$c;

    aput-object v1, v12, v7

    const/4 v7, 0x1

    aput-object v2, v12, v7

    const/4 v2, 0x2

    aput-object v4, v12, v2

    aput-object v5, v12, v13

    const/4 v2, 0x4

    aput-object v10, v12, v2

    const/4 v4, 0x5

    aput-object v1, v12, v4

    const/4 v1, 0x6

    aput-object v0, v12, v1

    const/4 v0, 0x7

    aput-object v6, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v14, v12, v0

    sput-object v12, Lv0/a;->t:[[Lv0/a$c;

    new-array v0, v1, [Lv0/a$c;

    new-instance v1, Lv0/a$c;

    const-string v4, "SubIFDPointer"

    const/16 v5, 0x14a

    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lv0/a$c;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lv0/a$c;

    const-string v4, "GPSInfoIFDPointer"

    const v5, 0x8825

    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lv0/a$c;

    const-string v4, "InteroperabilityIFDPointer"

    const v5, 0xa005

    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lv0/a$c;

    const-string v4, "CameraSettingsIFDPointer"

    const/16 v5, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lv0/a$c;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v2, v4, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lv0/a;->u:[Lv0/a$c;

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/util/HashMap;

    sput-object v1, Lv0/a;->v:[Ljava/util/HashMap;

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Lv0/a;->w:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lv0/a;->x:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv0/a;->y:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lv0/a;->z:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lv0/a;->A:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v12, 0x0

    :goto_a51
    sget-object v0, Lv0/a;->t:[[Lv0/a$c;

    array-length v1, v0

    if-ge v12, v1, :cond_a8c

    sget-object v1, Lv0/a;->v:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v12

    sget-object v1, Lv0/a;->w:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v12

    aget-object v0, v0, v12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a6c
    if-ge v2, v1, :cond_a89

    aget-object v4, v0, v2

    sget-object v5, Lv0/a;->v:[Ljava/util/HashMap;

    aget-object v5, v5, v12

    iget v6, v4, Lv0/a$c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv0/a;->w:[Ljava/util/HashMap;

    aget-object v5, v5, v12

    iget-object v6, v4, Lv0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6c

    :cond_a89
    add-int/lit8 v12, v12, 0x1

    goto :goto_a51

    :cond_a8c
    sget-object v0, Lv0/a;->y:Ljava/util/HashMap;

    sget-object v1, Lv0/a;->u:[Lv0/a$c;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Lv0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iget v2, v2, Lv0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    iget v2, v2, Lv0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    iget v2, v2, Lv0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    aget-object v2, v1, v2

    iget v2, v2, Lv0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Lv0/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    nop

    :array_aea
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_af4
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_afa
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_b02
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_b0c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_b2c
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lv0/a;->t:[[Lv0/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lv0/a;->d:Ljava/util/HashSet;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_70

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_23

    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_25

    :cond_23
    iput-object v0, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    :goto_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    :try_start_27
    sget-object v2, Lv0/a;->t:[[Lv0/a$c;

    array-length v2, v2

    if-ge v1, v2, :cond_38

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_38
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1}, Lv0/a;->f(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lv0/a;->b:I

    new-instance p1, Lv0/a$a;

    invoke-direct {p1, v1}, Lv0/a$a;-><init>(Ljava/io/InputStream;)V

    iget v1, p0, Lv0/a;->b:I

    packed-switch v1, :pswitch_data_78

    goto :goto_63

    :pswitch_50  #0xa
    invoke-virtual {p0, p1}, Lv0/a;->j(Lv0/a$a;)V

    goto :goto_63

    :pswitch_54  #0x9
    invoke-virtual {p0, p1}, Lv0/a;->h(Lv0/a$a;)V

    goto :goto_63

    :pswitch_58  #0x7
    invoke-virtual {p0, p1}, Lv0/a;->g(Lv0/a$a;)V

    goto :goto_63

    :pswitch_5c  #0x4
    invoke-virtual {p0, p1, v0, v0}, Lv0/a;->e(Lv0/a$a;II)V

    goto :goto_63

    :pswitch_60  #0x0, 0x1, 0x2, 0x3, 0x5, 0x6, 0x8, 0xb
    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    :goto_63
    invoke-virtual {p0, p1}, Lv0/a;->p(Lv0/a$a;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_66} :catch_6c
    .catchall {:try_start_27 .. :try_end_66} :catchall_67

    goto :goto_6c

    :catchall_67
    move-exception p1

    invoke-virtual {p0}, Lv0/a;->a()V

    throw p1

    :catch_6c
    :goto_6c
    invoke-virtual {p0}, Lv0/a;->a()V

    return-void

    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_60  #00000001
        :pswitch_60  #00000002
        :pswitch_60  #00000003
        :pswitch_5c  #00000004
        :pswitch_60  #00000005
        :pswitch_60  #00000006
        :pswitch_58  #00000007
        :pswitch_60  #00000008
        :pswitch_54  #00000009
        :pswitch_50  #0000000a
        :pswitch_60  #0000000b
    .end packed-switch
.end method

.method public static b(Ljava/io/Serializable;)[J
    .registers 5

    instance-of v0, p0, [I

    if-eqz v0, :cond_16

    check-cast p0, [I

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0

    :cond_16
    instance-of v0, p0, [J

    if-eqz v0, :cond_1d

    check-cast p0, [J

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Lv0/a$a;)Ljava/nio/ByteOrder;
    .registers 3

    invoke-virtual {p0}, Lv0/a$a;->readShort()S

    move-result p0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_26

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_f

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 7

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-static {v0}, Lv0/a$b;->a(Ljava/lang/String;)Lv0/a$b;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_33

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p1}, Lv0/a;->d(Ljava/lang/String;)Lv0/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    sget-object v2, Lv0/a;->x:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lv0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    iget p1, v0, Lv0/a$b;->a:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_3c

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3c

    const-string p1, "GPS Timestamp format is not rational. format="

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v0, Lv0/a$b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3c
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [Lv0/a$d;

    if-eqz p1, :cond_87

    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    goto :goto_87

    :cond_4b
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-wide v3, v2, Lv0/a$d;->a:J

    long-to-float v3, v3

    iget-wide v4, v2, Lv0/a$d;->b:J

    long-to-float v2, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v3, v2, Lv0/a$d;->a:J

    long-to-float v3, v3

    iget-wide v4, v2, Lv0/a$d;->b:J

    long-to-float v2, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object p1, p1, v1

    iget-wide v2, p1, Lv0/a$d;->a:J

    long-to-float v2, v2

    iget-wide v3, p1, Lv0/a$d;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_87
    :goto_87
    const-string v0, "Invalid GPS Timestamp array. array="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_9c
    :try_start_9c
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lv0/a$b;->e(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a6} :catch_a7

    return-object p1

    :catch_a7
    :cond_a7
    return-object v1
.end method

.method public final d(Ljava/lang/String;)Lv0/a$b;
    .registers 4

    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "PhotographicSensitivity"

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sget-object v1, Lv0/a;->t:[[Lv0/a$c;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    if-eqz v1, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lv0/a$a;II)V
    .registers 13

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    move-result v0

    const-string v1, "Invalid marker: "

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14f

    const/4 v3, 0x1

    add-int/2addr p2, v3

    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_138

    add-int/2addr p2, v3

    :goto_1c
    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_11f

    add-int/2addr p2, v3

    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    move-result v0

    add-int/2addr p2, v3

    const/16 v1, -0x27

    if-eq v0, v1, :cond_11a

    const/16 v1, -0x26

    if-ne v0, v1, :cond_32

    goto/16 :goto_11a

    :cond_32
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v1

    const/4 v4, -0x2

    add-int/2addr v1, v4

    add-int/lit8 p2, p2, 0x2

    const-string v5, "Invalid length"

    if-ltz v1, :cond_114

    const/16 v6, -0x1f

    const/4 v7, 0x0

    const-string v8, "Invalid exif"

    if-eq v0, v6, :cond_b7

    if-eq v0, v4, :cond_8e

    packed-switch v0, :pswitch_data_166

    packed-switch v0, :pswitch_data_172

    packed-switch v0, :pswitch_data_17c

    packed-switch v0, :pswitch_data_186

    goto/16 :goto_e9

    :pswitch_55  #0xffffffc0, 0xffffffc1, 0xffffffc2, 0xffffffc3, 0xffffffc5, 0xffffffc6, 0xffffffc7, 0xffffffc9, 0xffffffca, 0xffffffcb, 0xffffffcd, 0xffffffce, 0xffffffcf
    invoke-virtual {p1, v3}, Lv0/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_86

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v4

    int-to-long v6, v4

    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v4}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v4

    const-string v6, "ImageLength"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v4

    int-to-long v6, v4

    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v4}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v4

    const-string v6, "ImageWidth"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x5

    goto :goto_e9

    :cond_86
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_b1

    const-string v1, "UserComment"

    invoke-virtual {p0, v1}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e8

    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    new-instance v6, Ljava/lang/String;

    sget-object v8, Lv0/a;->z:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lv0/a$b;->a(Ljava/lang/String;)Lv0/a$b;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    :cond_b1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    const/4 v0, 0x6

    if-ge v1, v0, :cond_bb

    goto :goto_e9

    :cond_bb
    new-array v4, v0, [B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_10e

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v1, -0x6

    sget-object v0, Lv0/a;->A:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d0

    goto :goto_e9

    :cond_d0
    if-lez v1, :cond_108

    iput p2, p0, Lv0/a;->f:I

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_102

    add-int/2addr p2, v1

    new-instance v4, Lv0/a$a;

    invoke-direct {v4, v0}, Lv0/a$a;-><init>([B)V

    invoke-virtual {p0, v4, v1}, Lv0/a;->m(Lv0/a$a;I)V

    invoke-virtual {p0, v4, p3}, Lv0/a;->o(Lv0/a$a;I)V

    :cond_e8
    :goto_e8
    move v1, v7

    :goto_e9
    if-ltz v1, :cond_fc

    invoke-virtual {p1, v1}, Lv0/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v1, :cond_f4

    add-int/2addr p2, v1

    goto/16 :goto_1c

    :cond_f4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fc
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_102
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_108
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_114
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11a
    :goto_11a
    iget-object p2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object p2, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    return-void

    :cond_11f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid marker:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_138
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14f
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_166
    .packed-switch -0x40
        :pswitch_55  #ffffffc0
        :pswitch_55  #ffffffc1
        :pswitch_55  #ffffffc2
        :pswitch_55  #ffffffc3
    .end packed-switch

    :pswitch_data_172
    .packed-switch -0x3b
        :pswitch_55  #ffffffc5
        :pswitch_55  #ffffffc6
        :pswitch_55  #ffffffc7
    .end packed-switch

    :pswitch_data_17c
    .packed-switch -0x37
        :pswitch_55  #ffffffc9
        :pswitch_55  #ffffffca
        :pswitch_55  #ffffffcb
    .end packed-switch

    :pswitch_data_186
    .packed-switch -0x33
        :pswitch_55  #ffffffcd
        :pswitch_55  #ffffffce
        :pswitch_55  #ffffffcf
    .end packed-switch
.end method

.method public final f(Ljava/io/BufferedInputStream;)I
    .registers 8

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p1, 0x0

    move v1, p1

    :goto_f
    sget-object v2, Lv0/a;->m:[B

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_20

    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1d

    move v1, p1

    goto :goto_21

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    move v1, v4

    :goto_21
    if-eqz v1, :cond_25

    const/4 p1, 0x4

    return p1

    :cond_25
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "FUJIFILMCCD-RAW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move v2, p1

    :goto_30
    array-length v3, v1

    if-ge v2, v3, :cond_3e

    aget-byte v3, v0, v2

    aget-byte v5, v1, v2

    if-eq v3, v5, :cond_3b

    move v1, p1

    goto :goto_3f

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3e
    move v1, v4

    :goto_3f
    if-eqz v1, :cond_44

    const/16 p1, 0x9

    return p1

    :cond_44
    new-instance v1, Lv0/a$a;

    invoke-direct {v1, v0}, Lv0/a$a;-><init>([B)V

    invoke-static {v1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object v2, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Lv0/a$a;->readShort()S

    move-result v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/16 v1, 0x4f52

    if-eq v2, v1, :cond_63

    const/16 v1, 0x5352

    if-ne v2, v1, :cond_61

    goto :goto_63

    :cond_61
    move v1, p1

    goto :goto_64

    :cond_63
    :goto_63
    move v1, v4

    :goto_64
    if-eqz v1, :cond_68

    const/4 p1, 0x7

    return p1

    :cond_68
    new-instance v1, Lv0/a$a;

    invoke-direct {v1, v0}, Lv0/a$a;-><init>([B)V

    invoke-static {v1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object v0, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Lv0/a$a;->readShort()S

    move-result v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/16 v1, 0x55

    if-ne v0, v1, :cond_81

    goto :goto_82

    :cond_81
    move v4, p1

    :goto_82
    if-eqz v4, :cond_86

    const/16 p1, 0xa

    :cond_86
    return p1
.end method

.method public final g(Lv0/a$a;)V
    .registers 7

    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    if-eqz p1, :cond_ea

    new-instance v1, Lv0/a$a;

    iget-object p1, p1, Lv0/a$b;->c:[B

    invoke-direct {v1, p1}, Lv0/a$a;-><init>([B)V

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object p1, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    sget-object p1, Lv0/a;->n:[B

    array-length v2, p1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lv0/a$a;->readFully([B)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    sget-object v3, Lv0/a;->o:[B

    array-length v4, v3

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lv0/a$a;->readFully([B)V

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lv0/a$a;->seek(J)V

    goto :goto_49

    :cond_3e
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_49

    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Lv0/a$a;->seek(J)V

    :cond_49
    :goto_49
    const/4 p1, 0x6

    invoke-virtual {p0, v1, p1}, Lv0/a;->o(Lv0/a$a;I)V

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    if-eqz p1, :cond_7d

    if-eqz v1, :cond_7d

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    if-eqz p1, :cond_ea

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_d4

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9c

    goto :goto_d4

    :cond_9c
    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_ea

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_ea

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_b5

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    :cond_b5
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v1, p1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object p1

    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v4, v0}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v0

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ea

    :cond_d4
    :goto_d4
    const-string v0, "Invalid aspect frame values. frame="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    :goto_ea
    return-void
.end method

.method public final h(Lv0/a$a;)V
    .registers 8

    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lv0/a;->e(Lv0/a$a;II)V

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Lv0/a$a;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_35
    if-ge v2, v0, :cond_72

    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v4

    sget-object v5, Lv0/a;->s:Lv0/a$c;

    iget v5, v5, Lv0/a$c;->a:I

    if-ne v3, v5, :cond_6c

    invoke-virtual {p1}, Lv0/a$a;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lv0/a$a;->readShort()S

    move-result p1

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v0

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {p1, v2}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object p1

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6c
    invoke-virtual {p1, v4}, Lv0/a$a;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_72
    return-void
.end method

.method public final i(Lv0/a$a;)V
    .registers 9

    invoke-virtual {p1}, Lv0/a$a;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lv0/a;->m(Lv0/a$a;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv0/a;->o(Lv0/a$a;I)V

    invoke-virtual {p0, p1, v0}, Lv0/a;->r(Lv0/a$a;I)V

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1}, Lv0/a;->r(Lv0/a$a;I)V

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lv0/a;->r(Lv0/a$a;I)V

    invoke-virtual {p0, v0, v1}, Lv0/a;->q(II)V

    invoke-virtual {p0, v0, v2}, Lv0/a;->q(II)V

    invoke-virtual {p0, v1, v2}, Lv0/a;->q(II)V

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    const-string v4, "PixelXDimension"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/a$b;

    if-eqz p1, :cond_4e

    if-eqz v4, :cond_4e

    iget-object v5, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lv0/a;->l(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, p1, v1

    aput-object v0, p1, v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p1, v1

    :cond_6f
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lv0/a;->l(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "ExifInterface"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    iget p1, p0, Lv0/a;->b:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_be

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v0, "MakerNote"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    if-eqz p1, :cond_be

    new-instance v0, Lv0/a$a;

    iget-object p1, p1, Lv0/a$b;->c:[B

    invoke-direct {v0, p1}, Lv0/a$a;-><init>([B)V

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object p1, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lv0/a$a;->seek(J)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lv0/a;->o(Lv0/a$a;I)V

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, v0, p1

    const-string v0, "ColorSpace"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    if-eqz p1, :cond_be

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be
    return-void
.end method

.method public final j(Lv0/a$a;)V
    .registers 5

    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    if-eqz v0, :cond_18

    iget v0, p0, Lv0/a;->j:I

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lv0/a;->e(Lv0/a$a;II)V

    :cond_18
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    if-eqz p1, :cond_3c

    if-nez v0, :cond_3c

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method public final k(Lv0/a$a;Ljava/util/HashMap;)V
    .registers 6

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv0/a$b;

    if-eqz v0, :cond_51

    if-eqz p2, :cond_51

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p2

    invoke-virtual {p1}, Lv0/a$a;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Lv0/a;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_37

    goto :goto_3d

    :cond_37
    const/4 v2, 0x7

    if-ne v1, v2, :cond_40

    iget v1, p0, Lv0/a;->g:I

    goto :goto_3f

    :cond_3d
    :goto_3d
    iget v1, p0, Lv0/a;->f:I

    :goto_3f
    add-int/2addr v0, v1

    :cond_40
    if-lez v0, :cond_51

    if-lez p2, :cond_51

    iget-object v1, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_51

    new-array p2, p2, [B

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    invoke-virtual {p1, p2}, Lv0/a$a;->readFully([B)V

    :cond_51
    return-void
.end method

.method public final l(Ljava/util/HashMap;)Z
    .registers 4

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a$b;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_28

    if-gt p1, v1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public final m(Lv0/a$a;I)V
    .registers 6

    invoke-static {p1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Lv0/a;->b:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_31

    const/16 v2, 0xa

    if-eq v1, v2, :cond_31

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1a

    goto :goto_31

    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid start code: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    :goto_31
    invoke-virtual {p1}, Lv0/a$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_53

    if-ge v0, p2, :cond_53

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_52

    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_46

    goto :goto_52

    :cond_46
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    :goto_52
    return-void

    :cond_53
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lv0/a$a;I)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lv0/a;->d:Ljava/util/HashSet;

    iget v4, v1, Lv0/a$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v3, v1, Lv0/a$a;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lv0/a$a;->c:I

    if-le v3, v4, :cond_1a

    return-void

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readShort()S

    move-result v3

    iget v4, v1, Lv0/a$a;->d:I

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v5, v4

    iget v4, v1, Lv0/a$a;->c:I

    if-gt v5, v4, :cond_34d

    if-gtz v3, :cond_2b

    goto/16 :goto_34d

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    const-string v5, "ExifInterface"

    const/4 v6, 0x4

    if-ge v4, v3, :cond_2e0

    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    move-result v9

    iget v10, v1, Lv0/a$a;->d:I

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    sget-object v12, Lv0/a;->v:[Ljava/util/HashMap;

    aget-object v12, v12, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv0/a$c;

    const/4 v14, 0x7

    if-nez v12, :cond_69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_69
    if-lez v8, :cond_f6

    sget-object v15, Lv0/a;->q:[I

    array-length v13, v15

    if-lt v8, v13, :cond_72

    goto/16 :goto_f6

    :cond_72
    iget v13, v12, Lv0/a$c;->c:I

    if-eq v13, v14, :cond_a0

    if-ne v8, v14, :cond_79

    goto :goto_a0

    :cond_79
    if-eq v13, v8, :cond_a0

    iget v14, v12, Lv0/a$c;->d:I

    if-ne v14, v8, :cond_80

    goto :goto_a0

    :cond_80
    if-eq v13, v6, :cond_84

    if-ne v14, v6, :cond_88

    :cond_84
    const/4 v6, 0x3

    if-ne v8, v6, :cond_88

    goto :goto_a0

    :cond_88
    const/16 v6, 0x9

    if-eq v13, v6, :cond_8e

    if-ne v14, v6, :cond_93

    :cond_8e
    const/16 v6, 0x8

    if-ne v8, v6, :cond_93

    goto :goto_a0

    :cond_93
    const/16 v6, 0xc

    if-eq v13, v6, :cond_99

    if-ne v14, v6, :cond_9e

    :cond_99
    const/16 v6, 0xb

    if-ne v8, v6, :cond_9e

    goto :goto_a0

    :cond_9e
    const/4 v6, 0x0

    goto :goto_a1

    :cond_a0
    :goto_a0
    const/4 v6, 0x1

    :goto_a1
    if-nez v6, :cond_c5

    const-string v6, "Skip the tag entry since data format ("

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lv0/a;->p:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") is unexpected for tag: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lv0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c1
    move v15, v3

    move/from16 v17, v4

    goto :goto_10d

    :cond_c5
    const/4 v6, 0x7

    if-ne v8, v6, :cond_c9

    move v8, v13

    :cond_c9
    int-to-long v13, v9

    aget v6, v15, v8

    move v15, v3

    move/from16 v17, v4

    int-to-long v3, v6

    mul-long/2addr v3, v13

    const-wide/16 v13, 0x0

    cmp-long v6, v3, v13

    if-ltz v6, :cond_e1

    const-wide/32 v13, 0x7fffffff

    cmp-long v6, v3, v13

    if-lez v6, :cond_df

    goto :goto_e1

    :cond_df
    const/4 v13, 0x1

    goto :goto_110

    :cond_e1
    :goto_e1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    :cond_f6
    :goto_f6
    move v15, v3

    move/from16 v17, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10d
    const-wide/16 v3, 0x0

    :goto_10f
    const/4 v13, 0x0

    :goto_110
    if-nez v13, :cond_119

    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    move/from16 v16, v15

    goto/16 :goto_2d9

    :cond_119
    const-wide/16 v13, 0x4

    cmp-long v6, v3, v13

    const-string v13, "Compression"

    if-lez v6, :cond_1cc

    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    move-result v6

    iget v14, v0, Lv0/a;->b:I

    move/from16 v16, v15

    const/4 v15, 0x7

    if-ne v14, v15, :cond_18b

    iget-object v14, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v15, "MakerNote"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_139

    iput v6, v0, Lv0/a;->g:I

    goto :goto_184

    :cond_139
    const/4 v14, 0x6

    if-ne v2, v14, :cond_184

    iget-object v14, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v15, "ThumbnailImage"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_184

    iput v6, v0, Lv0/a;->h:I

    iput v9, v0, Lv0/a;->i:I

    iget-object v14, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    const/4 v15, 0x6

    invoke-static {v15, v14}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v14

    iget v15, v0, Lv0/a;->h:I

    move/from16 v19, v8

    move/from16 v18, v9

    int-to-long v8, v15

    iget-object v15, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v15}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v8

    iget v9, v0, Lv0/a;->i:I

    move-wide/from16 v20, v10

    int-to-long v9, v9

    iget-object v11, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v9

    iget-object v10, v0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v10, v10, v11

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v10, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    const-string v10, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a1

    :cond_184
    :goto_184
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v20, v10

    goto :goto_1a1

    :cond_18b
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v20, v10

    const/16 v8, 0xa

    if-ne v14, v8, :cond_1a1

    iget-object v8, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v9, "JpgFromRaw"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a1

    iput v6, v0, Lv0/a;->j:I

    :cond_1a1
    :goto_1a1
    int-to-long v8, v6

    add-long v10, v8, v3

    iget v14, v1, Lv0/a$a;->c:I

    int-to-long v14, v14

    cmp-long v10, v10, v14

    if-gtz v10, :cond_1b1

    invoke-virtual {v1, v8, v9}, Lv0/a$a;->seek(J)V

    move-wide/from16 v10, v20

    goto :goto_1d2

    :cond_1b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v10, v20

    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    goto/16 :goto_2d9

    :cond_1cc
    move/from16 v19, v8

    move/from16 v18, v9

    move/from16 v16, v15

    :goto_1d2
    sget-object v6, Lv0/a;->y:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_271

    const-wide/16 v3, -0x1

    const/4 v7, 0x3

    move/from16 v8, v19

    if-eq v8, v7, :cond_20d

    const/4 v7, 0x4

    if-eq v8, v7, :cond_201

    const/16 v7, 0x8

    if-eq v8, v7, :cond_1fc

    const/16 v7, 0x9

    if-eq v8, v7, :cond_1f7

    const/16 v7, 0xd

    if-eq v8, v7, :cond_1f7

    goto :goto_212

    :cond_1f7
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    move-result v3

    goto :goto_211

    :cond_1fc
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readShort()S

    move-result v3

    goto :goto_211

    :cond_201
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    goto :goto_212

    :cond_20d
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    move-result v3

    :goto_211
    int-to-long v3, v3

    :goto_212
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_259

    iget v7, v1, Lv0/a$a;->c:I

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_259

    iget-object v7, v0, Lv0/a;->d:Ljava/util/HashSet;

    long-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_237

    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    goto :goto_26d

    :cond_237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (at "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26d

    :cond_259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26d
    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    goto :goto_2d9

    :cond_271
    move/from16 v8, v19

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lv0/a$a;->readFully([B)V

    new-instance v4, Lv0/a$b;

    move/from16 v5, v18

    invoke-direct {v4, v8, v3, v5}, Lv0/a$b;-><init>(I[BI)V

    iget-object v3, v0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    iget-object v5, v12, Lv0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v5, "DNGVersion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_296

    const/4 v3, 0x3

    iput v3, v0, Lv0/a;->b:I

    :cond_296
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v5, "Make"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2aa

    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    const-string v5, "Model"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b8

    :cond_2aa
    iget-object v3, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Lv0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PENTAX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2cb

    :cond_2b8
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cf

    iget-object v3, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_2cf

    :cond_2cb
    const/16 v3, 0x8

    iput v3, v0, Lv0/a;->b:I

    :cond_2cf
    iget v3, v1, Lv0/a$a;->d:I

    int-to-long v3, v3

    cmp-long v3, v3, v10

    if-eqz v3, :cond_2d9

    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    :cond_2d9
    :goto_2d9
    add-int/lit8 v4, v17, 0x1

    int-to-short v4, v4

    move/from16 v3, v16

    goto/16 :goto_2c

    :cond_2e0
    iget v2, v1, Lv0/a$a;->d:I

    add-int/lit8 v2, v2, 0x4

    iget v3, v1, Lv0/a$a;->c:I

    if-gt v2, v3, :cond_34d

    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_339

    iget v6, v1, Lv0/a$a;->c:I

    if-ge v2, v6, :cond_339

    iget-object v6, v0, Lv0/a;->d:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_324

    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    iget-object v2, v0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_315

    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    goto :goto_34d

    :cond_315
    iget-object v2, v0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34d

    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    goto :goto_34d

    :cond_324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34d

    :cond_339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34d
    :goto_34d
    return-void
.end method

.method public final p(Lv0/a$a;)V
    .registers 14

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    if-eqz v1, :cond_db

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v1, v2, :cond_25

    if-eq v1, v3, :cond_20

    const/4 v4, 0x7

    if-eq v1, v4, :cond_25

    goto/16 :goto_de

    :cond_20
    invoke-virtual {p0, p1, v0}, Lv0/a;->k(Lv0/a$a;Ljava/util/HashMap;)V

    goto/16 :goto_de

    :cond_25
    const-string v1, "BitsPerSample"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    const/4 v4, 0x0

    if-eqz v1, :cond_69

    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [I

    sget-object v5, Lv0/a;->k:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_6a

    :cond_41
    iget v6, p0, Lv0/a;->b:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_69

    const-string v6, "PhotometricInterpretation"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/a$b;

    if-eqz v6, :cond_69

    iget-object v7, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v6

    if-ne v6, v2, :cond_60

    sget-object v7, Lv0/a;->l:[I

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_6a

    :cond_60
    if-ne v6, v3, :cond_69

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v4

    :cond_6a
    :goto_6a
    if-eqz v2, :cond_de

    const-string v1, "StripOffsets"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    const-string v2, "StripByteCounts"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    if-eqz v1, :cond_de

    if-eqz v0, :cond_de

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v1

    invoke-static {v1}, Lv0/a;->b(Ljava/io/Serializable;)[J

    move-result-object v1

    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->b(Ljava/io/Serializable;)[J

    move-result-object v0

    const-string v2, "ExifInterface"

    if-nez v1, :cond_9e

    const-string p1, "stripOffsets should not be null."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :cond_9e
    if-nez v0, :cond_a6

    const-string p1, "stripByteCounts should not be null."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :cond_a6
    const-wide/16 v5, 0x0

    array-length v3, v0

    move v7, v4

    :goto_aa
    if-ge v7, v3, :cond_b2

    aget-wide v8, v0, v7

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    :cond_b2
    long-to-int v3, v5

    new-array v3, v3, [B

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_b8
    array-length v8, v1

    if-ge v5, v8, :cond_de

    aget-wide v8, v1, v5

    long-to-int v8, v8

    aget-wide v9, v0, v5

    long-to-int v9, v9

    sub-int/2addr v8, v6

    if-gez v8, :cond_c9

    const-string v10, "Invalid strip offset value"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    int-to-long v10, v8

    invoke-virtual {p1, v10, v11}, Lv0/a$a;->seek(J)V

    add-int/2addr v6, v8

    new-array v8, v9, [B

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v6, v9

    invoke-static {v8, v4, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    :cond_db
    invoke-virtual {p0, p1, v0}, Lv0/a;->k(Lv0/a$a;Ljava/util/HashMap;)V

    :cond_de
    :goto_de
    return-void
.end method

.method public final q(II)V
    .registers 8

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_71

    :cond_15
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/a$b;

    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a$b;

    if-eqz v0, :cond_71

    if-nez v2, :cond_46

    goto :goto_71

    :cond_46
    if-eqz v1, :cond_71

    if-nez v3, :cond_4b

    goto :goto_71

    :cond_4b
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_71

    if-ge v2, v3, :cond_71

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    :cond_71
    :goto_71
    return-void
.end method

.method public final r(Lv0/a$a;I)V
    .registers 12

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/a$b;

    iget-object v3, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a$b;

    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/a$b;

    const-string v5, "ImageWidth"

    const-string v6, "ImageLength"

    if-eqz v0, :cond_c1

    iget p1, v0, Lv0/a$b;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_80

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [Lv0/a$d;

    if-eqz p1, :cond_6d

    array-length v0, p1

    if-eq v0, v4, :cond_5c

    goto :goto_6d

    :cond_5c
    aget-object v0, p1, v3

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lv0/a$b;->c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v0

    aget-object p1, p1, v2

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lv0/a$b;->c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;

    move-result-object p1

    goto :goto_9e

    :cond_6d
    :goto_6d
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_ae

    array-length v0, p1

    if-eq v0, v4, :cond_8e

    goto :goto_ae

    :cond_8e
    aget v0, p1, v3

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v0

    aget p1, p1, v2

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object p1

    :goto_9e
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_131

    :cond_ae
    :goto_ae
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c1
    if-eqz v1, :cond_102

    if-eqz v2, :cond_102

    if-eqz v3, :cond_102

    if-eqz v4, :cond_102

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_131

    if-le v1, v2, :cond_131

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object p1

    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-static {v1, v0}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    move-result-object v0

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_131

    :cond_102
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a$b;

    if-eqz v0, :cond_11a

    if-nez v1, :cond_131

    :cond_11a
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a$b;

    if-eqz v0, :cond_131

    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lv0/a;->e(Lv0/a$a;II)V

    :cond_131
    :goto_131
    return-void
.end method
