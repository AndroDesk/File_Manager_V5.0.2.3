.class public Lorg/jaudiotagger/tag/reference/PictureTypes;
.super Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;
.source "PictureTypes.java"


# static fields
.field public static final DEFAULT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "Cover (front)"

.field public static final PICTURE_TYPE_FIELD_SIZE:I = 0x1

.field private static pictureTypes:Lorg/jaudiotagger/tag/reference/PictureTypes;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;-><init>()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Other"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "32x32 pixels \'file icon\' (PNG only)"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "Other file icon"

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "Cover (front)"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "Cover (back)"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 66
    const/4 v1, 0x5

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    const-string v2, "Leaflet page"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 78
    const/4 v1, 0x6

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    const-string v2, "Media (e.g. label side of CD)"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 90
    const/4 v1, 0x7

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    const-string v2, "Lead artist/lead performer/soloist"

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 102
    const/16 v1, 0x8

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 108
    const-string v2, "Artist/performer"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 115
    const/16 v1, 0x9

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v1

    .line 121
    const-string v2, "Conductor"

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 128
    const/16 v1, 0xa

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v1

    .line 134
    const-string v2, "Band/Orchestra"

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 141
    const/16 v1, 0xb

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v1

    .line 147
    const-string v2, "Composer"

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 154
    const/16 v1, 0xc

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v1

    .line 160
    const-string v2, "Lyricist/text writer"

    .line 162
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 167
    const/16 v1, 0xd

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v1

    .line 173
    const-string v2, "Recording Location"

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 180
    const/16 v1, 0xe

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v1

    .line 186
    const-string v2, "During recording"

    .line 188
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 193
    const/16 v1, 0xf

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v1

    .line 199
    const-string v2, "During performance"

    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 206
    const/16 v1, 0x10

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v1

    .line 212
    const-string v2, "Movie/video screen capture"

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 219
    const/16 v1, 0x11

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v1

    .line 225
    const-string v2, "A bright coloured fish"

    .line 227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 232
    const/16 v1, 0x12

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v1

    .line 238
    const-string v2, "Illustration"

    .line 240
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 245
    const/16 v1, 0x13

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v1

    .line 251
    const-string v2, "Band/artist logotype"

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 258
    const/16 v1, 0x14

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v1

    .line 264
    const-string v2, "Publisher/Studio logotype"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    .line 272
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/reference/PictureTypes;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/reference/PictureTypes;->pictureTypes:Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/reference/PictureTypes;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/reference/PictureTypes;->pictureTypes:Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/reference/PictureTypes;->pictureTypes:Lorg/jaudiotagger/tag/reference/PictureTypes;

    .line 14
    return-object v0
.end method
