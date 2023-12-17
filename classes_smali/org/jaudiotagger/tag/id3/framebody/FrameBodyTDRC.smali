.class public Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTDRC.java"

# interfaces
.implements Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static final PRECISION_DAY:I = 0x3

.field private static final PRECISION_HOUR:I = 0x2

.field private static final PRECISION_MINUTE:I = 0x1

.field private static final PRECISION_MONTH:I = 0x4

.field private static final PRECISION_SECOND:I = 0x0

.field private static final PRECISION_YEAR:I = 0x5

.field private static formatDateIn:Ljava/text/SimpleDateFormat;

.field private static formatDateOut:Ljava/text/SimpleDateFormat;

.field private static formatHoursOut:Ljava/text/SimpleDateFormat;

.field private static formatMonthOut:Ljava/text/SimpleDateFormat;

.field private static formatTimeIn:Ljava/text/SimpleDateFormat;

.field private static formatTimeOut:Ljava/text/SimpleDateFormat;

.field private static formatYearIn:Ljava/text/SimpleDateFormat;

.field private static formatYearOut:Ljava/text/SimpleDateFormat;

.field private static final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private hoursOnly:Z

.field private monthOnly:Z

.field private originalID:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 10
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 12
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 14
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 22
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 24
    const-string v3, "yyyy-MM-dd\'T\'HH:mm"

    .line 26
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 34
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 36
    const-string v3, "yyyy-MM-dd\'T\'HH"

    .line 38
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 46
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 48
    const-string v3, "yyyy-MM-dd"

    .line 50
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 58
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 60
    const-string v3, "yyyy-MM"

    .line 62
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 70
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 72
    const-string v3, "yyyy"

    .line 74
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 82
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 84
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 91
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 93
    const-string v2, "ddMM"

    .line 95
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 98
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 102
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 104
    const-string v2, "HHmm"

    .line 106
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 113
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 115
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 122
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 124
    const-string v2, "-MM-dd"

    .line 126
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 129
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 133
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 135
    const-string v2, "-MM"

    .line 137
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 140
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 144
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 146
    const-string v2, "\'T\'HH:mm"

    .line 148
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 151
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 155
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 157
    const-string v2, "\'T\'HH"

    .line 159
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 162
    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 6
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 50
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 51
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    const-string p1, ""

    .line 53
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 57
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 58
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 39
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TDAT"

    .line 40
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->isMonthOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    .line 43
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;)V
    .registers 2

    .line 7
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 12
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 28
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TIME"

    .line 29
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->isHoursOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    .line 32
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 18
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TYER"

    .line 19
    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private extractID3v23Formats(Ljava/util/Date;I)V
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Precision is:"

    .line 5
    const-string v2, "for date:"

    .line 7
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x5

    .line 26
    if-ne p2, v0, :cond_24

    .line 28
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 35
    goto/16 :goto_95

    .line 37
    :cond_24
    const/4 v0, 0x4

    .line 38
    const/4 v1, 0x1

    .line 39
    if-ne p2, v0, :cond_39

    .line 41
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 55
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 57
    goto :goto_95

    .line 58
    :cond_39
    const/4 v0, 0x3

    .line 59
    if-ne p2, v0, :cond_4b

    .line 61
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 75
    goto :goto_95

    .line 76
    :cond_4b
    const/4 v0, 0x2

    .line 77
    if-ne p2, v0, :cond_66

    .line 79
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 100
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 102
    goto :goto_95

    .line 103
    :cond_66
    if-ne p2, v1, :cond_7e

    .line 105
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 126
    goto :goto_95

    .line 127
    :cond_7e
    if-nez p2, :cond_95

    .line 129
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 150
    :cond_95
    :goto_95
    return-void
.end method

.method private findMatchingMaskAndExtractV3Values()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_64

    .line 10
    :try_start_9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 16
    monitor-enter v2
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_10} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_28

    .line 17
    :try_start_10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 30
    move-result-object v1

    .line 31
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_25

    .line 32
    if-eqz v1, :cond_61

    .line 34
    :try_start_21
    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->extractID3v23Formats(Ljava/util/Date;I)V
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_21 .. :try_end_24} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_24} :catch_28

    .line 37
    goto :goto_64

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .line 40
    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/text/ParseException; {:try_start_27 .. :try_end_28} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_28} :catch_28

    .line 41
    :catch_28
    move-exception v1

    .line 42
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 44
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 46
    const-string v4, "Date Formatter:"

    .line 48
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    .line 54
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Ljava/text/SimpleDateFormat;

    .line 60
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, "failed to parse:"

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v5, "with "

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :catch_61
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_64
    :goto_64
    return-void
.end method

.method private static declared-synchronized formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    move-result-object p0
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    goto :goto_29

    .line 16
    :catch_f
    :try_start_f
    sget-object p0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "Unable to parse:"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 38
    const-string p0, ""
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_d

    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :goto_29
    monitor-exit v0

    .line 43
    throw p0
.end method

.method private static declared-synchronized formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    .line 6
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method

.method private static declared-synchronized formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    .line 6
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method

.method private static declared-synchronized formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    .line 6
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFormattedText()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 8
    if-nez v1, :cond_e

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 17
    const-string v2, ""

    .line 19
    if-eqz v1, :cond_27

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_27

    .line 27
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    .line 29
    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    .line 31
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 33
    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_27
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_50

    .line 48
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_43

    .line 54
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    .line 56
    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    .line 58
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 60
    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    goto :goto_50

    .line 68
    :cond_43
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    .line 70
    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    .line 72
    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 74
    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_50
    :goto_50
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_79

    .line 89
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_6c

    .line 95
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    .line 97
    sget-object v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    .line 99
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    goto :goto_79

    .line 109
    :cond_6c
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    .line 111
    sget-object v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    .line 113
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 115
    invoke-static {v1, v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_79
    :goto_79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TDRC"

    return-object v0
.end method

.method public getOriginalID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isHoursOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 3
    return v0
.end method

.method public isMonthOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 3
    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Setting date to:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setHoursOnly(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 3
    return-void
.end method

.method public setMonthOnly(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 3
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Setting time to:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Setting year to"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 25
    return-void
.end method
