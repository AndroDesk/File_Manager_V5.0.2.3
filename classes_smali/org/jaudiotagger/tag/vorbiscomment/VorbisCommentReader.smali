.class public Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;
.super Ljava/lang/Object;
.source "VorbisCommentReader.java"


# static fields
.field public static final FIELD_COMMENT_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_USER_COMMENT_LIST_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_POS:I = 0x0

.field public static final FIELD_VENDOR_STRING_POS:I = 0x4

.field private static final JAUDIOTAGGER_MAX_COMMENT_LENGTH:I = 0x989680

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.vorbiscomment.VorbisCommentReader"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public read([BZ)Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
    .registers 14

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [B

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    .line 16
    move-result v2

    .line 17
    new-array v4, v2, [B

    .line 19
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    add-int/2addr v2, v1

    .line 23
    new-instance v5, Ljava/lang/String;

    .line 25
    const-string v6, "UTF-8"

    .line 27
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 30
    invoke-virtual {v0, v5}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    .line 33
    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 35
    const-string v5, "Vendor is:"

    .line 37
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 55
    new-array v4, v1, [B

    .line 57
    invoke-static {p1, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    add-int/2addr v2, v1

    .line 61
    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    .line 64
    move-result v4

    .line 65
    sget-object v5, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v7, "Number of user comments:"

    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    move v5, v3

    .line 88
    :goto_57
    const/4 v6, 0x1

    .line 89
    if-ge v5, v4, :cond_db

    .line 91
    new-array v7, v1, [B

    .line 93
    invoke-static {p1, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    add-int/lit8 v2, v2, 0x4

    .line 98
    invoke-static {v7}, Lorg/jaudiotagger/audio/generic/Utils;->getIntLE([B)I

    .line 101
    move-result v7

    .line 102
    sget-object v8, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v10, "Next Comment Length:"

    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    const v8, 0x989680

    .line 127
    if-le v7, v8, :cond_94

    .line 129
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 131
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 133
    new-array v5, v6, [Ljava/lang/Object;

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v7

    .line 139
    aput-object v7, v5, v3

    .line 141
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 148
    goto :goto_db

    .line 149
    :cond_94
    array-length v8, p1

    .line 150
    if-le v7, v8, :cond_b3

    .line 152
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 154
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 156
    const/4 v5, 0x2

    .line 157
    new-array v5, v5, [Ljava/lang/Object;

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v7

    .line 163
    aput-object v7, v5, v3

    .line 165
    array-length v7, p1

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v7

    .line 170
    aput-object v7, v5, v6

    .line 172
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 179
    goto :goto_db

    .line 180
    :cond_b3
    new-array v6, v7, [B

    .line 182
    invoke-static {p1, v2, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    add-int/2addr v2, v7

    .line 186
    new-instance v7, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    .line 188
    invoke-direct {v7, v6}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>([B)V

    .line 191
    sget-object v6, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 193
    const-string v8, "Adding:"

    .line 195
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v7}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;->getId()Ljava/lang/String;

    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v7}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 218
    goto/16 :goto_57

    .line 220
    :cond_db
    :goto_db
    if-eqz p2, :cond_fa

    .line 222
    aget-byte p2, p1, v2

    .line 224
    and-int/2addr p2, v6

    .line 225
    if-ne p2, v6, :cond_e3

    .line 227
    goto :goto_fa

    .line 228
    :cond_e3
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 230
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_FRAMING_BIT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 232
    new-array v1, v6, [Ljava/lang/Object;

    .line 234
    aget-byte p1, p1, v2

    .line 236
    and-int/2addr p1, v6

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object p1

    .line 241
    aput-object p1, v1, v3

    .line 243
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    move-result-object p1

    .line 247
    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 250
    throw p2

    .line 251
    :cond_fa
    :goto_fa
    return-object v0
.end method
