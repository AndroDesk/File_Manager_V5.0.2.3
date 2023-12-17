.class public final enum Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
.super Ljava/lang/Enum;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderTypeFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum END_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum FRESH_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum START_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;


# instance fields
.field public fileValue:B


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 3
    const-string v1, "FRESH_PACKET"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 11
    new-instance v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 13
    const-string v3, "CONTINUED_PACKET"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 21
    new-instance v3, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 23
    const-string v5, "START_OF_BITSTREAM"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 31
    new-instance v5, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 33
    const-string v7, "END_OF_BITSTREAM"

    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v5, v7, v8, v9}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    .line 40
    sput-object v5, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 42
    new-array v7, v9, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getFileValue()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    .line 3
    return v0
.end method
