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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "ddMM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "HHmm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "-MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "\'T\'HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "\'T\'HH"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;)V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TDAT"

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->isMonthOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    const-string p1, ""

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;)V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TIME"

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->isHoursOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;)V
    .registers 4

    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    const-string v1, "TYER"

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private extractID3v23Formats(Ljava/util/Date;I)V
    .registers 6

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string v1, "Precision is:"

    const-string v2, "for date:"

    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_24

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_24
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_39

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    goto :goto_95

    :cond_39
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4b

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    goto :goto_95

    :cond_4b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_66

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    goto :goto_95

    :cond_66
    if-ne p2, v1, :cond_7e

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    goto :goto_95

    :cond_7e
    if-nez p2, :cond_95

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method private findMatchingMaskAndExtractV3Values()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_64

    :try_start_9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_10} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_28

    :try_start_10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_25

    if-eqz v1, :cond_61

    :try_start_21
    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->extractID3v23Formats(Ljava/util/Date;I)V
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_21 .. :try_end_24} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_24} :catch_28

    goto :goto_64

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/text/ParseException; {:try_start_27 .. :try_end_28} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception v1

    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Date Formatter:"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "failed to parse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_61
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_64
    :goto_64
    return-void
.end method

.method private static declared-synchronized formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_29

    :catch_f
    :try_start_f
    sget-object p0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string p0, ""
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_d

    monitor-exit v0

    return-object p0

    :goto_29
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedText()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_27

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_43
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_50
    :goto_50
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_79

    :cond_6c
    sget-object v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_79
    :goto_79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "TDRC"

    return-object v0
.end method

.method public getOriginalID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isHoursOnly()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return v0
.end method

.method public isMonthOnly()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting date to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    return-void
.end method

.method public setHoursOnly(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public setMonthOnly(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting year to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    return-void
.end method
