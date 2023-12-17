.class public Lorg/jaudiotagger/tag/mp4/Mp4Tag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "Mp4Tag.java"


# static fields
.field private static final tagFieldToMp4Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 3
    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 10
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 12
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 19
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 26
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 33
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 40
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ASIN:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 47
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 54
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    .line 61
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BARCODE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    .line 68
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 75
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CATALOGNO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    .line 82
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    .line 89
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 96
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    .line 103
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 110
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    .line 117
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_1:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    .line 124
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_2:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    .line 131
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_3:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    .line 138
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_4:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    .line 145
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_5:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 152
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    .line 164
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENCODER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    .line 171
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->FBPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 178
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    .line 185
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GROUPING:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    .line 192
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ISRC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    .line 199
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    .line 206
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->KEY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    .line 213
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 220
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    .line 227
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    .line 234
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MEDIA:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    .line 241
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    .line 248
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 255
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_DISCID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 257
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    .line 262
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    .line 269
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 271
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    .line 276
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RELEASECOUNTRY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 283
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_GROUPID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    .line 290
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_STATUS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    .line 297
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 304
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_TRACKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 311
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 313
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    .line 318
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICIP_PUID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    .line 325
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->OCCASION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 332
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ALBUM_TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 334
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 339
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 341
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 346
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 348
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 353
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_YEAR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 355
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    .line 360
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->QUALITY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 362
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    .line 367
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCORE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 369
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    .line 374
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LABEL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 376
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 381
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->REMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 383
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    .line 388
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 390
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    .line 395
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TAGS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 397
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    .line 402
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TEMPO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 404
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 409
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 411
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    .line 416
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 418
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 423
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 425
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 430
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 435
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 437
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 442
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 444
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 449
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 451
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 456
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 458
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 463
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 465
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 470
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 472
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    .line 477
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 479
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 484
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DAY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 486
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    .line 491
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 493
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    .line 498
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 500
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 505
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 507
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    .line 512
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 514
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    .line 519
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 521
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    .line 4
    return-void
.end method

.method private createGenreField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    invoke-static {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    .line 11
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    .line 17
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 31
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method


# virtual methods
.method public createArtworkField([B)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    .line 6
    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    if-eqz p2, :cond_61

    if-eqz p1, :cond_5b

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_14

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_14

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_14

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_3f

    .line 3
    :cond_14
    :try_start_14
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v0, :cond_20

    .line 4
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(I)V

    return-object p1

    .line 5
    :cond_20
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2b

    .line 6
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, v2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    return-object p1

    .line 7
    :cond_2b
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_35

    .line 8
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(I)V

    return-object p1

    .line 9
    :cond_35
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3f

    .line 10
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, v2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_3e} :catch_4c

    return-object p1

    .line 11
    :cond_3f
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    :catch_4c
    move-exception p1

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v1, "Value "

    const-string v2, " is not a number as required"

    .line 13
    invoke-static {v1, p2, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {v0, p2, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_5b
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 16
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 6

    if-eqz p2, :cond_d1

    if-eqz p1, :cond_cb

    .line 23
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_1c

    const-string v0, "true"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25
    sget-object p2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    .line 26
    :cond_12
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object v0

    .line 27
    :cond_1c
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_25

    .line 28
    invoke-direct {p0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createGenreField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 29
    :cond_25
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_33

    .line 30
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 31
    :cond_33
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_41

    .line 32
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 33
    :cond_41
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_53

    .line 34
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object v0

    .line 35
    :cond_53
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_65

    .line 36
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_65
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_73

    .line 38
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_73
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-eq v0, v1, :cond_bf

    .line 40
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_8d

    .line 41
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_8d
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p2

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_ab

    .line 43
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_ab
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_bf
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_cb
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 47
    :cond_d1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_12
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_a
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 14
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 17
    throw p1
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
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

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
    if-eqz v2, :cond_3c

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 32
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    .line 34
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 36
    invoke-direct {v3}, Lorg/jaudiotagger/tag/datatype/Artwork;-><init>()V

    .line 39
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagBinaryField;->getData()[B

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/datatype/Artwork;->setBinaryData([B)V

    .line 46
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getMimeTypeForImageType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_13

    .line 61
    :cond_3c
    return-object v1
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
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

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

.method public getFirst(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 14
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 17
    throw p1
.end method

.method public bridge synthetic getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .registers 3

    if-eqz p1, :cond_15

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object p1

    .line 3
    :cond_15
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .registers 2

    if-eqz p1, :cond_d

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object p1

    .line 5
    :cond_d
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 5

    .line 1
    if-eqz p1, :cond_102

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 5
    const-string v1, ""

    .line 7
    if-ne p1, v0, :cond_34

    .line 9
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_22

    .line 25
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 27
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    if-le v0, p2, :cond_33

    .line 41
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lorg/jaudiotagger/tag/TagTextField;

    .line 47
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_33
    return-object v1

    .line 53
    :cond_34
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 55
    if-ne p1, v0, :cond_63

    .line 57
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 65
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    move-result v0

    .line 73
    if-le v0, p2, :cond_f0

    .line 75
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 81
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 88
    move-result p2

    .line 89
    if-lez p2, :cond_f0

    .line 91
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_63
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 102
    if-ne p1, v0, :cond_92

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 112
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    move-result v0

    .line 120
    if-le v0, p2, :cond_f0

    .line 122
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 128
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 135
    move-result p2

    .line 136
    if-lez p2, :cond_f0

    .line 138
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :cond_92
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    .line 149
    if-ne p1, v0, :cond_c1

    .line 151
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 159
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 166
    move-result v0

    .line 167
    if-le v0, p2, :cond_f0

    .line 169
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 175
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 182
    move-result p2

    .line 183
    if-lez p2, :cond_f0

    .line 185
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :cond_c1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    .line 196
    if-ne p1, v0, :cond_f1

    .line 198
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 206
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 213
    move-result v0

    .line 214
    if-le v0, p2, :cond_f0

    .line 216
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 222
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 229
    move-result p2

    .line 230
    if-lez p2, :cond_f0

    .line 232
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    .line 235
    move-result-object p1

    .line 236
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    return-object p1

    .line 241
    :cond_f0
    return-object v1

    .line 242
    :cond_f1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 244
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 250
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 253
    move-result-object p1

    .line 254
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    :cond_102
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    .line 261
    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    .line 264
    throw p1
.end method

.method public isAllowedEncoding(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 10
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_6a

    .line 21
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 23
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/List;

    .line 33
    if-eqz v0, :cond_66

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_29

    .line 41
    goto :goto_66

    .line 42
    :cond_29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 48
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 50
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 65
    move-result v2

    .line 66
    if-lez v2, :cond_47

    .line 68
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    .line 71
    move-result-object v1

    .line 72
    :cond_47
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 79
    move-result v2

    .line 80
    if-lez v2, :cond_55

    .line 82
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    .line 85
    move-result-object v0

    .line 86
    :cond_55
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 95
    move-result v0

    .line 96
    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    .line 99
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 102
    goto :goto_d3

    .line 103
    :cond_66
    :goto_66
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 106
    goto :goto_d3

    .line 107
    :cond_6a
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 113
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_d0

    .line 123
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 125
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/util/List;

    .line 135
    if-eqz v0, :cond_cc

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_8f

    .line 143
    goto :goto_cc

    .line 144
    :cond_8f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 150
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 152
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 167
    move-result v2

    .line 168
    if-lez v2, :cond_ad

    .line 170
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    .line 173
    move-result-object v1

    .line 174
    :cond_ad
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 181
    move-result v2

    .line 182
    if-lez v2, :cond_bb

    .line 184
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    .line 187
    move-result-object v0

    .line 188
    :cond_bb
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    .line 193
    move-result v1

    .line 194
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 197
    move-result v0

    .line 198
    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V

    .line 201
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 204
    goto :goto_d3

    .line 205
    :cond_cc
    :goto_cc
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 208
    goto :goto_d3

    .line 209
    :cond_d0
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 212
    :goto_d3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Mpeg4 "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
