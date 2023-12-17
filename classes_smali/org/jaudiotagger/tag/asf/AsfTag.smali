.class public final Lorg/jaudiotagger/tag/asf/AsfTag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "AsfTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;
    }
.end annotation


# static fields
.field public static final COMMON_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagFieldToAsfField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyFields:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 3
    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    sput-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    .line 10
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 12
    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 19
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 21
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 26
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 28
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 33
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 35
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 40
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 42
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 47
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->AUTHOR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 49
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 54
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 56
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    .line 61
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BARCODE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 63
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    .line 68
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BPM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 70
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 75
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 77
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    .line 82
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DESCRIPTION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 84
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    .line 89
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COMPOSER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 91
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 96
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 98
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    .line 103
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 105
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 110
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 112
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    .line 117
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 119
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    .line 124
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 126
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    .line 131
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 133
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    .line 138
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 140
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    .line 145
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 147
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 152
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DISC_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 154
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 159
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 161
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    .line 166
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENCODER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 168
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    .line 173
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->FBPM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 175
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 180
    sget-object v5, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 182
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    .line 187
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GROUPING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 189
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    .line 194
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ISRC:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 196
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    .line 201
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 203
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    .line 208
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->INITIAL_KEY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 210
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    .line 215
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 217
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 222
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LYRICIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 224
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    .line 229
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LYRICS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 231
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    .line 236
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MEDIA:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 238
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    .line 243
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 245
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    .line 250
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 252
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 257
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 259
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    .line 264
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 266
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    .line 271
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 273
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    .line 278
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 280
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 285
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 287
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    .line 292
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 294
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    .line 299
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 301
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 306
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 308
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 313
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 315
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 320
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 322
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    .line 327
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->OCCASION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 329
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 334
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 336
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 341
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 343
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 348
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 350
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 355
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 357
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    .line 362
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MM_RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 364
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    .line 369
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 371
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    .line 376
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->QUALITY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 378
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 383
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->REMIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 385
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    .line 390
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->SCRIPT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 392
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    .line 397
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TAGS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 399
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    .line 404
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TEMPO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 406
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 411
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 413
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 418
    sget-object v7, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 420
    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 425
    sget-object v7, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 427
    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 432
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 434
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 439
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 441
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 446
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 448
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 453
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 455
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 460
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 462
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 467
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 469
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 474
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 476
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 481
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 483
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 488
    sget-object v8, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 490
    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    .line 495
    sget-object v9, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENGINEER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 497
    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    .line 502
    sget-object v9, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PRODUCER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 504
    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 509
    sget-object v9, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DJMIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 511
    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 516
    sget-object v9, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 518
    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    .line 523
    sget-object v9, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARRANGER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 525
    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-instance v0, Ljava/util/HashSet;

    .line 530
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 533
    sput-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    .line 535
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/Tag;Z)V
    .registers 3

    .line 4
    invoke-direct {p0, p2}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    .line 5
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/Tag;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFields:Z

    return-void
.end method

.method private copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6
    instance-of v0, p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    if-eqz v0, :cond_21

    .line 7
    :try_start_a
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1f

    .line 8
    :catch_14
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    :goto_1f
    move-object p1, v0

    goto :goto_4e

    .line 9
    :cond_21
    instance-of v0, p1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v0, :cond_37

    .line 10
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v0}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_4e

    .line 12
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Asf Tag Field class:"

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    return-object p1
.end method

.method private copyFrom(Lorg/jaudiotagger/tag/Tag;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method private isValidField(Lorg/jaudiotagger/tag/TagField;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    .line 7
    if-nez v1, :cond_9

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isEmpty()Z

    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 16
    return p1
.end method


# virtual methods
.method public addCopyright(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 8
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->isValidField(Lorg/jaudiotagger/tag/TagField;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1f

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->isMultiValued(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_18

    .line 17
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    .line 20
    move-result-object p1

    .line 21
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    .line 28
    move-result-object p1

    .line 29
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method public addRating(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 8
    return-void
.end method

.method public createArtworkField([B)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p1, v1, v2, v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    .line 13
    return-object v0
.end method

.method public createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 5
    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public bridge synthetic createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;
    .registers 6

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getPictureType()I

    move-result v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .registers 4

    if-eqz p2, :cond_36

    if-eqz p1, :cond_2a

    .line 10
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    if-eqz v0, :cond_13

    .line 11
    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    return-object p1

    .line 12
    :cond_13
    new-instance p2, Lorg/jaudiotagger/tag/KeyNotFoundException;

    const-string v0, "No ASF fieldkey for "

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .registers 5

    if-eqz p2, :cond_38

    if-eqz p1, :cond_2c

    .line 4
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag$1;->$SwitchMap$org$jaudiotagger$tag$asf$AsfFieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Banner Image cannot be created using this method"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cover Art cannot be created using this method"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 3
    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 5
    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_12
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_46

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 32
    check-cast v2, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    .line 34
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 36
    invoke-direct {v3}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 39
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getRawImageData()[B

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 46
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getMimeType()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getDescription()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setDescription(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getPictureType()I

    .line 63
    move-result v2

    .line 64
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setPictureType(I)V

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_13

    .line 71
    :cond_46
    return-object v1
.end method

.method public getAsfFields()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/asf/AsfTagField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;-><init>(Ljava/util/Iterator;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    const-string v1, "Since the field conversion is not enabled, this method cannot be executed"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public getCopyright()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_13

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 22
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 25
    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getFirstCopyright()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/asf/AsfTagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/asf/AsfTagField;
    .registers 3

    if-eqz p1, :cond_15

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    return-object p1

    .line 3
    :cond_15
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirstRating()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRating()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p1, :cond_13

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 22
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 25
    throw p1
.end method

.method public isAllowedEncoding(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isCopyingFields()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFields:Z

    .line 3
    return v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 8
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->isValidField(Lorg/jaudiotagger/tag/TagField;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    .line 10
    move-result-object p1

    .line 11
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 8
    return-void
.end method
