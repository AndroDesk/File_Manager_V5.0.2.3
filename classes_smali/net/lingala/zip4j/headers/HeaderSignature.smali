.class public final enum Lnet/lingala/zip4j/headers/HeaderSignature;
.super Ljava/lang/Enum;
.source "HeaderSignature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/HeaderSignature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final synthetic a:[Lnet/lingala/zip4j/headers/HeaderSignature;


# instance fields
.field private value:J


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 1
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 3
    const-string v1, "LOCAL_FILE_HEADER"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide/32 v3, 0x4034b50

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 12
    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 14
    new-instance v1, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 16
    const-string v3, "EXTRA_DATA_RECORD"

    .line 18
    const/4 v4, 0x1

    .line 19
    const-wide/32 v5, 0x8074b50

    .line 22
    invoke-direct {v1, v3, v4, v5, v6}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 25
    sput-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 27
    new-instance v3, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 29
    const-string v7, "CENTRAL_DIRECTORY"

    .line 31
    const/4 v8, 0x2

    .line 32
    const-wide/32 v9, 0x2014b50  # 1.6619997E-316

    .line 35
    invoke-direct {v3, v7, v8, v9, v10}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 38
    sput-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 40
    new-instance v7, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 42
    const-string v9, "END_OF_CENTRAL_DIRECTORY"

    .line 44
    const/4 v10, 0x3

    .line 45
    const-wide/32 v11, 0x6054b50

    .line 48
    invoke-direct {v7, v9, v10, v11, v12}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 51
    sput-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 53
    new-instance v9, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 55
    const-string v11, "TEMPORARY_SPANNING_MARKER"

    .line 57
    const/4 v12, 0x4

    .line 58
    const-wide/32 v13, 0x30304b50

    .line 61
    invoke-direct {v9, v11, v12, v13, v14}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 64
    sput-object v9, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 66
    new-instance v11, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 68
    const-string v13, "DIGITAL_SIGNATURE"

    .line 70
    const/4 v14, 0x5

    .line 71
    move-object/from16 v16, v9

    .line 73
    const-wide/32 v8, 0x5054b50

    .line 76
    invoke-direct {v11, v13, v14, v8, v9}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 79
    sput-object v11, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 81
    new-instance v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 83
    const-string v9, "ARCEXTDATREC"

    .line 85
    const/4 v13, 0x6

    .line 86
    const-wide/32 v14, 0x8064b50

    .line 89
    invoke-direct {v8, v9, v13, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 92
    sput-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 94
    new-instance v9, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 96
    const-string v14, "SPLIT_ZIP"

    .line 98
    const/4 v15, 0x7

    .line 99
    invoke-direct {v9, v14, v15, v5, v6}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 102
    sput-object v9, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 104
    new-instance v5, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 106
    const-string v6, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    .line 108
    const/16 v14, 0x8

    .line 110
    const-wide/32 v12, 0x7064b50

    .line 113
    invoke-direct {v5, v6, v14, v12, v13}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 116
    sput-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 118
    new-instance v6, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 120
    const-string v12, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    .line 122
    const/16 v13, 0x9

    .line 124
    const-wide/32 v14, 0x6064b50

    .line 127
    invoke-direct {v6, v12, v13, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 130
    sput-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 132
    new-instance v12, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 134
    const-string v14, "ZIP64_EXTRA_FIELD_SIGNATURE"

    .line 136
    const/16 v15, 0xa

    .line 138
    move-object/from16 v17, v11

    .line 140
    const-wide/16 v10, 0x1

    .line 142
    invoke-direct {v12, v14, v15, v10, v11}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 145
    sput-object v12, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 147
    new-instance v10, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 149
    const-string v11, "AES_EXTRA_DATA_RECORD"

    .line 151
    const/16 v14, 0xb

    .line 153
    move-object/from16 v18, v5

    .line 155
    const-wide/32 v4, 0x9901

    .line 158
    invoke-direct {v10, v11, v14, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    .line 161
    sput-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 163
    const/16 v4, 0xc

    .line 165
    new-array v4, v4, [Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 167
    aput-object v0, v4, v2

    .line 169
    const/4 v0, 0x1

    .line 170
    aput-object v1, v4, v0

    .line 172
    const/4 v0, 0x2

    .line 173
    aput-object v3, v4, v0

    .line 175
    const/4 v0, 0x3

    .line 176
    aput-object v7, v4, v0

    .line 178
    const/4 v0, 0x4

    .line 179
    aput-object v16, v4, v0

    .line 181
    const/4 v0, 0x5

    .line 182
    aput-object v17, v4, v0

    .line 184
    const/4 v0, 0x6

    .line 185
    aput-object v8, v4, v0

    .line 187
    const/4 v0, 0x7

    .line 188
    aput-object v9, v4, v0

    .line 190
    const/16 v0, 0x8

    .line 192
    aput-object v18, v4, v0

    .line 194
    aput-object v6, v4, v13

    .line 196
    aput-object v12, v4, v15

    .line 198
    aput-object v10, v4, v14

    .line 200
    sput-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->a:[Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-wide p3, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/HeaderSignature;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/HeaderSignature;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->a:[Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/HeaderSignature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    .line 3
    return-wide v0
.end method
