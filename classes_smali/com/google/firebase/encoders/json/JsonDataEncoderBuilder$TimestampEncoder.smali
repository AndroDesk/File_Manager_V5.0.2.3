.class final Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ValueEncoder<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final rfc339:Ljava/text/DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 7
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;->rfc339:Ljava/text/DateFormat;

    .line 12
    const-string v1, "UTC"

    .line 14
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Date;

    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;->encode(Ljava/util/Date;Lcom/google/firebase/encoders/ValueEncoderContext;)V

    return-void
.end method

.method public encode(Ljava/util/Date;Lcom/google/firebase/encoders/ValueEncoderContext;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;->rfc339:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;

    return-void
.end method
