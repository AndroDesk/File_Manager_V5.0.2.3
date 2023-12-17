.class public interface abstract Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;
.super Ljava/lang/Object;
.source "VorbisHeader.java"


# static fields
.field public static final CAPTURE_PATTERN:Ljava/lang/String; = "vorbis"

.field public static final CAPTURE_PATTERN_AS_BYTES:[B

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final FIELD_CAPTURE_PATTERN_LENGTH:I = 0x6

.field public static final FIELD_CAPTURE_PATTERN_POS:I = 0x1

.field public static final FIELD_PACKET_TYPE_LENGTH:I = 0x1

.field public static final FIELD_PACKET_TYPE_POS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;->CAPTURE_PATTERN_AS_BYTES:[B

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 1
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
    .end array-data
.end method
