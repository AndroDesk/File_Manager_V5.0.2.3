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

    .line 1
    const/16 v0, 0xc

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_80

    .line 8
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    .line 10
    const/16 v0, 0xd

    .line 12
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_8a

    .line 17
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    .line 19
    const-string v1, "ERA"

    .line 21
    const-string v2, "YEAR"

    .line 23
    const-string v3, "CHINESE_YEAR"

    .line 25
    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    .line 27
    const-string v5, "CHINESE_ERA_YEAR"

    .line 29
    const-string v6, "MONTH"

    .line 31
    const-string v7, "CHINESE_MONTH"

    .line 33
    const-string v8, "CHINESE_ERA_MONTH"

    .line 35
    const-string v9, "CHINESE_MONTH_IS_LEAP"

    .line 37
    const-string v10, "DAY_OF_MONTH"

    .line 39
    const-string v11, "DAY_OF_CHINESE_MONTH"

    .line 41
    const-string v12, "CHINESE_ERA_DAY"

    .line 43
    const-string v13, "DAY_OF_YEAR"

    .line 45
    const-string v14, "DAY_OF_CHINESE_YEAR"

    .line 47
    const-string v15, "DAY_OF_WEEK"

    .line 49
    const-string v16, "SOLAR_TERM"

    .line 51
    const-string v17, "DETAIL_AM_PM"

    .line 53
    const-string v18, "AM_PM"

    .line 55
    const-string v19, "HOUR"

    .line 57
    const-string v20, "CHINESE_ERA_HOUR"

    .line 59
    const-string v21, "MINUTE"

    .line 61
    const-string v22, "SECOND"

    .line 63
    const-string v23, "MILLISECOND"

    .line 65
    const-string v24, "ZONE_OFFSET"

    .line 67
    const-string v25, "DST_OFFSET"

    .line 69
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x3a

    .line 77
    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_a8

    .line 82
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    .line 84
    const/16 v0, 0xca

    .line 86
    new-array v0, v0, [I

    .line 88
    fill-array-data v0, :array_120

    .line 91
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 93
    const/16 v0, 0xc9

    .line 95
    new-array v0, v0, [I

    .line 97
    fill-array-data v0, :array_2b8

    .line 100
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 102
    const/16 v0, 0x18

    .line 104
    new-array v0, v0, [I

    .line 106
    fill-array-data v0, :array_44e

    .line 109
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 111
    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 119
    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    .line 127
    return-void

    .line 128
    nop

    .line 129
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

    .line 139
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

    .line 1
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide v0, -0xb1d069b5400L

    .line 4
    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    const/16 v0, 0x62e

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/16 v1, 0x62e

    .line 6
    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x62e

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->julianError:I

    const/16 v2, 0x7d0

    rsub-int v3, v2, 0x62e

    .line 7
    div-int/lit16 v3, v3, 0x190

    add-int/2addr v3, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v3, v0

    iput v3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .registers 7

    .line 1
    const/16 v0, 0x17

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x18

    .line 9
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    if-gez v1, :cond_13

    .line 16
    const/16 v0, 0x2d

    .line 18
    neg-int v1, v1

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/16 v0, 0x2b

    .line 22
    :goto_15
    if-eqz p2, :cond_1c

    .line 24
    const-string p2, "GMT"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    const p2, 0x36ee80

    .line 35
    div-int v0, v1, p2

    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-static {p1, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 41
    if-eqz p3, :cond_2f

    .line 43
    const/16 p3, 0x3a

    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_2f
    rem-int/2addr v1, p2

    .line 49
    const p2, 0xea60

    .line 52
    div-int/2addr v1, p2

    .line 53
    invoke-static {p1, v2, v1}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 56
    return-void
.end method

.method private static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 5
    const/16 v2, 0x18

    .line 7
    aget v1, v1, v2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_e

    .line 13
    move v1, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v1, v3

    .line 16
    :goto_f
    const/4 v4, 0x4

    .line 17
    if-eq p3, v4, :cond_13

    .line 19
    move v2, v3

    .line 20
    :cond_13
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_21

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-direct {p0, p1, v3, v3}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    .line 37
    :goto_24
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V
    .registers 16

    .line 1
    const/16 v0, 0x41

    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq p3, v0, :cond_223

    .line 6
    const/16 v0, 0x53

    .line 8
    if-eq p3, v0, :cond_21b

    .line 10
    const/16 v0, 0x61

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p3, v0, :cond_1f9

    .line 15
    const/16 v0, 0x68

    .line 17
    const/16 v3, 0x12

    .line 19
    const/16 v4, 0xc

    .line 21
    if-eq p3, v0, :cond_1ec

    .line 23
    const/16 v0, 0x6b

    .line 25
    if-eq p3, v0, :cond_1e4

    .line 27
    const/16 v0, 0x6d

    .line 29
    if-eq p3, v0, :cond_21b

    .line 31
    const/16 v0, 0x44

    .line 33
    if-eq p3, v0, :cond_21b

    .line 35
    const/16 v0, 0x45

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x5

    .line 39
    const/4 v7, 0x1

    .line 40
    if-eq p3, v0, :cond_1b0

    .line 42
    const/16 v0, 0x59

    .line 44
    const/16 v8, 0xa

    .line 46
    if-eq p3, v0, :cond_178

    .line 48
    const/16 v0, 0x5a

    .line 50
    const/4 v9, 0x0

    .line 51
    if-eq p3, v0, :cond_165

    .line 53
    const/16 v0, 0x73

    .line 55
    if-eq p3, v0, :cond_21b

    .line 57
    const/16 v0, 0x74

    .line 59
    if-eq p3, v0, :cond_154

    .line 61
    const/16 v0, 0x79

    .line 63
    if-eq p3, v0, :cond_13e

    .line 65
    const/16 v0, 0x7a

    .line 67
    if-eq p3, v0, :cond_139

    .line 69
    packed-switch p3, :pswitch_data_232

    .line 72
    packed-switch p3, :pswitch_data_23c

    .line 75
    packed-switch p3, :pswitch_data_248

    .line 78
    goto/16 :goto_230

    .line 80
    :pswitch_4f  #0x65
    if-eq p4, v2, :cond_61

    .line 82
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 88
    aget p3, p3, v8

    .line 90
    sub-int/2addr p3, v7

    .line 91
    aget-object p2, p2, p3

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    goto/16 :goto_230

    .line 98
    :cond_61
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    .line 101
    move-result-object p3

    .line 102
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 104
    const/16 p5, 0xb

    .line 106
    aget p4, p4, p5

    .line 108
    rem-int/2addr p4, v8

    .line 109
    aget-object p3, p3, p4

    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 120
    aget p3, p3, p5

    .line 122
    rem-int/2addr p3, v4

    .line 123
    aget-object p2, p2, p3

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    goto/16 :goto_230

    .line 130
    :pswitch_81  #0x4e
    if-eq p4, v2, :cond_a2

    .line 132
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    .line 135
    move-result-object p3

    .line 136
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 138
    const/16 p5, 0x8

    .line 140
    aget p4, p4, p5

    .line 142
    aget-object p3, p3, p4

    .line 144
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 151
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 153
    const/4 p4, 0x6

    .line 154
    aget p3, p3, p4

    .line 156
    aget-object p2, p2, p3

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    goto/16 :goto_230

    .line 163
    :cond_a2
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    .line 166
    move-result-object p3

    .line 167
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 169
    const/4 p5, 0x7

    .line 170
    aget p4, p4, p5

    .line 172
    rem-int/2addr p4, v8

    .line 173
    aget-object p3, p3, p4

    .line 175
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 184
    aget p3, p3, p5

    .line 186
    rem-int/2addr p3, v4

    .line 187
    aget-object p2, p2, p3

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    goto/16 :goto_230

    .line 194
    :pswitch_c1  #0x4c, 0x4d
    if-ge p4, v1, :cond_cd

    .line 196
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 198
    aget p2, p2, v6

    .line 200
    add-int/2addr p2, v7

    .line 201
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 204
    goto/16 :goto_230

    .line 206
    :cond_cd
    if-ne p4, v5, :cond_de

    .line 208
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 214
    aget p3, p3, v6

    .line 216
    aget-object p2, p2, p3

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto/16 :goto_230

    .line 223
    :cond_de
    if-ne p4, v6, :cond_ef

    .line 225
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    .line 228
    move-result-object p2

    .line 229
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 231
    aget p3, p3, v6

    .line 233
    aget-object p2, p2, p3

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    goto/16 :goto_230

    .line 240
    :cond_ef
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 243
    move-result-object p2

    .line 244
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 246
    aget p3, p3, v6

    .line 248
    aget-object p2, p2, p3

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    goto/16 :goto_230

    .line 255
    :pswitch_fe  #0x4b
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 257
    aget p2, p2, v3

    .line 259
    rem-int/2addr p2, v4

    .line 260
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 263
    goto/16 :goto_230

    .line 265
    :pswitch_108  #0x49
    const/16 p3, 0x13

    .line 267
    if-ne p4, v2, :cond_11a

    .line 269
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    .line 272
    move-result-object p4

    .line 273
    iget-object p5, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 275
    aget p5, p5, p3

    .line 277
    rem-int/2addr p5, v8

    .line 278
    aget-object p4, p4, p5

    .line 280
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_11a
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    .line 286
    move-result-object p2

    .line 287
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 289
    aget p3, p4, p3

    .line 291
    rem-int/2addr p3, v4

    .line 292
    aget-object p2, p2, p3

    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    goto/16 :goto_230

    .line 299
    :pswitch_12a  #0x47
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    .line 302
    move-result-object p2

    .line 303
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 305
    aget p3, p3, v9

    .line 307
    aget-object p2, p2, p3

    .line 309
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    goto/16 :goto_230

    .line 314
    :cond_139
    invoke-direct {p0, p1, p2, p4}, Lmiuix/pickerwidget/date/Calendar;->appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V

    .line 317
    goto/16 :goto_230

    .line 319
    :cond_13e
    if-ne p4, v2, :cond_14b

    .line 321
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 323
    aget p2, p2, v7

    .line 325
    rem-int/lit8 p2, p2, 0x64

    .line 327
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 330
    goto/16 :goto_230

    .line 332
    :cond_14b
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 334
    aget p2, p2, v7

    .line 336
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 339
    goto/16 :goto_230

    .line 341
    :cond_154
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    .line 344
    move-result-object p2

    .line 345
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 347
    const/16 p4, 0xf

    .line 349
    aget p3, p3, p4

    .line 351
    aget-object p2, p2, p3

    .line 353
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    goto/16 :goto_230

    .line 358
    :cond_165
    if-ne p4, v5, :cond_16c

    .line 360
    invoke-direct {p0, p1, v7, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    .line 363
    goto/16 :goto_230

    .line 365
    :cond_16c
    if-ne p4, v6, :cond_173

    .line 367
    invoke-direct {p0, p1, v9, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    .line 370
    goto/16 :goto_230

    .line 372
    :cond_173
    invoke-direct {p0, p1, v9, v9}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    .line 375
    goto/16 :goto_230

    .line 377
    :cond_178
    if-eq p4, v2, :cond_192

    .line 379
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    .line 382
    move-result-object p2

    .line 383
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 385
    aget p3, p3, v2

    .line 387
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 390
    move-result p4

    .line 391
    :goto_186
    if-lez p3, :cond_230

    .line 393
    rem-int/lit8 p5, p3, 0xa

    .line 395
    div-int/lit8 p3, p3, 0xa

    .line 397
    aget-object p5, p2, p5

    .line 399
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    goto :goto_186

    .line 403
    :cond_192
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    .line 406
    move-result-object p3

    .line 407
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 409
    aget p4, p4, v5

    .line 411
    rem-int/2addr p4, v8

    .line 412
    aget-object p3, p3, p4

    .line 414
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    .line 420
    move-result-object p2

    .line 421
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 423
    aget p3, p3, v5

    .line 425
    rem-int/2addr p3, v4

    .line 426
    aget-object p2, p2, p3

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    goto/16 :goto_230

    .line 433
    :cond_1b0
    :pswitch_1b0  #0x63
    const/16 p3, 0xe

    .line 435
    if-ne p4, v5, :cond_1c4

    .line 437
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    .line 440
    move-result-object p2

    .line 441
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 443
    aget p3, p4, p3

    .line 445
    sub-int/2addr p3, v7

    .line 446
    aget-object p2, p2, p3

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    goto/16 :goto_230

    .line 453
    :cond_1c4
    if-ne p4, v6, :cond_1d5

    .line 455
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    .line 458
    move-result-object p2

    .line 459
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 461
    aget p3, p4, p3

    .line 463
    sub-int/2addr p3, v7

    .line 464
    aget-object p2, p2, p3

    .line 466
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    goto :goto_230

    .line 470
    :cond_1d5
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    .line 473
    move-result-object p2

    .line 474
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 476
    aget p3, p4, p3

    .line 478
    sub-int/2addr p3, v7

    .line 479
    aget-object p2, p2, p3

    .line 481
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    goto :goto_230

    .line 485
    :cond_1e4
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 487
    aget p2, p2, v3

    .line 489
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 492
    goto :goto_230

    .line 493
    :cond_1ec
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 495
    aget p2, p2, v3

    .line 497
    rem-int/2addr p2, v4

    .line 498
    if-nez p2, :cond_1f4

    .line 500
    goto :goto_1f5

    .line 501
    :cond_1f4
    move v4, p2

    .line 502
    :goto_1f5
    invoke-static {p1, p4, v4}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 505
    goto :goto_230

    .line 506
    :cond_1f9
    if-eq p4, v2, :cond_20b

    .line 508
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    .line 511
    move-result-object p2

    .line 512
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 514
    const/16 p4, 0x11

    .line 516
    aget p3, p3, p4

    .line 518
    aget-object p2, p2, p3

    .line 520
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    goto :goto_230

    .line 524
    :cond_20b
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    .line 527
    move-result-object p2

    .line 528
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 530
    const/16 p4, 0x10

    .line 532
    aget p3, p3, p4

    .line 534
    aget-object p2, p2, p3

    .line 536
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    goto :goto_230

    .line 540
    :cond_21b
    :pswitch_21b  #0x48, 0x64
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 542
    aget p2, p2, p5

    .line 544
    invoke-static {p1, p4, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 547
    goto :goto_230

    .line 548
    :cond_223
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    .line 551
    move-result-object p2

    .line 552
    iget-object p3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 554
    aget p3, p3, v1

    .line 556
    aget-object p2, p2, p3

    .line 558
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_230
    :goto_230
    return-void

    .line 562
    nop

    .line 563
    :pswitch_data_232
    .packed-switch 0x47
        :pswitch_12a  #00000047
        :pswitch_21b  #00000048
        :pswitch_108  #00000049
    .end packed-switch

    .line 573
    :pswitch_data_23c
    .packed-switch 0x4b
        :pswitch_fe  #0000004b
        :pswitch_c1  #0000004c
        :pswitch_c1  #0000004d
        :pswitch_81  #0000004e
    .end packed-switch

    .line 585
    :pswitch_data_248
    .packed-switch 0x63
        :pswitch_1b0  #00000063
        :pswitch_21b  #00000064
        :pswitch_4f  #00000065
    .end packed-switch
.end method

.method private compute()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_13

    .line 11
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    .line 14
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    .line 17
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    .line 20
    :cond_13
    return-void
.end method

.method private computeChineseDate(J)V
    .registers 10

    .line 1
    const-wide/16 v0, -0x63c1

    .line 3
    sub-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 7
    const/4 v0, 0x1

    .line 8
    aget p2, p2, v0

    .line 10
    const/16 v1, 0x834

    .line 12
    if-lt p2, v1, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    add-int/lit8 v1, p2, 0x1

    .line 17
    :goto_10
    sget-object p2, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 19
    add-int/lit16 v2, v1, -0x76c

    .line 21
    aget p2, p2, v2

    .line 23
    sub-int/2addr p1, p2

    .line 24
    if-gez p1, :cond_20

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 28
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    .line 31
    move-result p2

    .line 32
    add-int/2addr p1, p2

    .line 33
    :cond_20
    if-gez p1, :cond_29

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 37
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    .line 40
    move-result p2

    .line 41
    add-int/2addr p1, p2

    .line 42
    :cond_29
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 44
    const/4 v2, 0x2

    .line 45
    aput v1, p2, v2

    .line 47
    const/16 v2, 0xd

    .line 49
    add-int/lit8 v3, p1, 0x1

    .line 51
    aput v3, p2, v2

    .line 53
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 56
    move-result p2

    .line 57
    const/4 v2, 0x0

    .line 58
    move v3, v2

    .line 59
    move v4, v3

    .line 60
    move v5, v4

    .line 61
    :goto_3c
    const/16 v6, 0xc

    .line 63
    if-ge v3, v6, :cond_62

    .line 65
    if-lez p1, :cond_62

    .line 67
    if-ltz p2, :cond_53

    .line 69
    add-int/lit8 v5, p2, 0x1

    .line 71
    if-ne v3, v5, :cond_53

    .line 73
    if-nez v4, :cond_53

    .line 75
    add-int/lit8 v3, v3, -0x1

    .line 77
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 80
    move-result v4

    .line 81
    move v5, v4

    .line 82
    move v4, v0

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-static {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 87
    move-result v5

    .line 88
    :goto_57
    if-eqz v4, :cond_5e

    .line 90
    add-int/lit8 v6, p2, 0x1

    .line 92
    if-ne v3, v6, :cond_5e

    .line 94
    move v4, v2

    .line 95
    :cond_5e
    sub-int/2addr p1, v5

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_3c

    .line 99
    :cond_62
    if-nez p1, :cond_70

    .line 101
    if-lez p2, :cond_70

    .line 103
    add-int/2addr p2, v0

    .line 104
    if-ne v3, p2, :cond_70

    .line 106
    if-eqz v4, :cond_6c

    .line 108
    goto :goto_71

    .line 109
    :cond_6c
    add-int/lit8 v3, v3, -0x1

    .line 111
    move v2, v0

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move v2, v4

    .line 114
    :goto_71
    if-gez p1, :cond_76

    .line 116
    add-int/2addr p1, v5

    .line 117
    add-int/lit8 v3, v3, -0x1

    .line 119
    :cond_76
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 121
    const/16 v1, 0x8

    .line 123
    aput v2, p2, v1

    .line 125
    const/4 v1, 0x6

    .line 126
    aput v3, p2, v1

    .line 128
    const/16 v1, 0xa

    .line 130
    add-int/2addr p1, v0

    .line 131
    aput p1, p2, v1

    .line 133
    return-void
.end method

.method private computeChineseEraNames(J)V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/4 v1, 0x2

    .line 4
    aget v2, v0, v1

    .line 6
    add-int/lit16 v2, v2, -0x76c

    .line 8
    add-int/lit8 v3, v2, 0xc

    .line 10
    int-to-long v3, v3

    .line 11
    const/16 v5, 0xc

    .line 13
    invoke-static {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x3

    .line 18
    aput v3, v0, v4

    .line 20
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 22
    add-int/lit8 v2, v2, 0x24

    .line 24
    int-to-long v2, v2

    .line 25
    const/16 v4, 0x3c

    .line 27
    invoke-static {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x4

    .line 32
    aput v2, v0, v3

    .line 34
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 36
    const/4 v2, 0x1

    .line 37
    aget v3, v0, v2

    .line 39
    const/4 v6, 0x5

    .line 40
    aget v0, v0, v6

    .line 42
    invoke-static {v3, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    .line 45
    move-result v0

    .line 46
    shr-int/lit8 v0, v0, 0x8

    .line 48
    iget-object v3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 50
    aget v7, v3, v2

    .line 52
    add-int/lit16 v7, v7, -0x76c

    .line 54
    mul-int/2addr v7, v5

    .line 55
    aget v6, v3, v6

    .line 57
    add-int/2addr v7, v6

    .line 58
    const/16 v6, 0x9

    .line 60
    aget v6, v3, v6

    .line 62
    if-lt v6, v0, :cond_41

    .line 64
    add-int/lit8 v7, v7, 0x1

    .line 66
    :cond_41
    const/4 v0, 0x7

    .line 67
    add-int/2addr v7, v5

    .line 68
    int-to-long v6, v7

    .line 69
    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 72
    move-result v6

    .line 73
    aput v6, v3, v0

    .line 75
    const-wide/16 v6, -0x63c1

    .line 77
    sub-long/2addr p1, v6

    .line 78
    long-to-int p1, p1

    .line 79
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 81
    const/16 v0, 0xb

    .line 83
    add-int/lit8 v3, p1, 0x28

    .line 85
    int-to-long v6, v3

    .line 86
    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 89
    move-result v3

    .line 90
    aput v3, p2, v0

    .line 92
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 94
    const/16 v0, 0x13

    .line 96
    mul-int/2addr p1, v5

    .line 97
    const/16 v3, 0x12

    .line 99
    aget v3, p2, v3

    .line 101
    add-int/2addr v3, v2

    .line 102
    rem-int/lit8 v3, v3, 0x18

    .line 104
    div-int/2addr v3, v1

    .line 105
    add-int/2addr v3, p1

    .line 106
    int-to-long v1, v3

    .line 107
    invoke-static {v1, v2, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 110
    move-result p1

    .line 111
    aput p1, p2, v0

    .line 113
    return-void
.end method

.method private computeDate(JJ)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/pickerwidget/date/Calendar;->computeYearAndDay(JJ)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 7
    const/16 v2, 0xc

    .line 9
    aput v0, v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    aget v1, v1, v2

    .line 14
    iget v3, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 16
    if-ne v1, v3, :cond_1a

    .line 18
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    .line 20
    cmp-long p3, v3, p3

    .line 22
    if-gtz p3, :cond_1a

    .line 24
    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 26
    add-int/2addr v0, p3

    .line 27
    :cond_1a
    div-int/lit8 p3, v0, 0x20

    .line 29
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 32
    move-result p4

    .line 33
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    .line 36
    move-result v1

    .line 37
    sub-int/2addr v0, v1

    .line 38
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    .line 41
    move-result v1

    .line 42
    if-le v0, v1, :cond_32

    .line 44
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    .line 47
    move-result p4

    .line 48
    sub-int/2addr v0, p4

    .line 49
    add-int/lit8 p3, p3, 0x1

    .line 51
    :cond_32
    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 53
    const/4 v1, 0x5

    .line 54
    aput p3, p4, v1

    .line 56
    const/16 p3, 0x9

    .line 58
    aput v0, p4, p3

    .line 60
    const/16 p3, 0xe

    .line 62
    const-wide/16 v0, 0x3

    .line 64
    sub-long/2addr p1, v0

    .line 65
    const/4 v0, 0x7

    .line 66
    invoke-static {p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 69
    move-result p1

    .line 70
    add-int/2addr p1, v2

    .line 71
    aput p1, p4, p3

    .line 73
    return-void
.end method

.method private computeDateTime()J
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 5
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 7
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x17

    .line 13
    aput v2, v1, v3

    .line 15
    iget-wide v1, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 17
    const-wide/32 v4, 0x5265c00

    .line 20
    div-long v6, v1, v4

    .line 22
    rem-long/2addr v1, v4

    .line 23
    long-to-int v1, v1

    .line 24
    const-wide/16 v4, 0x1

    .line 26
    const v2, 0x5265c00

    .line 29
    if-gez v1, :cond_20

    .line 31
    add-int/2addr v1, v2

    .line 32
    sub-long/2addr v6, v4

    .line 33
    :cond_20
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 35
    aget v8, v8, v3

    .line 37
    add-int/2addr v1, v8

    .line 38
    :goto_25
    if-gez v1, :cond_2a

    .line 40
    add-int/2addr v1, v2

    .line 41
    sub-long/2addr v6, v4

    .line 42
    goto :goto_25

    .line 43
    :cond_2a
    :goto_2a
    if-lt v1, v2, :cond_2f

    .line 45
    sub-int/2addr v1, v2

    .line 46
    add-long/2addr v6, v4

    .line 47
    goto :goto_2a

    .line 48
    :cond_2f
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 50
    aget v8, v8, v3

    .line 52
    iget-wide v9, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 54
    int-to-long v11, v8

    .line 55
    add-long/2addr v11, v9

    .line 56
    const-wide/16 v13, 0x0

    .line 58
    cmp-long v15, v9, v13

    .line 60
    const-wide/high16 v16, -0x8000000000000000L

    .line 62
    const-wide v18, 0x7fffffffffffffffL

    .line 67
    if-lez v15, :cond_4d

    .line 69
    cmp-long v15, v11, v13

    .line 71
    if-gez v15, :cond_4d

    .line 73
    if-lez v8, :cond_4d

    .line 75
    move-wide/from16 v11, v18

    .line 77
    goto :goto_59

    .line 78
    :cond_4d
    cmp-long v9, v9, v13

    .line 80
    if-gez v9, :cond_59

    .line 82
    cmp-long v9, v11, v13

    .line 84
    if-lez v9, :cond_59

    .line 86
    if-gez v8, :cond_59

    .line 88
    move-wide/from16 v11, v16

    .line 90
    :cond_59
    :goto_59
    invoke-direct {v0, v6, v7, v11, v12}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 93
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->getDstOffset(I)I

    .line 96
    move-result v8

    .line 97
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 99
    const/16 v10, 0x18

    .line 101
    aput v8, v9, v10

    .line 103
    if-eqz v8, :cond_9d

    .line 105
    add-int/2addr v1, v8

    .line 106
    if-gez v1, :cond_6f

    .line 108
    add-int/2addr v1, v2

    .line 109
    sub-long v4, v6, v4

    .line 111
    goto :goto_75

    .line 112
    :cond_6f
    if-lt v1, v2, :cond_74

    .line 114
    sub-int/2addr v1, v2

    .line 115
    add-long/2addr v4, v6

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move-wide v4, v6

    .line 118
    :goto_75
    cmp-long v2, v6, v4

    .line 120
    if-eqz v2, :cond_9c

    .line 122
    aget v2, v9, v3

    .line 124
    sub-int/2addr v8, v2

    .line 125
    iget-wide v2, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 127
    int-to-long v6, v8

    .line 128
    add-long/2addr v6, v2

    .line 129
    cmp-long v9, v2, v13

    .line 131
    if-lez v9, :cond_8d

    .line 133
    cmp-long v9, v6, v13

    .line 135
    if-gez v9, :cond_8d

    .line 137
    if-lez v8, :cond_8d

    .line 139
    move-wide/from16 v6, v18

    .line 141
    goto :goto_99

    .line 142
    :cond_8d
    cmp-long v2, v2, v13

    .line 144
    if-gez v2, :cond_99

    .line 146
    cmp-long v2, v6, v13

    .line 148
    if-lez v2, :cond_99

    .line 150
    if-gez v8, :cond_99

    .line 152
    move-wide/from16 v6, v16

    .line 154
    :cond_99
    :goto_99
    invoke-direct {v0, v4, v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 157
    :cond_9c
    move-wide v6, v4

    .line 158
    :cond_9d
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 160
    const/4 v3, 0x1

    .line 161
    aget v4, v2, v3

    .line 163
    const/4 v5, 0x0

    .line 164
    if-gtz v4, :cond_ac

    .line 166
    aput v5, v2, v5

    .line 168
    rsub-int/lit8 v4, v4, 0x1

    .line 170
    aput v4, v2, v3

    .line 172
    goto :goto_ae

    .line 173
    :cond_ac
    aput v3, v2, v5

    .line 175
    :goto_ae
    const/16 v4, 0x16

    .line 177
    rem-int/lit16 v8, v1, 0x3e8

    .line 179
    aput v8, v2, v4

    .line 181
    div-int/lit16 v1, v1, 0x3e8

    .line 183
    const/16 v4, 0x15

    .line 185
    rem-int/lit8 v8, v1, 0x3c

    .line 187
    aput v8, v2, v4

    .line 189
    div-int/lit8 v1, v1, 0x3c

    .line 191
    const/16 v4, 0x14

    .line 193
    rem-int/lit8 v8, v1, 0x3c

    .line 195
    aput v8, v2, v4

    .line 197
    div-int/lit8 v1, v1, 0x3c

    .line 199
    const/16 v4, 0x12

    .line 201
    rem-int/2addr v1, v10

    .line 202
    aput v1, v2, v4

    .line 204
    const/16 v4, 0x11

    .line 206
    const/16 v8, 0xb

    .line 208
    if-le v1, v8, :cond_d3

    .line 210
    move v8, v3

    .line 211
    goto :goto_d4

    .line 212
    :cond_d3
    move v8, v5

    .line 213
    :goto_d4
    aput v8, v2, v4

    .line 215
    const/16 v4, 0x10

    .line 217
    packed-switch v1, :pswitch_data_f6

    .line 220
    goto :goto_f5

    .line 221
    :pswitch_dc  #0x13, 0x14, 0x15, 0x16, 0x17
    const/4 v1, 0x6

    .line 222
    aput v1, v2, v4

    .line 224
    goto :goto_f5

    .line 225
    :pswitch_e0  #0x12
    const/4 v1, 0x5

    .line 226
    aput v1, v2, v4

    .line 228
    goto :goto_f5

    .line 229
    :pswitch_e4  #0xd, 0xe, 0xf, 0x10, 0x11
    const/4 v1, 0x4

    .line 230
    aput v1, v2, v4

    .line 232
    goto :goto_f5

    .line 233
    :pswitch_e8  #0xc
    const/4 v1, 0x3

    .line 234
    aput v1, v2, v4

    .line 236
    goto :goto_f5

    .line 237
    :pswitch_ec  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    const/4 v1, 0x2

    .line 238
    aput v1, v2, v4

    .line 240
    goto :goto_f5

    .line 241
    :pswitch_f0  #0x1, 0x2, 0x3, 0x4, 0x5
    aput v3, v2, v4

    .line 243
    goto :goto_f5

    .line 244
    :pswitch_f3  #0x0
    aput v5, v2, v4

    .line 246
    :goto_f5
    return-wide v6

    .line 247
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

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aget v2, v0, v1

    .line 6
    const/4 v3, 0x5

    .line 7
    aget v0, v0, v3

    .line 9
    invoke-static {v2, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 15
    const/16 v4, 0x9

    .line 17
    aget v4, v2, v4

    .line 19
    shr-int/lit8 v5, v0, 0x8

    .line 21
    const/16 v6, 0xf

    .line 23
    if-ne v4, v5, :cond_20

    .line 25
    aget v0, v2, v3

    .line 27
    mul-int/lit8 v0, v0, 0x2

    .line 29
    add-int/2addr v0, v1

    .line 30
    aput v0, v2, v6

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    and-int/lit16 v0, v0, 0xff

    .line 35
    if-ne v4, v0, :cond_2d

    .line 37
    aget v0, v2, v3

    .line 39
    mul-int/lit8 v0, v0, 0x2

    .line 41
    add-int/lit8 v0, v0, 0x2

    .line 43
    aput v0, v2, v6

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    aput v0, v2, v6

    .line 49
    :goto_30
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .registers 9

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    .line 3
    cmp-long p3, p3, v0

    .line 5
    const/16 p4, 0x7b2

    .line 7
    if-gez p3, :cond_e

    .line 9
    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 11
    int-to-long v0, p3

    .line 12
    :goto_b
    sub-long v0, p1, v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-wide v0, p1

    .line 16
    :goto_f
    const-wide/16 v2, 0x16d

    .line 18
    div-long v2, v0, v2

    .line 20
    long-to-int p3, v2

    .line 21
    if-eqz p3, :cond_1d

    .line 23
    add-int/2addr p4, p3

    .line 24
    int-to-long v0, p4

    .line 25
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    .line 28
    move-result-wide v0

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    const-wide/16 p1, 0x0

    .line 32
    cmp-long p1, v0, p1

    .line 34
    if-gez p1, :cond_2b

    .line 36
    add-int/lit8 p4, p4, -0x1

    .line 38
    invoke-direct {p0, p4}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    .line 41
    move-result p1

    .line 42
    int-to-long p1, p1

    .line 43
    add-long/2addr v0, p1

    .line 44
    :cond_2b
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 46
    const/4 p2, 0x1

    .line 47
    aput p4, p1, p2

    .line 49
    long-to-int p1, v0

    .line 50
    add-int/2addr p1, p2

    .line 51
    return p1
.end method

.method private daysFromBaseYear(J)J
    .registers 16

    .line 1
    const-wide/16 v0, 0x7b2

    .line 3
    cmp-long v2, p1, v0

    .line 5
    const-wide/16 v3, 0x190

    .line 7
    const-wide/16 v5, 0x64

    .line 9
    const-wide/16 v7, 0x4

    .line 11
    const-wide/16 v9, 0x16d

    .line 13
    if-ltz v2, :cond_42

    .line 15
    sub-long v0, p1, v0

    .line 17
    mul-long/2addr v0, v9

    .line 18
    const-wide/16 v9, 0x7b1

    .line 20
    sub-long v9, p1, v9

    .line 22
    div-long/2addr v9, v7

    .line 23
    add-long/2addr v9, v0

    .line 24
    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 26
    int-to-long v1, v0

    .line 27
    cmp-long v1, p1, v1

    .line 29
    if-lez v1, :cond_2a

    .line 31
    const-wide/16 v0, 0x76d

    .line 33
    sub-long v0, p1, v0

    .line 35
    div-long/2addr v0, v5

    .line 36
    const-wide/16 v5, 0x641

    .line 38
    sub-long/2addr p1, v5

    .line 39
    div-long/2addr p1, v3

    .line 40
    sub-long/2addr v0, p1

    .line 41
    sub-long/2addr v9, v0

    .line 42
    goto :goto_41

    .line 43
    :cond_2a
    int-to-long v1, v0

    .line 44
    cmp-long v1, p1, v1

    .line 46
    if-nez v1, :cond_34

    .line 48
    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 50
    :goto_31
    int-to-long p1, p1

    .line 51
    add-long/2addr v9, p1

    .line 52
    goto :goto_41

    .line 53
    :cond_34
    add-int/lit8 v0, v0, -0x1

    .line 55
    int-to-long v0, v0

    .line 56
    cmp-long p1, p1, v0

    .line 58
    if-nez p1, :cond_3e

    .line 60
    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    .line 62
    goto :goto_31

    .line 63
    :cond_3e
    iget p1, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 65
    goto :goto_31

    .line 66
    :goto_41
    return-wide v9

    .line 67
    :cond_42
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 69
    int-to-long v11, v2

    .line 70
    cmp-long v2, p1, v11

    .line 72
    const-wide/16 v11, 0x7b4

    .line 74
    if-gtz v2, :cond_56

    .line 76
    sub-long v0, p1, v0

    .line 78
    mul-long/2addr v0, v9

    .line 79
    sub-long/2addr p1, v11

    .line 80
    div-long/2addr p1, v7

    .line 81
    add-long/2addr p1, v0

    .line 82
    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 84
    int-to-long v0, v0

    .line 85
    add-long/2addr p1, v0

    .line 86
    return-wide p1

    .line 87
    :cond_56
    sub-long v0, p1, v0

    .line 89
    mul-long/2addr v0, v9

    .line 90
    sub-long v9, p1, v11

    .line 92
    div-long/2addr v9, v7

    .line 93
    add-long/2addr v9, v0

    .line 94
    const-wide/16 v0, 0x7d0

    .line 96
    sub-long/2addr p1, v0

    .line 97
    div-long v0, p1, v5

    .line 99
    sub-long/2addr v9, v0

    .line 100
    div-long/2addr p1, v3

    .line 101
    add-long/2addr p1, v9

    .line 102
    return-wide p1
.end method

.method public static daysInChineseMonth(II)I
    .registers 3

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 3
    add-int/lit16 p0, p0, -0x76c

    .line 5
    aget p0, v0, p0

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 9
    const/high16 v0, 0x10000

    .line 11
    shr-int p1, v0, p1

    .line 13
    and-int/2addr p0, p1

    .line 14
    if-eqz p0, :cond_12

    .line 16
    const/16 p0, 0x1e

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    const/16 p0, 0x1d

    .line 21
    :goto_14
    return p0
.end method

.method public static daysInChineseYear(I)I
    .registers 3

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 3
    add-int/lit16 p0, p0, -0x76c

    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 7
    aget v1, v0, v1

    .line 9
    aget p0, v0, p0

    .line 11
    sub-int/2addr v1, p0

    .line 12
    return v1
.end method

.method private static daysInMonth(ZI)I
    .registers 3

    .line 1
    if-eqz p0, :cond_b

    .line 3
    const/4 p0, 0x1

    .line 4
    if-ne p1, p0, :cond_b

    .line 6
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    .line 8
    aget-byte p1, v0, p1

    .line 10
    add-int/2addr p1, p0

    .line 11
    return p1

    .line 12
    :cond_b
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    .line 14
    aget-byte p0, p0, p1

    .line 16
    return p0
.end method

.method private daysInYear(I)I
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    .line 2
    :goto_b
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_12

    .line 3
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v2

    :cond_12
    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_19

    .line 4
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

    .line 5
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p1, v0, p1

    add-int/2addr p1, p0

    return p1

    .line 6
    :cond_b
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p0, p0, p1

    return p0
.end method

.method private getDstOffset(I)I
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aget v4, v0, v1

    .line 6
    const/4 v9, 0x0

    .line 7
    if-gtz v4, :cond_a

    .line 9
    move p1, v9

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v5, 0x5

    .line 15
    aget v5, v0, v5

    .line 17
    const/16 v6, 0x9

    .line 19
    aget v6, v0, v6

    .line 21
    const/16 v7, 0xe

    .line 23
    aget v7, v0, v7

    .line 25
    move v8, p1

    .line 26
    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    .line 29
    move-result p1

    .line 30
    :goto_1d
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 32
    aget v1, v0, v1

    .line 34
    if-lez v1, :cond_29

    .line 36
    const/16 v1, 0x17

    .line 38
    aget v0, v0, v1

    .line 40
    sub-int/2addr p1, v0

    .line 41
    return p1

    .line 42
    :cond_29
    return v9
.end method

.method private static leapChineseMonth(I)I
    .registers 2

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 3
    add-int/lit16 p0, p0, -0x76c

    .line 5
    aget p0, v0, p0

    .line 7
    const/16 v0, 0xf

    .line 9
    and-int/2addr p0, v0

    .line 10
    if-ne p0, v0, :cond_d

    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    add-int/lit8 p0, p0, -0x1

    .line 16
    :goto_f
    return p0
.end method

.method public static leapDaysInChineseYear(I)I
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_19

    .line 7
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 9
    add-int/lit16 p0, p0, -0x76c

    .line 11
    add-int/lit8 p0, p0, 0x1

    .line 13
    aget p0, v0, p0

    .line 15
    const/16 v0, 0xf

    .line 17
    and-int/2addr p0, v0

    .line 18
    if-ne p0, v0, :cond_16

    .line 20
    const/16 p0, 0x1e

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    const/16 p0, 0x1d

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    :goto_1a
    return p0
.end method

.method private static mod(JI)I
    .registers 6

    .line 1
    int-to-long v0, p2

    .line 2
    rem-long v0, p0, v0

    .line 4
    long-to-int v0, v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    cmp-long p0, p0, v1

    .line 9
    if-gez p0, :cond_d

    .line 11
    if-gez v0, :cond_d

    .line 13
    add-int/2addr v0, p2

    .line 14
    :cond_d
    return v0
.end method

.method private onChineseDateChange()V
    .registers 9

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 5
    const/4 v2, 0x2

    .line 6
    aget v1, v1, v2

    .line 8
    add-int/lit16 v1, v1, -0x76c

    .line 10
    aget v0, v0, v1

    .line 12
    int-to-long v0, v0

    .line 13
    const-wide/16 v3, -0x63c1

    .line 15
    add-long/2addr v0, v3

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_10
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 19
    const/4 v5, 0x6

    .line 20
    aget v6, v4, v5

    .line 22
    if-ge v3, v6, :cond_22

    .line 24
    aget v4, v4, v2

    .line 26
    invoke-static {v4, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    add-long/2addr v0, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    const/16 v3, 0x8

    .line 37
    aget v3, v4, v3

    .line 39
    const/4 v7, 0x1

    .line 40
    if-ne v3, v7, :cond_32

    .line 42
    aget v2, v4, v2

    .line 44
    invoke-static {v2, v6}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 47
    move-result v2

    .line 48
    :goto_2f
    int-to-long v2, v2

    .line 49
    add-long/2addr v0, v2

    .line 50
    goto :goto_47

    .line 51
    :cond_32
    aget v3, v4, v2

    .line 53
    invoke-static {v3}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 56
    move-result v3

    .line 57
    if-ltz v3, :cond_47

    .line 59
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 61
    aget v5, v4, v5

    .line 63
    if-ge v3, v5, :cond_47

    .line 65
    aget v2, v4, v2

    .line 67
    invoke-static {v2}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 70
    move-result v2

    .line 71
    goto :goto_2f

    .line 72
    :cond_47
    :goto_47
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 74
    const/16 v3, 0xa

    .line 76
    aget v2, v2, v3

    .line 78
    sub-int/2addr v2, v7

    .line 79
    int-to-long v2, v2

    .line 80
    add-long/2addr v0, v2

    .line 81
    const-wide/16 v2, 0x0

    .line 83
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 86
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    .line 89
    return-void
.end method

.method private onSolarDateChange()V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aget v2, v0, v1

    .line 6
    const/4 v3, 0x5

    .line 7
    aget v3, v0, v3

    .line 9
    const/16 v4, 0x9

    .line 11
    aget v0, v0, v4

    .line 13
    int-to-long v4, v2

    .line 14
    invoke-direct {p0, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    .line 17
    move-result-wide v4

    .line 18
    invoke-virtual {p0, v2}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 21
    move-result v6

    .line 22
    invoke-static {v6, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    .line 25
    move-result v3

    .line 26
    add-int/2addr v3, v0

    .line 27
    sub-int/2addr v3, v1

    .line 28
    int-to-long v6, v3

    .line 29
    add-long/2addr v4, v6

    .line 30
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 32
    const-wide/16 v6, 0x3

    .line 34
    sub-long v6, v4, v6

    .line 36
    const/4 v3, 0x7

    .line 37
    invoke-static {v6, v7, v3}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    .line 40
    move-result v3

    .line 41
    add-int/2addr v3, v1

    .line 42
    const/16 v1, 0xe

    .line 44
    aput v3, v0, v1

    .line 46
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 48
    const/16 v1, 0x12

    .line 50
    aget v1, v0, v1

    .line 52
    const v3, 0x36ee80

    .line 55
    mul-int/2addr v1, v3

    .line 56
    const/16 v3, 0x14

    .line 58
    aget v3, v0, v3

    .line 60
    const v6, 0xea60

    .line 63
    mul-int/2addr v3, v6

    .line 64
    add-int/2addr v3, v1

    .line 65
    const/16 v1, 0x15

    .line 67
    aget v1, v0, v1

    .line 69
    mul-int/lit16 v1, v1, 0x3e8

    .line 71
    add-int/2addr v1, v3

    .line 72
    const/16 v3, 0x16

    .line 74
    aget v0, v0, v3

    .line 76
    add-int/2addr v1, v0

    .line 77
    const-wide/32 v6, 0x5265c00

    .line 80
    mul-long/2addr v4, v6

    .line 81
    int-to-long v0, v1

    .line 82
    add-long/2addr v4, v0

    .line 83
    iput-wide v4, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 85
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 87
    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    .line 90
    move-result v0

    .line 91
    int-to-long v0, v0

    .line 92
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 94
    if-gtz v2, :cond_61

    .line 96
    const-wide/16 v0, 0x0

    .line 98
    :cond_61
    sub-long/2addr v3, v0

    .line 99
    iput-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 101
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 104
    return-void
.end method

.method private safeCompute()V
    .registers 15

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xb9be

    .line 8
    cmp-long v4, v0, v2

    .line 10
    if-lez v4, :cond_1b

    .line 12
    const/16 v6, 0x834

    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1e

    .line 17
    const/4 v9, 0x0

    .line 18
    const/16 v10, 0xc

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    move-object v5, p0

    .line 24
    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 27
    move-wide v0, v2

    .line 28
    :cond_1b
    const-wide/16 v2, -0x63c1

    .line 30
    cmp-long v4, v0, v2

    .line 32
    if-gez v4, :cond_30

    .line 34
    const/16 v6, 0x76c

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x1

    .line 38
    const/4 v9, 0x0

    .line 39
    const/16 v10, 0xc

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    move-object v5, p0

    .line 45
    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 48
    move-wide v0, v2

    .line 49
    :cond_30
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3f

    .line 55
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    .line 58
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    .line 61
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    .line 64
    :cond_3f
    return-void
.end method

.method public static solarTermDaysOfMonth(II)I
    .registers 6

    .line 1
    const/16 v0, 0x834

    .line 3
    if-le p0, v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 9
    add-int/lit16 p0, p0, -0x76c

    .line 11
    aget-byte p0, v0, p0

    .line 13
    add-int/lit8 p0, p0, -0x30

    .line 15
    mul-int/lit8 p1, p1, 0x2

    .line 17
    mul-int/lit8 p0, p0, 0x18

    .line 19
    add-int/2addr p0, p1

    .line 20
    add-int/lit8 v0, p0, 0x1

    .line 22
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    .line 24
    aget-byte p0, v1, p0

    .line 26
    add-int/lit8 p0, p0, -0x30

    .line 28
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 30
    aget v3, v2, p1

    .line 32
    add-int/2addr p0, v3

    .line 33
    aget-byte v0, v1, v0

    .line 35
    add-int/lit8 v0, v0, -0x30

    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 39
    aget p1, v2, p1

    .line 41
    add-int/2addr v0, p1

    .line 42
    shl-int/lit8 p0, p0, 0x8

    .line 44
    add-int/2addr p0, v0

    .line 45
    return p0
.end method


# virtual methods
.method public add(II)Lmiuix/pickerwidget/date/Calendar;
    .registers 16

    .line 1
    if-ltz p1, :cond_261

    .line 3
    const/16 v0, 0x19

    .line 5
    if-ge p1, v0, :cond_261

    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p1, :cond_24b

    .line 12
    const/16 v3, 0x9

    .line 14
    const/4 v4, 0x5

    .line 15
    if-eq p1, v2, :cond_220

    .line 17
    const/16 v5, 0x834

    .line 19
    const/16 v6, 0x76c

    .line 21
    const-string v7, "out of range of Chinese Lunar Year"

    .line 23
    const/16 v8, 0xa

    .line 25
    const/16 v9, 0x8

    .line 27
    const/4 v10, 0x6

    .line 28
    if-eq p1, v0, :cond_1d4

    .line 30
    const/16 v11, 0xc

    .line 32
    if-eq p1, v4, :cond_196

    .line 34
    if-eq p1, v10, :cond_f7

    .line 36
    const-string v0, "out of range"

    .line 38
    if-eq p1, v3, :cond_d4

    .line 40
    if-eq p1, v8, :cond_d4

    .line 42
    if-eq p1, v11, :cond_d4

    .line 44
    const/16 v3, 0xd

    .line 46
    if-eq p1, v3, :cond_d4

    .line 48
    const/16 v3, 0x12

    .line 50
    if-eq p1, v3, :cond_b1

    .line 52
    packed-switch p1, :pswitch_data_26e

    .line 55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v0, "unsupported set field:"

    .line 59
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 63
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 65
    aget-object p1, v1, p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p2

    .line 78
    :pswitch_4d  #0x16
    if-eqz p2, :cond_260

    .line 80
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 82
    int-to-long v5, p2

    .line 83
    add-long/2addr v5, v3

    .line 84
    if-lez p2, :cond_57

    .line 86
    move p1, v2

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move p1, v1

    .line 89
    :goto_58
    cmp-long p2, v5, v3

    .line 91
    if-lez p2, :cond_5d

    .line 93
    move v1, v2

    .line 94
    :cond_5d
    if-ne p1, v1, :cond_66

    .line 96
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 98
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 101
    goto/16 :goto_260

    .line 103
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    :pswitch_6c  #0x15
    if-eqz p2, :cond_260

    .line 111
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 113
    int-to-long v5, p2

    .line 114
    const-wide/16 v7, 0x3e8

    .line 116
    mul-long/2addr v5, v7

    .line 117
    add-long/2addr v5, v3

    .line 118
    if-lez p2, :cond_79

    .line 120
    move p1, v2

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move p1, v1

    .line 123
    :goto_7a
    cmp-long p2, v5, v3

    .line 125
    if-lez p2, :cond_7f

    .line 127
    move v1, v2

    .line 128
    :cond_7f
    if-ne p1, v1, :cond_88

    .line 130
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 132
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 135
    goto/16 :goto_260

    .line 137
    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :pswitch_8e  #0x14
    if-eqz p2, :cond_260

    .line 145
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 147
    int-to-long v5, p2

    .line 148
    const-wide/32 v7, 0xea60

    .line 151
    mul-long/2addr v5, v7

    .line 152
    add-long/2addr v5, v3

    .line 153
    if-lez p2, :cond_9c

    .line 155
    move p1, v2

    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    move p1, v1

    .line 158
    :goto_9d
    cmp-long p2, v5, v3

    .line 160
    if-lez p2, :cond_a2

    .line 162
    move v1, v2

    .line 163
    :cond_a2
    if-ne p1, v1, :cond_ab

    .line 165
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 167
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 170
    goto/16 :goto_260

    .line 172
    :cond_ab
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 174
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p1

    .line 178
    :cond_b1
    if-eqz p2, :cond_260

    .line 180
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 182
    int-to-long v5, p2

    .line 183
    const-wide/32 v7, 0x36ee80

    .line 186
    mul-long/2addr v5, v7

    .line 187
    add-long/2addr v5, v3

    .line 188
    if-lez p2, :cond_bf

    .line 190
    move p1, v2

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move p1, v1

    .line 193
    :goto_c0
    cmp-long p2, v5, v3

    .line 195
    if-lez p2, :cond_c5

    .line 197
    move v1, v2

    .line 198
    :cond_c5
    if-ne p1, v1, :cond_ce

    .line 200
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 202
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 205
    goto/16 :goto_260

    .line 207
    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 209
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p1

    .line 213
    :cond_d4
    if-eqz p2, :cond_260

    .line 215
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 217
    int-to-long v5, p2

    .line 218
    const-wide/32 v7, 0x5265c00

    .line 221
    mul-long/2addr v5, v7

    .line 222
    add-long/2addr v5, v3

    .line 223
    if-lez p2, :cond_e2

    .line 225
    move p1, v2

    .line 226
    goto :goto_e3

    .line 227
    :cond_e2
    move p1, v1

    .line 228
    :goto_e3
    cmp-long p2, v5, v3

    .line 230
    if-lez p2, :cond_e8

    .line 232
    move v1, v2

    .line 233
    :cond_e8
    if-ne p1, v1, :cond_f1

    .line 235
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 237
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 240
    goto/16 :goto_260

    .line 242
    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 244
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    throw p1

    .line 248
    :cond_f7
    if-eqz p2, :cond_260

    .line 250
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 253
    move-result p1

    .line 254
    if-nez p1, :cond_190

    .line 256
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 258
    aget p1, p1, v0

    .line 260
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 263
    move-result p1

    .line 264
    :goto_107
    const/16 v3, 0xb

    .line 266
    if-lez p2, :cond_137

    .line 268
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 270
    aget v11, v4, v10

    .line 272
    if-ne v11, p1, :cond_118

    .line 274
    aget v12, v4, v9

    .line 276
    if-nez v12, :cond_118

    .line 278
    aput v2, v4, v9

    .line 280
    goto :goto_134

    .line 281
    :cond_118
    add-int/lit8 v11, v11, 0x1

    .line 283
    aput v11, v4, v10

    .line 285
    aput v1, v4, v9

    .line 287
    if-le v11, v3, :cond_134

    .line 289
    aput v1, v4, v10

    .line 291
    aget p1, v4, v0

    .line 293
    add-int/2addr p1, v2

    .line 294
    aput p1, v4, v0

    .line 296
    if-gt p1, v5, :cond_12e

    .line 298
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 301
    move-result p1

    .line 302
    goto :goto_134

    .line 303
    :cond_12e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 305
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    throw p1

    .line 309
    :cond_134
    :goto_134
    add-int/lit8 p2, p2, -0x1

    .line 311
    goto :goto_107

    .line 312
    :cond_137
    :goto_137
    if-gez p2, :cond_16e

    .line 314
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 316
    aget v5, v4, v10

    .line 318
    if-ne v5, p1, :cond_146

    .line 320
    aget v11, v4, v9

    .line 322
    if-ne v11, v2, :cond_146

    .line 324
    aput v1, v4, v9

    .line 326
    goto :goto_16b

    .line 327
    :cond_146
    add-int/lit8 v5, v5, -0x1

    .line 329
    aput v5, v4, v10

    .line 331
    if-gez v5, :cond_163

    .line 333
    aput v3, v4, v10

    .line 335
    rsub-int/lit8 p1, v2, 0xb

    .line 337
    aput p1, v4, v10

    .line 339
    aget p1, v4, v0

    .line 341
    if-lt p1, v6, :cond_15d

    .line 343
    aget p1, v4, v2

    .line 345
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 348
    move-result p1

    .line 349
    goto :goto_163

    .line 350
    :cond_15d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 352
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 355
    throw p1

    .line 356
    :cond_163
    :goto_163
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 358
    aget v5, v4, v10

    .line 360
    if-ne v5, p1, :cond_16b

    .line 362
    aput v2, v4, v9

    .line 364
    :cond_16b
    :goto_16b
    add-int/lit8 p2, p2, 0x1

    .line 366
    goto :goto_137

    .line 367
    :cond_16e
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 369
    aget p2, p1, v9

    .line 371
    if-ne p2, v2, :cond_17b

    .line 373
    aget p1, p1, v0

    .line 375
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 378
    move-result p1

    .line 379
    goto :goto_183

    .line 380
    :cond_17b
    aget p2, p1, v0

    .line 382
    aget p1, p1, v10

    .line 384
    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 387
    move-result p1

    .line 388
    :goto_183
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 390
    aget v0, p2, v8

    .line 392
    if-le v0, p1, :cond_18b

    .line 394
    aput p1, p2, v8

    .line 396
    :cond_18b
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    .line 399
    goto/16 :goto_260

    .line 401
    :cond_190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 403
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 406
    throw p1

    .line 407
    :cond_196
    if-eqz p2, :cond_260

    .line 409
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 411
    aget v0, p1, v4

    .line 413
    add-int/2addr p2, v0

    .line 414
    div-int/lit8 v0, p2, 0xc

    .line 416
    rem-int/2addr p2, v11

    .line 417
    if-gez p2, :cond_1a6

    .line 419
    add-int/lit8 p2, p2, 0xc

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 423
    :cond_1a6
    aput p2, p1, v4

    .line 425
    if-nez v0, :cond_1cf

    .line 427
    aget p2, p1, v1

    .line 429
    if-nez p2, :cond_1b4

    .line 431
    aget p2, p1, v2

    .line 433
    rsub-int/lit8 p2, p2, -0x1

    .line 435
    aput p2, p1, v2

    .line 437
    :cond_1b4
    aget p1, p1, v2

    .line 439
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 442
    move-result p1

    .line 443
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 445
    aget p2, p2, v4

    .line 447
    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    .line 450
    move-result p1

    .line 451
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 453
    aget v0, p2, v3

    .line 455
    if-le v0, p1, :cond_1ca

    .line 457
    aput p1, p2, v3

    .line 459
    :cond_1ca
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    .line 462
    goto/16 :goto_260

    .line 464
    :cond_1cf
    invoke-virtual {p0, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 467
    goto/16 :goto_260

    .line 469
    :cond_1d4
    if-eqz p2, :cond_260

    .line 471
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 473
    aget p1, p1, v0

    .line 475
    add-int/2addr p2, p1

    .line 476
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 479
    move-result p1

    .line 480
    if-nez p1, :cond_21a

    .line 482
    if-lt p2, v6, :cond_21a

    .line 484
    if-gt p2, v5, :cond_21a

    .line 486
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 488
    aput p2, p1, v0

    .line 490
    aget v3, p1, v9

    .line 492
    if-ne v3, v2, :cond_1f9

    .line 494
    aget p1, p1, v10

    .line 496
    invoke-static {p2}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 499
    move-result p2

    .line 500
    if-ne p1, p2, :cond_1f9

    .line 502
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 504
    aput v1, p1, v9

    .line 506
    :cond_1f9
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 508
    aget p2, p1, v9

    .line 510
    if-ne p2, v2, :cond_206

    .line 512
    aget p1, p1, v0

    .line 514
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 517
    move-result p1

    .line 518
    goto :goto_20e

    .line 519
    :cond_206
    aget p2, p1, v0

    .line 521
    aget p1, p1, v10

    .line 523
    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 526
    move-result p1

    .line 527
    :goto_20e
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 529
    aget v0, p2, v8

    .line 531
    if-le v0, p1, :cond_216

    .line 533
    aput p1, p2, v8

    .line 535
    :cond_216
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    .line 538
    goto :goto_260

    .line 539
    :cond_21a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 541
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 544
    throw p1

    .line 545
    :cond_220
    if-eqz p2, :cond_260

    .line 547
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 549
    aget v0, p1, v1

    .line 551
    if-nez v0, :cond_22e

    .line 553
    aget v0, p1, v2

    .line 555
    rsub-int/lit8 v0, v0, -0x1

    .line 557
    aput v0, p1, v2

    .line 559
    :cond_22e
    aget v0, p1, v2

    .line 561
    add-int/2addr v0, p2

    .line 562
    aput v0, p1, v2

    .line 564
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 567
    move-result p1

    .line 568
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 570
    aget p2, p2, v4

    .line 572
    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    .line 575
    move-result p1

    .line 576
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 578
    aget v0, p2, v3

    .line 580
    if-le v0, p1, :cond_247

    .line 582
    aput p1, p2, v3

    .line 584
    :cond_247
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    .line 587
    goto :goto_260

    .line 588
    :cond_24b
    if-eqz p2, :cond_260

    .line 590
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 592
    aget v1, p1, v1

    .line 594
    add-int/2addr p2, v1

    .line 595
    rem-int/2addr p2, v0

    .line 596
    if-eq v1, p2, :cond_260

    .line 598
    if-nez v1, :cond_260

    .line 600
    aget p2, p1, v2

    .line 602
    rsub-int/lit8 p2, p2, -0x1

    .line 604
    aput p2, p1, v2

    .line 606
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    .line 609
    :cond_260
    :goto_260
    return-object p0

    .line 610
    :cond_261
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 612
    const-string v0, "Field out of range [0-25]: "

    .line 614
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 617
    move-result-object p1

    .line 618
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 621
    throw p2

    .line 622
    nop

    .line 623
    :pswitch_data_26e
    .packed-switch 0x14
        :pswitch_8e  #00000014
        :pswitch_6c  #00000015
        :pswitch_4d  #00000016
    .end packed-switch
.end method

.method public after(Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 8
    move-result-wide v2

    .line 9
    cmp-long p1, v0, v2

    .line 11
    if-lez p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public before(Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 8
    move-result-wide v2

    .line 9
    cmp-long p1, v0, v2

    .line 11
    if-gez p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    .line 7
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 9
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, [I

    .line 15
    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 17
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 19
    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/TimeZone;

    .line 25
    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    return-object v0

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->compareTo(Lmiuix/pickerwidget/date/Calendar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiuix/pickerwidget/date/Calendar;)I
    .registers 6

    .line 2
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

    .line 1
    if-eq p1, p0, :cond_13

    .line 3
    instance-of v0, p1, Lmiuix/pickerwidget/date/Calendar;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 9
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    .line 11
    iget-wide v2, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 13
    cmp-long p1, v0, v2

    .line 15
    if-nez p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;
    .registers 5

    .line 2
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p2

    invoke-interface {p2, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 5

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .registers 15

    if-nez p4, :cond_6

    .line 6
    invoke-static {p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object p4

    .line 7
    :cond_6
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v6, 0x0

    move v0, v6

    move v7, v0

    :goto_d
    if-ge v0, p1, :cond_72

    .line 8
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v1, 0x27

    const/4 v8, 0x1

    if-eqz v7, :cond_2e

    if-ne v3, v1, :cond_2a

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_28

    .line 9
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_28

    .line 10
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_28
    move v7, v6

    goto :goto_70

    .line 11
    :cond_2a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_2e
    if-ne v3, v1, :cond_41

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_3f

    .line 12
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3f

    .line 13
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

    .line 14
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v2, v3, -0x41

    aget v1, v1, v2

    if-ltz v1, :cond_6d

    move v9, v0

    move v4, v8

    :goto_53
    add-int/lit8 v0, v9, 0x1

    if-ge v0, p1, :cond_61

    .line 15
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_61

    add-int/lit8 v4, v4, 0x1

    move v9, v0

    goto :goto_53

    .line 16
    :cond_61
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    aget v5, v0, v2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/pickerwidget/date/Calendar;->appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V

    move v0, v9

    goto :goto_70

    .line 17
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

    .line 1
    if-ltz p1, :cond_b

    .line 3
    const/16 v0, 0x19

    .line 5
    if-ge p1, v0, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 9
    aget p1, v0, p1

    .line 11
    return p1

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v1, "Field out of range [0-25]: "

    .line 16
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public getActualMaximum(I)I
    .registers 8

    .line 1
    if-ltz p1, :cond_98

    .line 3
    const/16 v0, 0x19

    .line 5
    if-ge p1, v0, :cond_98

    .line 7
    const/4 v0, 0x6

    .line 8
    const/16 v1, 0xb

    .line 10
    const/4 v2, 0x2

    .line 11
    const/16 v3, 0x3b

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    packed-switch p1, :pswitch_data_a4

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v1, "unsupported field: "

    .line 22
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 28
    aget-object p1, v2, p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :pswitch_28  #0x16
    const/16 p1, 0x3e7

    .line 43
    return p1

    .line 44
    :pswitch_2b  #0x14, 0x15
    return v3

    .line 45
    :pswitch_2c  #0x12
    const/16 p1, 0x17

    .line 47
    return p1

    .line 48
    :pswitch_2f  #0x11
    return v5

    .line 49
    :pswitch_30  #0x10
    return v0

    .line 50
    :pswitch_31  #0xf
    const/16 p1, 0x18

    .line 52
    return p1

    .line 53
    :pswitch_34  #0xe
    const/4 p1, 0x7

    .line 54
    return p1

    .line 55
    :pswitch_36  #0xd
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3d

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 64
    aget p1, p1, v2

    .line 66
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    .line 69
    move-result v4

    .line 70
    :goto_45
    return v4

    .line 71
    :pswitch_46  #0xc
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 73
    aget p1, p1, v5

    .line 75
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :pswitch_4f  #0xa
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_56

    .line 86
    goto :goto_6f

    .line 87
    :cond_56
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_65

    .line 93
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 95
    aget p1, p1, v2

    .line 97
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 100
    move-result v4

    .line 101
    goto :goto_6f

    .line 102
    :cond_65
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 104
    aget v1, p1, v2

    .line 106
    aget p1, p1, v0

    .line 108
    invoke-static {v1, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 111
    move-result v4

    .line 112
    :goto_6f
    return v4

    .line 113
    :pswitch_70  #0x9
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 115
    aget p1, p1, v5

    .line 117
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 120
    move-result p1

    .line 121
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 123
    const/4 v1, 0x5

    .line 124
    aget v0, v0, v1

    .line 126
    invoke-static {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :pswitch_82  #0x8
    return v5

    .line 132
    :pswitch_83  #0x5, 0x6
    return v1

    .line 133
    :pswitch_84  #0x4, 0x7, 0xb, 0x13
    return v3

    .line 134
    :pswitch_85  #0x3
    return v1

    .line 135
    :pswitch_86  #0x2
    const/16 p1, 0x834

    .line 137
    return p1

    .line 138
    :pswitch_89  #0x1
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 140
    aget p1, p1, v4

    .line 142
    if-ne p1, v5, :cond_93

    .line 144
    const p1, 0x116bd2d2

    .line 147
    goto :goto_96

    .line 148
    :cond_93
    const p1, 0x116babff

    .line 151
    :goto_96
    return p1

    .line 152
    :pswitch_97  #0x0
    return v5

    .line 153
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    const-string v1, "Field out of range [0-25]: "

    .line 157
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    throw v0

    .line 165
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

    .line 1
    if-ltz p1, :cond_37

    .line 3
    const/16 v0, 0x19

    .line 5
    if-ge p1, v0, :cond_37

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    packed-switch p1, :pswitch_data_44

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v1, "unsupported field: "

    .line 16
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 22
    aget-object p1, v2, p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    :pswitch_22  #0xf, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16
    return v1

    .line 36
    :pswitch_23  #0xe
    return v0

    .line 37
    :pswitch_24  #0xd
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 40
    move-result p1

    .line 41
    :goto_28
    xor-int/2addr p1, v0

    .line 42
    return p1

    .line 43
    :pswitch_2a  #0xc
    return v0

    .line 44
    :pswitch_2b  #0xa
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 47
    move-result p1

    .line 48
    goto :goto_28

    .line 49
    :pswitch_30  #0x9
    return v0

    .line 50
    :pswitch_31  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xb, 0x13
    return v1

    .line 51
    :pswitch_32  #0x2
    const/16 p1, 0x76c

    .line 53
    return p1

    .line 54
    :pswitch_35  #0x1
    return v0

    .line 55
    :pswitch_36  #0x0
    return v1

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v1, "Field out of range [0-25]: "

    .line 60
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    nop

    .line 69
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

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 6
    invoke-static {v0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getTimeInMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 3
    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 3
    const/16 v2, 0x20

    .line 5
    ushr-long v2, v0, v2

    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    return v0
.end method

.method public isChineseLeapMonth()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 3
    const/16 v1, 0x8

    .line 5
    aget v0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public isLeapYear(I)Z
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-le p1, v0, :cond_15

    .line 7
    rem-int/lit8 v0, p1, 0x4

    .line 9
    if-nez v0, :cond_13

    .line 11
    rem-int/lit8 v0, p1, 0x64

    .line 13
    if-nez v0, :cond_14

    .line 15
    rem-int/lit16 p1, p1, 0x190

    .line 17
    if-nez p1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v2

    .line 21
    :cond_14
    :goto_14
    return v1

    .line 22
    :cond_15
    rem-int/lit8 p1, p1, 0x4

    .line 24
    if-nez p1, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v2

    .line 28
    :goto_1b
    return v1
.end method

.method public outOfChineseCalendarRange()Z
    .registers 9

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 3
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 5
    const/16 v3, 0x17

    .line 7
    aget v3, v2, v3

    .line 9
    int-to-long v4, v3

    .line 10
    const-wide v6, -0x201b77f5c00L

    .line 15
    sub-long/2addr v6, v4

    .line 16
    const/16 v4, 0x18

    .line 18
    aget v2, v2, v4

    .line 20
    int-to-long v4, v2

    .line 21
    sub-long/2addr v6, v4

    .line 22
    cmp-long v4, v0, v6

    .line 24
    if-ltz v4, :cond_29

    .line 26
    const-wide v4, 0x3c314a71400L

    .line 31
    int-to-long v6, v3

    .line 32
    sub-long/2addr v4, v6

    .line 33
    int-to-long v2, v2

    .line 34
    sub-long/2addr v4, v2

    .line 35
    cmp-long v0, v0, v4

    .line 37
    if-ltz v0, :cond_27

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 43
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

    .line 53
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    if-ne p2, p1, :cond_1f

    .line 54
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v4, p1, v5

    goto :goto_75

    .line 55
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "year "

    .line 56
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
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

    .line 58
    :cond_3e
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v7

    if-ge p2, v7, :cond_70

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v7

    if-gt p2, v7, :cond_4b

    goto :goto_70

    .line 59
    :cond_4b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 60
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_70
    :goto_70
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x0

    aput v0, p1, v5

    .line 64
    :goto_75
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v3

    .line 65
    aget v0, p1, v5

    if-ne v0, v4, :cond_84

    .line 66
    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_8a

    .line 67
    :cond_84
    aget p1, p1, v6

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 68
    :goto_8a
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0xa

    aget v1, p2, v0

    if-le v1, p1, :cond_94

    .line 69
    aput p1, p2, v0

    .line 70
    :cond_94
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-object p0

    .line 71
    :cond_98
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v3

    if-ge p2, v3, :cond_ca

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt p2, v3, :cond_a5

    goto :goto_ca

    .line 72
    :cond_a5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 73
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
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

    .line 77
    :catch_d3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported set field:"

    .line 78
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
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

    .line 1
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

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x5

    .line 3
    aput p2, v0, p1

    const/16 p1, 0x9

    .line 4
    aput p3, v0, p1

    const/16 p1, 0x12

    .line 5
    aput p4, v0, p1

    const/16 p1, 0x14

    .line 6
    aput p5, v0, p1

    const/16 p1, 0x15

    .line 7
    aput p6, v0, p1

    const/16 p1, 0x16

    .line 8
    aput p7, v0, p1

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-object p0

    .line 10
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid millisecond "

    .line 11
    invoke-static {p2, p7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid second "

    .line 14
    invoke-static {p2, p6}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid minute "

    .line 17
    invoke-static {p2, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid hour "

    .line 20
    invoke-static {p2, p4}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_7a
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string p5, " month "

    const-string p6, " has no day "

    .line 23
    invoke-static {v0, p1, p5, p2, p6}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 25
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

    .line 1
    const/16 v0, 0x76c

    .line 3
    if-lt p1, v0, :cond_f6

    .line 5
    const/16 v0, 0x834

    .line 7
    if-gt p1, v0, :cond_f6

    .line 9
    const-string v0, "Year "

    .line 11
    if-ltz p2, :cond_d9

    .line 13
    const/16 v1, 0xb

    .line 15
    if-gt p2, v1, :cond_d9

    .line 17
    if-eqz p4, :cond_36

    .line 19
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 22
    move-result v1

    .line 23
    if-ne v1, p2, :cond_19

    .line 25
    goto :goto_36

    .line 26
    :cond_19
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, " has no leap month "

    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p3

    .line 55
    :cond_36
    :goto_36
    const-string v1, " has no day "

    .line 57
    const-string v2, " month "

    .line 59
    if-eqz p4, :cond_56

    .line 61
    if-lez p3, :cond_45

    .line 63
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 66
    move-result v3

    .line 67
    if-gt p3, v3, :cond_45

    .line 69
    goto :goto_5e

    .line 70
    :cond_45
    new-instance p4, Ljava/lang/IllegalArgumentException;

    .line 72
    invoke-static {v0, p1, v2, p2, v1}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p4

    .line 87
    :cond_56
    if-lez p3, :cond_c8

    .line 89
    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 92
    move-result v3

    .line 93
    if-gt p3, v3, :cond_c8

    .line 95
    :goto_5e
    if-ltz p5, :cond_bc

    .line 97
    const/16 v0, 0x17

    .line 99
    if-gt p5, v0, :cond_bc

    .line 101
    if-ltz p6, :cond_b0

    .line 103
    const/16 v0, 0x3b

    .line 105
    if-gt p6, v0, :cond_b0

    .line 107
    if-ltz p7, :cond_a4

    .line 109
    if-gt p7, v0, :cond_a4

    .line 111
    if-ltz p8, :cond_98

    .line 113
    const/16 v0, 0x3e8

    .line 115
    if-gt p8, v0, :cond_98

    .line 117
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 119
    const/4 v1, 0x2

    .line 120
    aput p1, v0, v1

    .line 122
    const/4 p1, 0x6

    .line 123
    aput p2, v0, p1

    .line 125
    const/16 p1, 0xa

    .line 127
    aput p3, v0, p1

    .line 129
    const/16 p1, 0x8

    .line 131
    aput p4, v0, p1

    .line 133
    const/16 p1, 0x12

    .line 135
    aput p5, v0, p1

    .line 137
    const/16 p1, 0x14

    .line 139
    aput p6, v0, p1

    .line 141
    const/16 p1, 0x15

    .line 143
    aput p7, v0, p1

    .line 145
    const/16 p1, 0x16

    .line 147
    aput p8, v0, p1

    .line 149
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    .line 152
    return-object p0

    .line 153
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 155
    const-string p2, "Invalid millisecond "

    .line 157
    invoke-static {p2, p8}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    throw p1

    .line 165
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    const-string p2, "Invalid second "

    .line 169
    invoke-static {p2, p7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p1

    .line 177
    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    const-string p2, "Invalid minute "

    .line 181
    invoke-static {p2, p6}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p1

    .line 189
    :cond_bc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 191
    const-string p2, "Invalid hour "

    .line 193
    invoke-static {p2, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 196
    move-result-object p2

    .line 197
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p1

    .line 201
    :cond_c8
    new-instance p4, Ljava/lang/IllegalArgumentException;

    .line 203
    invoke-static {v0, p1, v2, p2, v1}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    throw p4

    .line 218
    :cond_d9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 220
    new-instance p4, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string p1, " has no month "

    .line 233
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    throw p3

    .line 247
    :cond_f6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 249
    const-string p3, "Date out of range [1900 - 2100] expected, but year is "

    .line 251
    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 258
    throw p2
.end method

.method public setGregorianChange(J)V
    .registers 7

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    .line 3
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 5
    const-string v1, "GMT"

    .line 7
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 14
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {v0, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_24

    .line 31
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 33
    rsub-int/lit8 v1, v1, 0x1

    .line 35
    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 37
    :cond_24
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 39
    div-int/lit8 v2, v1, 0x64

    .line 41
    div-int/lit16 v3, v1, 0x190

    .line 43
    sub-int/2addr v2, v3

    .line 44
    add-int/lit8 v2, v2, -0x2

    .line 46
    iput v2, p0, Lmiuix/pickerwidget/date/Calendar;->julianError:I

    .line 48
    add-int/lit16 v3, v1, -0x7d0

    .line 50
    div-int/lit16 v3, v3, 0x190

    .line 52
    add-int/2addr v3, v2

    .line 53
    add-int/lit16 v1, v1, -0x7d0

    .line 55
    div-int/lit8 v1, v1, 0x64

    .line 57
    sub-int/2addr v3, v1

    .line 58
    iput v3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 60
    const/16 v1, 0xc

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 65
    move-result v0

    .line 66
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 68
    if-ge v0, v1, :cond_4e

    .line 70
    add-int/lit8 p2, v0, -0x1

    .line 72
    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 74
    sub-int/2addr v1, v0

    .line 75
    add-int/2addr v1, p1

    .line 76
    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    iput p2, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    .line 81
    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 83
    :goto_52
    return-void
.end method

.method public setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;
    .registers 4

    .line 1
    if-nez p3, :cond_6

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 6
    return-object p0

    .line 7
    :cond_6
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->safeCompute()V

    .line 12
    return-object p0
.end method

.method public setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 6
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;
    .registers 4

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 6
    move-result-object p1

    .line 7
    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1d

    .line 25
    :cond_18
    iput-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 27
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 30
    :cond_1d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "[time"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ",zone="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 39
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_2e
    const/16 v2, 0x19

    .line 49
    if-ge v1, v2, :cond_4d

    .line 51
    const/16 v2, 0x2c

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 58
    aget-object v2, v2, v1

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v2, 0x3d

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 70
    aget v2, v2, v1

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_2e

    .line 78
    :cond_4d
    const/16 v1, 0x5d

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 94
    return-object v1
.end method
