.class public Lmiuix/pickerwidget/date/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lmiuix/pickerwidget/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD:I = 0x1

.field public static final AFTERNOON:I = 0x4

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x11

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final AUTUMN_BEGINS:I = 0xf

.field public static final AUTUMN_EQUINOX:I = 0x12

.field public static final BC:I = 0x0

.field public static final CHICKEN:I = 0x9

.field public static final CHINESE_ERA_DAY:I = 0xb

.field public static final CHINESE_ERA_HOUR:I = 0x13

.field public static final CHINESE_ERA_MONTH:I = 0x7

.field public static final CHINESE_ERA_YEAR:I = 0x4

.field public static final CHINESE_MONTH:I = 0x6

.field public static final CHINESE_MONTH_IS_LEAP:I = 0x8

.field public static final CHINESE_YEAR:I = 0x2

.field private static final CHINESE_YEAR_INFO:[I

.field public static final CHINESE_YEAR_SYMBOL_ANIMAL:I = 0x3

.field public static final CLEAR_AND_BRIGHT:I = 0x7

.field public static final COLD_DEWS:I = 0x13

.field public static final COW:I = 0x1

.field private static final DAYS_19000131_TO_19700101:I = -0x63c1

.field private static final DAYS_IN_MONTH:[B

.field private static final DAYS_IN_YEAR:[I

.field private static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field public static final DAY_OF_CHINESE_MONTH:I = 0xa

.field public static final DAY_OF_CHINESE_YEAR:I = 0xd

.field public static final DAY_OF_MONTH:I = 0x9

.field public static final DAY_OF_WEEK:I = 0xe

.field public static final DAY_OF_YEAR:I = 0xc

.field public static final DECEMBER:I = 0xb

.field public static final DETAIL_AM_PM:I = 0x10

.field public static final DOG:I = 0xa

.field public static final DRAGON:I = 0x4

.field public static final DST_OFFSET:I = 0x18

.field public static final EARLY_MORNING:I = 0x1

.field public static final ERA:I = 0x0

.field public static final EVENING:I = 0x5

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x19

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field private static final FORMAT_CHARACTERS:[I

.field public static final FRIDAY:I = 0x6

.field public static final GRAIN_BUDS:I = 0xa

.field public static final GRAIN_IN_EAR:I = 0xb

.field public static final GRAIN_RAIN:I = 0x8

.field public static final GREAT_COLD:I = 0x2

.field public static final GREAT_HEAT:I = 0xe

.field public static final HEAVY_SNOW:I = 0x17

.field public static final HOAR_FROST_FALLS:I = 0x14

.field public static final HORSE:I = 0x6

.field public static final HOUR:I = 0x12

.field public static final INSECTS_AWAKEN:I = 0x5

.field public static final IS_CHINESE_LEAP_MONTH:I = 0x1

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LIGHT_SNOW:I = 0x16

.field public static final MARCH:I = 0x2

.field private static final MAX_CHINESE_CALENDAR_MILLISECOND:J = 0x3c314a71400L

.field private static final MAX_CHINESE_DAYS:I = 0xb9be

.field private static final MAX_CHINESE_YEAR:I = 0x834

.field public static final MAY:I = 0x4

.field public static final MIDNIGHT:I = 0x0

.field public static final MILLISECOND:I = 0x16

.field public static final MILLISECOND_OF_DAY:I = 0x5265c00

.field public static final MILLISECOND_OF_HOUR:I = 0x36ee80

.field public static final MILLISECOND_OF_MINUTE:I = 0xea60

.field public static final MILLISECOND_OF_SECOND:I = 0x3e8

.field public static final MINUTE:I = 0x14

.field private static final MIN_CHINESE_CALENDAR_MILLISECOND:J = -0x201b77f5c00L

.field private static final MIN_CHINESE_DAYS:I = -0x63c1

.field private static final MIN_CHINESE_YEAR:I = 0x76c

.field public static final MONDAY:I = 0x2

.field public static final MONKEY:I = 0x8

.field public static final MONTH:I = 0x5

.field public static final MORNING:I = 0x2

.field public static final MOUSE:I = 0x0

.field public static final NIGHT:I = 0x6

.field public static final NOON:I = 0x3

.field public static final NOT_CHINESE_LEAP_MONTH:I = 0x0

.field public static final NOVEMBER:I = 0xa

.field public static final NO_SOLAR_TERM:I = 0x0

.field public static final OCTOBER:I = 0x9

.field public static final PIG:I = 0xb

.field public static final PM:I = 0x1

.field public static final RABBIT:I = 0x3

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0x15

.field public static final SEPTEMBER:I = 0x8

.field public static final SHEEP:I = 0x7

.field public static final SLIGHT_COLD:I = 0x1

.field public static final SLIGHT_HEAT:I = 0xd

.field public static final SNAKE:I = 0x5

.field public static final SOLAR_TERM:I = 0xf

.field private static final SOLAR_TERM_BASE:[I

.field private static final SOLAR_TERM_INDEX:[B

.field private static final SOLAR_TERM_OS:[B

.field public static final SPRING_BEGINS:I = 0x3

.field public static final STOPPING_THE_HEAT:I = 0x10

.field public static final SUMMER_BEGINS:I = 0x9

.field public static final SUMMER_SOLSTICE:I = 0xc

.field public static final SUNDAY:I = 0x1

.field public static final THE_RAINS:I = 0x4

.field public static final THURSDAY:I = 0x5

.field public static final TIGER:I = 0x2

.field public static final TUESDAY:I = 0x3

.field public static final VERNAL_EQUINOX:I = 0x6

.field public static final WEDNESDAY:I = 0x4

.field public static final WHITE_DEWS:I = 0x11

.field public static final WINTER_BEGINS:I = 0x15

.field public static final WINTER_SOLSTICE:I = 0x18

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0x17

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient changeYear:I

.field private transient currentYearSkew:I

.field private transient gregorianCutover:J

.field private transient julianError:I

.field private transient julianSkew:I

.field private transient lastYearSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .registers 26

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_80

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    const-string v1, "ERA"

    const-string v2, "YEAR"

    const-string v3, "CHINESE_YEAR"

    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    const-string v5, "CHINESE_ERA_YEAR"

    const-string v6, "MONTH"

    const-string v7, "CHINESE_MONTH"

    const-string v8, "CHINESE_ERA_MONTH"

    const-string v9, "CHINESE_MONTH_IS_LEAP"

    const-string v10, "DAY_OF_MONTH"

    const-string v11, "DAY_OF_CHINESE_MONTH"

    const-string v12, "CHINESE_ERA_DAY"

    const-string v13, "DAY_OF_YEAR"

    const-string v14, "DAY_OF_CHINESE_YEAR"

    const-string v15, "DAY_OF_WEEK"

    const-string v16, "SOLAR_TERM"

    const-string v17, "DETAIL_AM_PM"

    const-string v18, "AM_PM"

    const-string v19, "HOUR"

    const-string v20, "CHINESE_ERA_HOUR"

    const-string v21, "MINUTE"

    const-string v22, "SECOND"

    const-string v23, "MILLISECOND"

    const-string v24, "ZONE_OFFSET"

    const-string v25, "DST_OFFSET"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_a8

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_120

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_2b8

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_44e

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    return-void

    nop

    :array_80
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_8a
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    :array_a8
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    :array_120
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    :array_2b8
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_44e
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/16 v1, 0x62e

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x62e

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->julianError:I

    const/16 v2, 0x7d0

    rsub-int v3, v2, 0x62e

    div-int/lit16 v3, v3, 0x190

    add-int/2addr v3, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v3, v0

    iput v3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    const/16 v0, 0xa

    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .registers 7

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gez v1, :cond_13

    const/16 v0, 0x2d

    neg-int v1, v1

    goto :goto_15

    :cond_13
    const/16 v0, 0x2b

    :goto_15
    if-eqz p2, :cond_1c

    const-string p2, "GMT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p2, 0x36ee80

    div-int v0, v1, p2

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    if-eqz p3, :cond_2f

    const/16 p3, 0x3a

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2f
    rem-int/2addr v1, p2

    const p2, 0xea60

    div-int/2addr v1, p2

    invoke-static {p1, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .registers 3

    invoke-static {p1, p2}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V
    .registers 9

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    const/4 v4, 0x4

    if-eq p3, v4, :cond_13

    move v2, v3

    :cond_13
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_21

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_21
    invoke-direct {p0, p1, v3, v3}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    :goto_24
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V
    .registers 16

    const/16 v0, 0x41

    const/4 v1, 0x3

    if-eq p3, v0, :cond_223

    const/16 v0, 0x53

    if-eq p3, v0, :cond_21b

    const/16 v0, 0x61

    const/4 v2, 0x2

    if-eq p3, v0, :cond_1f9

    const/16 v0, 0x68

    const/16 v3, 0x12

    const/16 v4, 0xc

    if-eq p3, v0, :cond_1ec

    const/16 v0, 0x6b

    if-eq p3, v0, :cond_1e4

    const/16 v0, 0x6d

    if-eq p3, v0, :cond_21b

    const/16 v0, 0x44

    if-eq p3, v0, :cond_21b

    const/16 v0, 0x45

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq p3, v0, :cond_1b0

    const/16 v0, 0x59

    const/16 v8, 0xa

    if-eq p3, v0, :cond_178

    const/16 v0, 0x5a

    const/4 v9, 0x0

    if-eq p3, v0, :cond_165

    const/16 v0, 0x73

    if-eq p3, v0, :cond_21b

    const/16 v0, 0x74

    if-eq p3, v0, :cond_154

    const/16 v0, 0x79

    if-eq p3, v0, :cond_13e

    const/16 v0, 0x7a

    if-eq p3, v0, :cond_139

    packed-switch p3, :pswitch_data_232

    packed-switch p3, :pswitch_data_23c

    packed-switch p3, :pswitch_data_248

    goto/16 :goto_230

    :pswitch_4f  #0x65
    if-eq p4, v2, :cond_61

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v8

    sub-int/2addr p3, v7

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_61
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p5, 0xb

    aget p4, p4, p5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, p5

    rem-int/2addr p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :pswitch_81  #0x4e
    if-eq p4, v2, :cond_a2

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p5, 0x8

    aget p4, p4, p5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p4, 0x6

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_a2
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p5, 0x7

    aget p4, p4, p5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, p5

    rem-int/2addr p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :pswitch_c1  #0x4c, 0x4d
    if-ge p4, v1, :cond_cd

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v6

    add-int/2addr p2, v7

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_230

    :cond_cd
    if-ne p4, v5, :cond_de

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_de
    if-ne p4, v6, :cond_ef

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_ef
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :pswitch_fe  #0x4b
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v3

    rem-int/2addr p2, v4

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_230

    :pswitch_108  #0x49
    const/16 p3, 0x13

    if-ne p4, v2, :cond_11a

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p5, p5, p3

    rem-int/2addr p5, v8

    aget-object p4, p4, p5

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11a
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p4, p3

    rem-int/2addr p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :pswitch_12a  #0x47
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v9

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_139
    invoke-direct {p0, p1, p2, p4}, Lmiuix/pickerwidget/date/Calendar;->appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V

    goto/16 :goto_230

    :cond_13e
    if-ne p4, v2, :cond_14b

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v7

    rem-int/lit8 p2, p2, 0x64

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_230

    :cond_14b
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v7

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_230

    :cond_154
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p4, 0xf

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_165
    if-ne p4, v5, :cond_16c

    invoke-direct {p0, p1, v7, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_230

    :cond_16c
    if-ne p4, v6, :cond_173

    invoke-direct {p0, p1, v9, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_230

    :cond_173
    invoke-direct {p0, p1, v9, v9}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_230

    :cond_178
    if-eq p4, v2, :cond_192

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    :goto_186
    if-lez p3, :cond_230

    rem-int/lit8 p5, p3, 0xa

    div-int/lit8 p3, p3, 0xa

    aget-object p5, p2, p5

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_186

    :cond_192
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p4, p4, v5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v5

    rem-int/2addr p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_1b0
    :pswitch_1b0  #0x63
    const/16 p3, 0xe

    if-ne p4, v5, :cond_1c4

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v7

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_230

    :cond_1c4
    if-ne p4, v6, :cond_1d5

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v7

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    :cond_1d5
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v7

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    :cond_1e4
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v3

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_230

    :cond_1ec
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v3

    rem-int/2addr p2, v4

    if-nez p2, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    move v4, p2

    :goto_1f5
    invoke-static {p1, p4, v4}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_230

    :cond_1f9
    if-eq p4, v2, :cond_20b

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p4, 0x11

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    :cond_20b
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p4, 0x10

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    :cond_21b
    :pswitch_21b  #0x48, 0x64
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, p5

    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_230

    :cond_223
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p3, p3, v1

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_230
    :goto_230
    return-void

    nop

    :pswitch_data_232
    .packed-switch 0x47
        :pswitch_12a  #00000047
        :pswitch_21b  #00000048
        :pswitch_108  #00000049
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x4b
        :pswitch_fe  #0000004b
        :pswitch_c1  #0000004c
        :pswitch_c1  #0000004d
        :pswitch_81  #0000004e
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x63
        :pswitch_1b0  #00000063
        :pswitch_21b  #00000064
        :pswitch_4f  #00000065
    .end packed-switch
.end method

.method private compute()V
    .registers 4

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    :cond_13
    return-void
.end method

.method private computeChineseDate(J)V
    .registers 10

    const-wide/16 v0, -0x63c1

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    const/16 v1, 0x834

    if-lt p2, v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/lit8 v1, p2, 0x1

    :goto_10
    sget-object p2, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v2, v1, -0x76c

    aget p2, p2, v2

    sub-int/2addr p1, p2

    if-gez p1, :cond_20

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result p2

    add-int/2addr p1, p2

    :cond_20
    if-gez p1, :cond_29

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result p2

    add-int/2addr p1, p2

    :cond_29
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aput v1, p2, v2

    const/16 v2, 0xd

    add-int/lit8 v3, p1, 0x1

    aput v3, p2, v2

    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_3c
    const/16 v6, 0xc

    if-ge v3, v6, :cond_62

    if-lez p1, :cond_62

    if-ltz p2, :cond_53

    add-int/lit8 v5, p2, 0x1

    if-ne v3, v5, :cond_53

    if-nez v4, :cond_53

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    move v5, v4

    move v4, v0

    goto :goto_57

    :cond_53
    invoke-static {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v5

    :goto_57
    if-eqz v4, :cond_5e

    add-int/lit8 v6, p2, 0x1

    if-ne v3, v6, :cond_5e

    move v4, v2

    :cond_5e
    sub-int/2addr p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_62
    if-nez p1, :cond_70

    if-lez p2, :cond_70

    add-int/2addr p2, v0

    if-ne v3, p2, :cond_70

    if-eqz v4, :cond_6c

    goto :goto_71

    :cond_6c
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_71

    :cond_70
    move v2, v4

    :goto_71
    if-gez p1, :cond_76

    add-int/2addr p1, v5

    add-int/lit8 v3, v3, -0x1

    :cond_76
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aput v2, p2, v1

    const/4 v1, 0x6

    aput v3, p2, v1

    const/16 v1, 0xa

    add-int/2addr p1, v0

    aput p1, p2, v1

    return-void
.end method

.method private computeChineseEraNames(J)V
    .registers 11

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit16 v2, v2, -0x76c

    add-int/lit8 v3, v2, 0xc

    int-to-long v3, v3

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    add-int/lit8 v2, v2, 0x24

    int-to-long v2, v2

    const/16 v4, 0x3c

    invoke-static {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v6, 0x5

    aget v0, v0, v6

    invoke-static {v3, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v7, v3, v2

    add-int/lit16 v7, v7, -0x76c

    mul-int/2addr v7, v5

    aget v6, v3, v6

    add-int/2addr v7, v6

    const/16 v6, 0x9

    aget v6, v3, v6

    if-lt v6, v0, :cond_41

    add-int/lit8 v7, v7, 0x1

    :cond_41
    const/4 v0, 0x7

    add-int/2addr v7, v5

    int-to-long v6, v7

    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v6

    aput v6, v3, v0

    const-wide/16 v6, -0x63c1

    sub-long/2addr p1, v6

    long-to-int p1, p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0xb

    add-int/lit8 v3, p1, 0x28

    int-to-long v6, v3

    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v3

    aput v3, p2, v0

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0x13

    mul-int/2addr p1, v5

    const/16 v3, 0x12

    aget v3, p2, v3

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x18

    div-int/2addr v3, v1

    add-int/2addr v3, p1

    int-to-long v1, v3

    invoke-static {v1, v2, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result p1

    aput p1, p2, v0

    return-void
.end method

.method private computeDate(JJ)V
    .registers 10

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/pickerwidget/date/Calendar;->computeYearAndDay(JJ)I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0xc

    aput v0, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    if-ne v1, v3, :cond_1a

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    cmp-long p3, v3, p3

    if-gtz p3, :cond_1a

    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    add-int/2addr v0, p3

    :cond_1a
    div-int/lit8 p3, v0, 0x20

    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p4

    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    if-le v0, v1, :cond_32

    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p4

    sub-int/2addr v0, p4

    add-int/lit8 p3, p3, 0x1

    :cond_32
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aput p3, p4, v1

    const/16 p3, 0x9

    aput v0, p4, p3

    const/16 p3, 0xe

    const-wide/16 v0, 0x3

    sub-long/2addr p1, v0

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result p1

    add-int/2addr p1, v2

    aput p1, p4, p3

    return-void
.end method

.method private computeDateTime()J
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const/16 v3, 0x17

    aput v2, v1, v3

    iget-wide v1, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    div-long v6, v1, v4

    rem-long/2addr v1, v4

    long-to-int v1, v1

    const-wide/16 v4, 0x1

    const v2, 0x5265c00

    if-gez v1, :cond_20

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    :cond_20
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v3

    add-int/2addr v1, v8

    :goto_25
    if-gez v1, :cond_2a

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    goto :goto_25

    :cond_2a
    :goto_2a
    if-lt v1, v2, :cond_2f

    sub-int/2addr v1, v2

    add-long/2addr v6, v4

    goto :goto_2a

    :cond_2f
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v3

    iget-wide v9, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v11, v8

    add-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    const-wide/high16 v16, -0x8000000000000000L

    const-wide v18, 0x7fffffffffffffffL

    if-lez v15, :cond_4d

    cmp-long v15, v11, v13

    if-gez v15, :cond_4d

    if-lez v8, :cond_4d

    move-wide/from16 v11, v18

    goto :goto_59

    :cond_4d
    cmp-long v9, v9, v13

    if-gez v9, :cond_59

    cmp-long v9, v11, v13

    if-lez v9, :cond_59

    if-gez v8, :cond_59

    move-wide/from16 v11, v16

    :cond_59
    :goto_59
    invoke-direct {v0, v6, v7, v11, v12}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->getDstOffset(I)I

    move-result v8

    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x18

    aput v8, v9, v10

    if-eqz v8, :cond_9d

    add-int/2addr v1, v8

    if-gez v1, :cond_6f

    add-int/2addr v1, v2

    sub-long v4, v6, v4

    goto :goto_75

    :cond_6f
    if-lt v1, v2, :cond_74

    sub-int/2addr v1, v2

    add-long/2addr v4, v6

    goto :goto_75

    :cond_74
    move-wide v4, v6

    :goto_75
    cmp-long v2, v6, v4

    if-eqz v2, :cond_9c

    aget v2, v9, v3

    sub-int/2addr v8, v2

    iget-wide v2, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v6, v8

    add-long/2addr v6, v2

    cmp-long v9, v2, v13

    if-lez v9, :cond_8d

    cmp-long v9, v6, v13

    if-gez v9, :cond_8d

    if-lez v8, :cond_8d

    move-wide/from16 v6, v18

    goto :goto_99

    :cond_8d
    cmp-long v2, v2, v13

    if-gez v2, :cond_99

    cmp-long v2, v6, v13

    if-lez v2, :cond_99

    if-gez v8, :cond_99

    move-wide/from16 v6, v16

    :cond_99
    :goto_99
    invoke-direct {v0, v4, v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    :cond_9c
    move-wide v6, v4

    :cond_9d
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    const/4 v5, 0x0

    if-gtz v4, :cond_ac

    aput v5, v2, v5

    rsub-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_ae

    :cond_ac
    aput v3, v2, v5

    :goto_ae
    const/16 v4, 0x16

    rem-int/lit16 v8, v1, 0x3e8

    aput v8, v2, v4

    div-int/lit16 v1, v1, 0x3e8

    const/16 v4, 0x15

    rem-int/lit8 v8, v1, 0x3c

    aput v8, v2, v4

    div-int/lit8 v1, v1, 0x3c

    const/16 v4, 0x14

    rem-int/lit8 v8, v1, 0x3c

    aput v8, v2, v4

    div-int/lit8 v1, v1, 0x3c

    const/16 v4, 0x12

    rem-int/2addr v1, v10

    aput v1, v2, v4

    const/16 v4, 0x11

    const/16 v8, 0xb

    if-le v1, v8, :cond_d3

    move v8, v3

    goto :goto_d4

    :cond_d3
    move v8, v5

    :goto_d4
    aput v8, v2, v4

    const/16 v4, 0x10

    packed-switch v1, :pswitch_data_f6

    goto :goto_f5

    :pswitch_dc  #0x13, 0x14, 0x15, 0x16, 0x17
    const/4 v1, 0x6

    aput v1, v2, v4

    goto :goto_f5

    :pswitch_e0  #0x12
    const/4 v1, 0x5

    aput v1, v2, v4

    goto :goto_f5

    :pswitch_e4  #0xd, 0xe, 0xf, 0x10, 0x11
    const/4 v1, 0x4

    aput v1, v2, v4

    goto :goto_f5

    :pswitch_e8  #0xc
    const/4 v1, 0x3

    aput v1, v2, v4

    goto :goto_f5

    :pswitch_ec  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    const/4 v1, 0x2

    aput v1, v2, v4

    goto :goto_f5

    :pswitch_f0  #0x1, 0x2, 0x3, 0x4, 0x5
    aput v3, v2, v4

    goto :goto_f5

    :pswitch_f3  #0x0
    aput v5, v2, v4

    :goto_f5
    return-wide v6

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_f3  #00000000
        :pswitch_f0  #00000001
        :pswitch_f0  #00000002
        :pswitch_f0  #00000003
        :pswitch_f0  #00000004
        :pswitch_f0  #00000005
        :pswitch_ec  #00000006
        :pswitch_ec  #00000007
        :pswitch_ec  #00000008
        :pswitch_ec  #00000009
        :pswitch_ec  #0000000a
        :pswitch_ec  #0000000b
        :pswitch_e8  #0000000c
        :pswitch_e4  #0000000d
        :pswitch_e4  #0000000e
        :pswitch_e4  #0000000f
        :pswitch_e4  #00000010
        :pswitch_e4  #00000011
        :pswitch_e0  #00000012
        :pswitch_dc  #00000013
        :pswitch_dc  #00000014
        :pswitch_dc  #00000015
        :pswitch_dc  #00000016
        :pswitch_dc  #00000017
    .end packed-switch
.end method

.method private computeSolarTerm()V
    .registers 8

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-static {v2, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v4, 0x9

    aget v4, v2, v4

    shr-int/lit8 v5, v0, 0x8

    const/16 v6, 0xf

    if-ne v4, v5, :cond_20

    aget v0, v2, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    aput v0, v2, v6

    goto :goto_30

    :cond_20
    and-int/lit16 v0, v0, 0xff

    if-ne v4, v0, :cond_2d

    aget v0, v2, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    aput v0, v2, v6

    goto :goto_30

    :cond_2d
    const/4 v0, 0x0

    aput v0, v2, v6

    :goto_30
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .registers 9

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    cmp-long p3, p3, v0

    const/16 p4, 0x7b2

    if-gez p3, :cond_e

    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    int-to-long v0, p3

    :goto_b
    sub-long v0, p1, v0

    goto :goto_f

    :cond_e
    move-wide v0, p1

    :goto_f
    const-wide/16 v2, 0x16d

    div-long v2, v0, v2

    long-to-int p3, v2

    if-eqz p3, :cond_1d

    add-int/2addr p4, p3

    int-to-long v0, p4

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v0

    goto :goto_b

    :cond_1d
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_2b

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p4}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    :cond_2b
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p2, 0x1

    aput p4, p1, p2

    long-to-int p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private daysFromBaseYear(J)J
    .registers 16

    const-wide/16 v0, 0x7b2

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x16d

    if-ltz v2, :cond_42

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    const-wide/16 v9, 0x7b1

    sub-long v9, p1, v9

    div-long/2addr v9, v7

    add-long/2addr v9, v0

    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_2a

    const-wide/16 v0, 0x76d

    sub-long v0, p1, v0

    div-long/2addr v0, v5

    const-wide/16 v5, 0x641

    sub-long/2addr p1, v5

    div-long/2addr p1, v3

    sub-long/2addr v0, p1

    sub-long/2addr v9, v0

    goto :goto_41

    :cond_2a
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_34

    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    :goto_31
    int-to-long p1, p1

    add-long/2addr v9, p1

    goto :goto_41

    :cond_34
    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_3e

    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    goto :goto_31

    :cond_3e
    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    goto :goto_31

    :goto_41
    return-wide v9

    :cond_42
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    int-to-long v11, v2

    cmp-long v2, p1, v11

    const-wide/16 v11, 0x7b4

    if-gtz v2, :cond_56

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long/2addr p1, v11

    div-long/2addr p1, v7

    add-long/2addr p1, v0

    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1

    :cond_56
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long v9, p1, v11

    div-long/2addr v9, v7

    add-long/2addr v9, v0

    const-wide/16 v0, 0x7d0

    sub-long/2addr p1, v0

    div-long v0, p1, v5

    sub-long/2addr v9, v0

    div-long/2addr p1, v3

    add-long/2addr p1, v9

    return-wide p1
.end method

.method public static daysInChineseMonth(II)I
    .registers 3

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    add-int/lit8 p1, p1, 0x1

    const/high16 v0, 0x10000

    shr-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    const/16 p0, 0x1e

    goto :goto_14

    :cond_12
    const/16 p0, 0x1d

    :goto_14
    return p0
.end method

.method public static daysInChineseYear(I)I
    .registers 3

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 v1, p0, 0x1

    aget v1, v0, v1

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1
.end method

.method private static daysInMonth(ZI)I
    .registers 3

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p1, v0, p1

    add-int/2addr p1, p0

    return p1

    :cond_b
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method private daysInYear(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_12

    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v2

    :cond_12
    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_19

    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    sub-int/2addr v0, p1

    :cond_19
    return v0
.end method

.method private static daysInYear(ZI)I
    .registers 3

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    if-le p1, p0, :cond_b

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p1, v0, p1

    add-int/2addr p1, p0

    return p1

    :cond_b
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p0, p0, p1

    return p0
.end method

.method private getDstOffset(I)I
    .registers 12

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v9, 0x0

    if-gtz v4, :cond_a

    move p1, v9

    goto :goto_1d

    :cond_a
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v3, 0x1

    const/4 v5, 0x5

    aget v5, v0, v5

    const/16 v6, 0x9

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v0, v7

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    :goto_1d
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, v0, v1

    if-lez v1, :cond_29

    const/16 v1, 0x17

    aget v0, v0, v1

    sub-int/2addr p1, v0

    return p1

    :cond_29
    return v9
.end method

.method private static leapChineseMonth(I)I
    .registers 2

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_d

    const/4 p0, -0x1

    goto :goto_f

    :cond_d
    add-int/lit8 p0, p0, -0x1

    :goto_f
    return p0
.end method

.method public static leapDaysInChineseYear(I)I
    .registers 2

    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-ltz v0, :cond_19

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_16

    const/16 p0, 0x1e

    goto :goto_1a

    :cond_16
    const/16 p0, 0x1d

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private static mod(JI)I
    .registers 6

    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_d

    if-gez v0, :cond_d

    add-int/2addr v0, p2

    :cond_d
    return v0
.end method

.method private onChineseDateChange()V
    .registers 9

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit16 v1, v1, -0x76c

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v3, -0x63c1

    add-long/2addr v0, v3

    const/4 v3, 0x0

    :goto_10
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v5, 0x6

    aget v6, v4, v5

    if-ge v3, v6, :cond_22

    aget v4, v4, v2

    invoke-static {v4, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    const/16 v3, 0x8

    aget v3, v4, v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_32

    aget v2, v4, v2

    invoke-static {v2, v6}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v2

    :goto_2f
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_47

    :cond_32
    aget v3, v4, v2

    invoke-static {v3}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    if-ltz v3, :cond_47

    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v5

    if-ge v3, v5, :cond_47

    aget v2, v4, v2

    invoke-static {v2}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v2

    goto :goto_2f

    :cond_47
    :goto_47
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int/2addr v2, v7

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-void
.end method

.method private onSolarDateChange()V
    .registers 9

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    const/16 v4, 0x9

    aget v0, v0, v4

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v4

    invoke-virtual {p0, v2}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v6

    invoke-static {v6, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide/16 v6, 0x3

    sub-long v6, v4, v6

    const/4 v3, 0x7

    invoke-static {v6, v7, v3}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v3

    add-int/2addr v3, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v1, v0, v1

    const v3, 0x36ee80

    mul-int/2addr v1, v3

    const/16 v3, 0x14

    aget v3, v0, v3

    const v6, 0xea60

    mul-int/2addr v3, v6

    add-int/2addr v3, v1

    const/16 v1, 0x15

    aget v1, v0, v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v3

    const/16 v3, 0x16

    aget v0, v0, v3

    add-int/2addr v1, v0

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    int-to-long v0, v1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    if-gtz v2, :cond_61

    const-wide/16 v0, 0x0

    :cond_61
    sub-long/2addr v3, v0

    iput-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    return-void
.end method

.method private safeCompute()V
    .registers 15

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    move-result-wide v0

    const-wide/32 v2, 0xb9be

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    const/16 v6, 0x834

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    move-wide v0, v2

    :cond_1b
    const-wide/16 v2, -0x63c1

    cmp-long v4, v0, v2

    if-gez v4, :cond_30

    const/16 v6, 0x76c

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    move-wide v0, v2

    :cond_30
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    :cond_3f
    return-void
.end method

.method public static solarTermDaysOfMonth(II)I
    .registers 6

    const/16 v0, 0x834

    if-le p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    add-int/lit16 p0, p0, -0x76c

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p0, p0, 0x18

    add-int/2addr p0, p1

    add-int/lit8 v0, p0, 0x1

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, -0x30

    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    aget v3, v2, p1

    add-int/2addr p0, v3

    aget-byte v0, v1, v0

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 p1, p1, 0x1

    aget p1, v2, p1

    add-int/2addr v0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public add(II)Lmiuix/pickerwidget/date/Calendar;
    .registers 16

    if-ltz p1, :cond_261

    const/16 v0, 0x19

    if-ge p1, v0, :cond_261

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_24b

    const/16 v3, 0x9

    const/4 v4, 0x5

    if-eq p1, v2, :cond_220

    const/16 v5, 0x834

    const/16 v6, 0x76c

    const-string v7, "out of range of Chinese Lunar Year"

    const/16 v8, 0xa

    const/16 v9, 0x8

    const/4 v10, 0x6

    if-eq p1, v0, :cond_1d4

    const/16 v11, 0xc

    if-eq p1, v4, :cond_196

    if-eq p1, v10, :cond_f7

    const-string v0, "out of range"

    if-eq p1, v3, :cond_d4

    if-eq p1, v8, :cond_d4

    if-eq p1, v11, :cond_d4

    const/16 v3, 0xd

    if-eq p1, v3, :cond_d4

    const/16 v3, 0x12

    if-eq p1, v3, :cond_b1

    packed-switch p1, :pswitch_data_26e

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported set field:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_4d  #0x16
    if-eqz p2, :cond_260

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    add-long/2addr v5, v3

    if-lez p2, :cond_57

    move p1, v2

    goto :goto_58

    :cond_57
    move p1, v1

    :goto_58
    cmp-long p2, v5, v3

    if-lez p2, :cond_5d

    move v1, v2

    :cond_5d
    if-ne p1, v1, :cond_66

    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_260

    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6c  #0x15
    if-eqz p2, :cond_260

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_79

    move p1, v2

    goto :goto_7a

    :cond_79
    move p1, v1

    :goto_7a
    cmp-long p2, v5, v3

    if-lez p2, :cond_7f

    move v1, v2

    :cond_7f
    if-ne p1, v1, :cond_88

    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_260

    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8e  #0x14
    if-eqz p2, :cond_260

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_9c

    move p1, v2

    goto :goto_9d

    :cond_9c
    move p1, v1

    :goto_9d
    cmp-long p2, v5, v3

    if-lez p2, :cond_a2

    move v1, v2

    :cond_a2
    if-ne p1, v1, :cond_ab

    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_260

    :cond_ab
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b1
    if-eqz p2, :cond_260

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_bf

    move p1, v2

    goto :goto_c0

    :cond_bf
    move p1, v1

    :goto_c0
    cmp-long p2, v5, v3

    if-lez p2, :cond_c5

    move v1, v2

    :cond_c5
    if-ne p1, v1, :cond_ce

    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_260

    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d4
    if-eqz p2, :cond_260

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_e2

    move p1, v2

    goto :goto_e3

    :cond_e2
    move p1, v1

    :goto_e3
    cmp-long p2, v5, v3

    if-lez p2, :cond_e8

    move v1, v2

    :cond_e8
    if-ne p1, v1, :cond_f1

    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_260

    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    if-eqz p2, :cond_260

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_190

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    :goto_107
    const/16 v3, 0xb

    if-lez p2, :cond_137

    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v11, v4, v10

    if-ne v11, p1, :cond_118

    aget v12, v4, v9

    if-nez v12, :cond_118

    aput v2, v4, v9

    goto :goto_134

    :cond_118
    add-int/lit8 v11, v11, 0x1

    aput v11, v4, v10

    aput v1, v4, v9

    if-le v11, v3, :cond_134

    aput v1, v4, v10

    aget p1, v4, v0

    add-int/2addr p1, v2

    aput p1, v4, v0

    if-gt p1, v5, :cond_12e

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_134

    :cond_12e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_134
    :goto_134
    add-int/lit8 p2, p2, -0x1

    goto :goto_107

    :cond_137
    :goto_137
    if-gez p2, :cond_16e

    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v10

    if-ne v5, p1, :cond_146

    aget v11, v4, v9

    if-ne v11, v2, :cond_146

    aput v1, v4, v9

    goto :goto_16b

    :cond_146
    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v10

    if-gez v5, :cond_163

    aput v3, v4, v10

    rsub-int/lit8 p1, v2, 0xb

    aput p1, v4, v10

    aget p1, v4, v0

    if-lt p1, v6, :cond_15d

    aget p1, v4, v2

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_163

    :cond_15d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_163
    :goto_163
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v10

    if-ne v5, p1, :cond_16b

    aput v2, v4, v9

    :cond_16b
    :goto_16b
    add-int/lit8 p2, p2, 0x1

    goto :goto_137

    :cond_16e
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v2, :cond_17b

    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_183

    :cond_17b
    aget p2, p1, v0

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    :goto_183
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v8

    if-le v0, p1, :cond_18b

    aput p1, p2, v8

    :cond_18b
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_260

    :cond_190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_196
    if-eqz p2, :cond_260

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p1, v4

    add-int/2addr p2, v0

    div-int/lit8 v0, p2, 0xc

    rem-int/2addr p2, v11

    if-gez p2, :cond_1a6

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 v0, v0, -0x1

    :cond_1a6
    aput p2, p1, v4

    if-nez v0, :cond_1cf

    aget p2, p1, v1

    if-nez p2, :cond_1b4

    aget p2, p1, v2

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v2

    :cond_1b4
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_1ca

    aput p1, p2, v3

    :cond_1ca
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto/16 :goto_260

    :cond_1cf
    invoke-virtual {p0, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    goto/16 :goto_260

    :cond_1d4
    if-eqz p2, :cond_260

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v0

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_21a

    if-lt p2, v6, :cond_21a

    if-gt p2, v5, :cond_21a

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v0

    aget v3, p1, v9

    if-ne v3, v2, :cond_1f9

    aget p1, p1, v10

    invoke-static {p2}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p2

    if-ne p1, p2, :cond_1f9

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v1, p1, v9

    :cond_1f9
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v2, :cond_206

    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_20e

    :cond_206
    aget p2, p1, v0

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    :goto_20e
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v8

    if-le v0, p1, :cond_216

    aput p1, p2, v8

    :cond_216
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto :goto_260

    :cond_21a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_220
    if-eqz p2, :cond_260

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p1, v1

    if-nez v0, :cond_22e

    aget v0, p1, v2

    rsub-int/lit8 v0, v0, -0x1

    aput v0, p1, v2

    :cond_22e
    aget v0, p1, v2

    add-int/2addr v0, p2

    aput v0, p1, v2

    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_247

    aput p1, p2, v3

    :cond_247
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto :goto_260

    :cond_24b
    if-eqz p2, :cond_260

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, p1, v1

    add-int/2addr p2, v1

    rem-int/2addr p2, v0

    if-eq v1, p2, :cond_260

    if-nez v1, :cond_260

    aget p2, p1, v2

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v2

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    :cond_260
    :goto_260
    return-object p0

    :cond_261
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field out of range [0-25]: "

    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_26e
    .packed-switch 0x14
        :pswitch_8e  #00000014
        :pswitch_6c  #00000015
        :pswitch_4d  #00000016
    .end packed-switch
.end method

.method public after(Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public before(Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->compareTo(Lmiuix/pickerwidget/date/Calendar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiuix/pickerwidget/date/Calendar;)I
    .registers 6

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_a

    const/4 p1, -0x1

    goto :goto_11

    :cond_a
    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p1, p0, :cond_13

    instance-of v0, p1, Lmiuix/pickerwidget/date/Calendar;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    iget-wide v2, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p2

    invoke-interface {p2, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .registers 15

    if-nez p4, :cond_6

    invoke-static {p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object p4

    :cond_6
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v6, 0x0

    move v0, v6

    move v7, v0

    :goto_d
    if-ge v0, p1, :cond_72

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v1, 0x27

    const/4 v8, 0x1

    if-eqz v7, :cond_2e

    if-ne v3, v1, :cond_2a

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_28

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_28

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_28
    move v7, v6

    goto :goto_70

    :cond_2a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_2e
    if-ne v3, v1, :cond_41

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_3f

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3f

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3d
    move v0, v1

    goto :goto_70

    :cond_3f
    move v7, v8

    goto :goto_70

    :cond_41
    const/16 v1, 0x41

    if-lt v3, v1, :cond_6d

    const/16 v1, 0x7a

    if-gt v3, v1, :cond_6d

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v2, v3, -0x41

    aget v1, v1, v2

    if-ltz v1, :cond_6d

    move v9, v0

    move v4, v8

    :goto_53
    add-int/lit8 v0, v9, 0x1

    if-ge v0, p1, :cond_61

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_61

    add-int/lit8 v4, v4, 0x1

    move v9, v0

    goto :goto_53

    :cond_61
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    aget v5, v0, v2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/pickerwidget/date/Calendar;->appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V

    move v0, v9

    goto :goto_70

    :cond_6d
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_70
    add-int/2addr v0, v8

    goto :goto_d

    :cond_72
    return-object p2
.end method

.method public get(I)I
    .registers 4

    if-ltz p1, :cond_b

    const/16 v0, 0x19

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, v0, p1

    return p1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field out of range [0-25]: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualMaximum(I)I
    .registers 8

    if-ltz p1, :cond_98

    const/16 v0, 0x19

    if-ge p1, v0, :cond_98

    const/4 v0, 0x6

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_a4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported field: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28  #0x16
    const/16 p1, 0x3e7

    return p1

    :pswitch_2b  #0x14, 0x15
    return v3

    :pswitch_2c  #0x12
    const/16 p1, 0x17

    return p1

    :pswitch_2f  #0x11
    return v5

    :pswitch_30  #0x10
    return v0

    :pswitch_31  #0xf
    const/16 p1, 0x18

    return p1

    :pswitch_34  #0xe
    const/4 p1, 0x7

    return p1

    :pswitch_36  #0xd
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_45

    :cond_3d
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v2

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result v4

    :goto_45
    return v4

    :pswitch_46  #0xc
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    move-result p1

    return p1

    :pswitch_4f  #0xa
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_56

    goto :goto_6f

    :cond_56
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v2

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    goto :goto_6f

    :cond_65
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, p1, v2

    aget p1, p1, v0

    invoke-static {v1, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    :goto_6f
    return v4

    :pswitch_70  #0x9
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p1

    return p1

    :pswitch_82  #0x8
    return v5

    :pswitch_83  #0x5, 0x6
    return v1

    :pswitch_84  #0x4, 0x7, 0xb, 0x13
    return v3

    :pswitch_85  #0x3
    return v1

    :pswitch_86  #0x2
    const/16 p1, 0x834

    return p1

    :pswitch_89  #0x1
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v4

    if-ne p1, v5, :cond_93

    const p1, 0x116bd2d2

    goto :goto_96

    :cond_93
    const p1, 0x116babff

    :goto_96
    return p1

    :pswitch_97  #0x0
    return v5

    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field out of range [0-25]: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_89  #00000001
        :pswitch_86  #00000002
        :pswitch_85  #00000003
        :pswitch_84  #00000004
        :pswitch_83  #00000005
        :pswitch_83  #00000006
        :pswitch_84  #00000007
        :pswitch_82  #00000008
        :pswitch_70  #00000009
        :pswitch_4f  #0000000a
        :pswitch_84  #0000000b
        :pswitch_46  #0000000c
        :pswitch_36  #0000000d
        :pswitch_34  #0000000e
        :pswitch_31  #0000000f
        :pswitch_30  #00000010
        :pswitch_2f  #00000011
        :pswitch_2c  #00000012
        :pswitch_84  #00000013
        :pswitch_2b  #00000014
        :pswitch_2b  #00000015
        :pswitch_28  #00000016
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 5

    if-ltz p1, :cond_37

    const/16 v0, 0x19

    if-ge p1, v0, :cond_37

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported field: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0xf, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16
    return v1

    :pswitch_23  #0xe
    return v0

    :pswitch_24  #0xd
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    :goto_28
    xor-int/2addr p1, v0

    return p1

    :pswitch_2a  #0xc
    return v0

    :pswitch_2b  #0xa
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    goto :goto_28

    :pswitch_30  #0x9
    return v0

    :pswitch_31  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xb, 0x13
    return v1

    :pswitch_32  #0x2
    const/16 p1, 0x76c

    return p1

    :pswitch_35  #0x1
    return v0

    :pswitch_36  #0x0
    return v1

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field out of range [0-25]: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_35  #00000001
        :pswitch_32  #00000002
        :pswitch_31  #00000003
        :pswitch_31  #00000004
        :pswitch_31  #00000005
        :pswitch_31  #00000006
        :pswitch_31  #00000007
        :pswitch_31  #00000008
        :pswitch_30  #00000009
        :pswitch_2b  #0000000a
        :pswitch_31  #0000000b
        :pswitch_2a  #0000000c
        :pswitch_24  #0000000d
        :pswitch_23  #0000000e
        :pswitch_22  #0000000f
        :pswitch_22  #00000010
        :pswitch_22  #00000011
        :pswitch_22  #00000012
        :pswitch_31  #00000013
        :pswitch_22  #00000014
        :pswitch_22  #00000015
        :pswitch_22  #00000016
    .end packed-switch
.end method

.method public getChineseLeapMonth()I
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMillis()J
    .registers 3

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChineseLeapMonth()Z
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isLeapYear(I)Z
    .registers 5

    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_15

    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_13

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_14

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :cond_14
    :goto_14
    return v1

    :cond_15
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public outOfChineseCalendarRange()Z
    .registers 9

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v3, v2, v3

    int-to-long v4, v3

    const-wide v6, -0x201b77f5c00L

    sub-long/2addr v6, v4

    const/16 v4, 0x18

    aget v2, v2, v4

    int-to-long v4, v2

    sub-long/2addr v6, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_29

    const-wide v4, 0x3c314a71400L

    int-to-long v6, v3

    sub-long/2addr v4, v6

    int-to-long v2, v2

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method public set(II)Lmiuix/pickerwidget/date/Calendar;
    .registers 11

    const-string v0, "]: "

    const-string v1, "-"

    const-string v2, "value is out of date range ["

    const/4 v3, 0x6

    if-ne p1, v3, :cond_98

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-gez p2, :cond_3e

    neg-int p2, p2

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    if-ne p2, p1, :cond_1f

    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v4, p1, v5

    goto :goto_75

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "year "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has no such leap month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v7

    if-ge p2, v7, :cond_70

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v7

    if-gt p2, v7, :cond_4b

    goto :goto_70

    :cond_4b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_70
    :goto_70
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x0

    aput v0, p1, v5

    :goto_75
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v3

    aget v0, p1, v5

    if-ne v0, v4, :cond_84

    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_8a

    :cond_84
    aget p1, p1, v6

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    :goto_8a
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0xa

    aget v1, p2, v0

    if-le v1, p1, :cond_94

    aput p1, p2, v0

    :cond_94
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-object p0

    :cond_98
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v3

    if-ge p2, v3, :cond_ca

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt p2, v3, :cond_a5

    goto :goto_ca

    :cond_a5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ca
    :goto_ca
    :try_start_ca
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;
    :try_end_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ca .. :try_end_d2} :catch_d3

    return-object p0

    :catch_d3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported set field:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;
    .registers 10

    const-string v0, "Year "

    if-ltz p2, :cond_8f

    const/16 v1, 0xb

    if-gt p2, v1, :cond_8f

    if-lez p3, :cond_7a

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v1

    invoke-static {v1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    if-gt p3, v1, :cond_7a

    if-ltz p4, :cond_6e

    const/16 v0, 0x17

    if-gt p4, v0, :cond_6e

    if-ltz p5, :cond_62

    const/16 v0, 0x3b

    if-gt p5, v0, :cond_62

    if-ltz p6, :cond_56

    if-gt p6, v0, :cond_56

    if-ltz p7, :cond_4a

    const/16 v0, 0x3e7

    if-gt p7, v0, :cond_4a

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x5

    aput p2, v0, p1

    const/16 p1, 0x9

    aput p3, v0, p1

    const/16 p1, 0x12

    aput p4, v0, p1

    const/16 p1, 0x14

    aput p5, v0, p1

    const/16 p1, 0x15

    aput p6, v0, p1

    const/16 p1, 0x16

    aput p7, v0, p1

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-object p0

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid millisecond "

    invoke-static {p2, p7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid second "

    invoke-static {p2, p6}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid minute "

    invoke-static {p2, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid hour "

    invoke-static {p2, p4}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string p5, " month "

    const-string p6, " has no day "

    invoke-static {v0, p1, p5, p2, p6}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_8f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;
    .registers 13

    const/16 v0, 0x76c

    if-lt p1, v0, :cond_f6

    const/16 v0, 0x834

    if-gt p1, v0, :cond_f6

    const-string v0, "Year "

    if-ltz p2, :cond_d9

    const/16 v1, 0xb

    if-gt p2, v1, :cond_d9

    if-eqz p4, :cond_36

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v1

    if-ne v1, p2, :cond_19

    goto :goto_36

    :cond_19
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no leap month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_36
    :goto_36
    const-string v1, " has no day "

    const-string v2, " month "

    if-eqz p4, :cond_56

    if-lez p3, :cond_45

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v3

    if-gt p3, v3, :cond_45

    goto :goto_5e

    :cond_45
    new-instance p4, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, p1, v2, p2, v1}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_56
    if-lez p3, :cond_c8

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v3

    if-gt p3, v3, :cond_c8

    :goto_5e
    if-ltz p5, :cond_bc

    const/16 v0, 0x17

    if-gt p5, v0, :cond_bc

    if-ltz p6, :cond_b0

    const/16 v0, 0x3b

    if-gt p6, v0, :cond_b0

    if-ltz p7, :cond_a4

    if-gt p7, v0, :cond_a4

    if-ltz p8, :cond_98

    const/16 v0, 0x3e8

    if-gt p8, v0, :cond_98

    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x6

    aput p2, v0, p1

    const/16 p1, 0xa

    aput p3, v0, p1

    const/16 p1, 0x8

    aput p4, v0, p1

    const/16 p1, 0x12

    aput p5, v0, p1

    const/16 p1, 0x14

    aput p6, v0, p1

    const/16 p1, 0x15

    aput p7, v0, p1

    const/16 p1, 0x16

    aput p8, v0, p1

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-object p0

    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid millisecond "

    invoke-static {p2, p8}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid second "

    invoke-static {p2, p7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid minute "

    invoke-static {p2, p6}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid hour "

    invoke-static {p2, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c8
    new-instance p4, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, p1, v2, p2, v1}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_d9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_f6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Date out of range [1900 - 2100] expected, but year is "

    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setGregorianChange(J)V
    .registers 7

    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_24

    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    :cond_24
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    div-int/lit8 v2, v1, 0x64

    div-int/lit16 v3, v1, 0x190

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lmiuix/pickerwidget/date/Calendar;->julianError:I

    add-int/lit16 v3, v1, -0x7d0

    div-int/lit16 v3, v3, 0x190

    add-int/2addr v3, v2

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v3, v1

    iput v3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    if-ge v0, v1, :cond_4e

    add-int/lit8 p2, v0, -0x1

    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    goto :goto_52

    :cond_4e
    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    :goto_52
    return-void
.end method

.method public setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;
    .registers 4

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    return-object p0

    :cond_6
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->safeCompute()V

    return-object p0
.end method

.method public setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;
    .registers 3

    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_18
    iput-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    :cond_1d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2e
    const/16 v2, 0x19

    if-ge v1, v2, :cond_4d

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4d
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method
