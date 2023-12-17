.class public abstract Lorg/jaudiotagger/tag/id3/ID3Frames;
.super Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;
.source "ID3Frames.java"


# static fields
.field public static final convertv22Tov23:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final convertv23Tov22:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final convertv23Tov24:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final convertv24Tov23:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final forcev22Tov23:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final forcev23Tov22:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final forcev23Tov24:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final forcev24Tov23:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public binaryFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public commonFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public discardIfFileAlteredFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extensionFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public multipleFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public supportedFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov22:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev22Tov23:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov22:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv24Tov23:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 45
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov24:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 52
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev24Tov23:Ljava/util/Map;

    .line 57
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3Frames;->loadID3v22ID3v23Mapping()V

    .line 60
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3Frames;->loadID3v23ID3v24Mapping()V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;-><init>()V

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->multipleFrames:Ljava/util/TreeSet;

    .line 11
    new-instance v0, Ljava/util/TreeSet;

    .line 13
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->discardIfFileAlteredFrames:Ljava/util/TreeSet;

    .line 18
    new-instance v0, Ljava/util/TreeSet;

    .line 20
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->supportedFrames:Ljava/util/TreeSet;

    .line 25
    new-instance v0, Ljava/util/TreeSet;

    .line 27
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->extensionFrames:Ljava/util/TreeSet;

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    .line 34
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->commonFrames:Ljava/util/TreeSet;

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    .line 41
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->binaryFrames:Ljava/util/TreeSet;

    .line 46
    return-void
.end method

.method private static loadID3v22ID3v23Mapping()V
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    .line 3
    const-string v1, "TP2"

    .line 5
    const-string v2, "TPE2"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v1, "TAL"

    .line 12
    const-string v2, "TALB"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "TP1"

    .line 19
    const-string v2, "TPE1"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "CRA"

    .line 26
    const-string v2, "AENC"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "TBP"

    .line 33
    const-string v2, "TBPM"

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "COM"

    .line 40
    const-string v2, "COMM"

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "TCM"

    .line 50
    const-string v2, "TCOM"

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "TPE"

    .line 57
    const-string v2, "TPE3"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "TT1"

    .line 64
    const-string v2, "TIT1"

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "TCR"

    .line 71
    const-string v2, "TCOP"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "TEN"

    .line 78
    const-string v2, "TENC"

    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "EQU"

    .line 85
    const-string v2, "EQUA"

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "ETC"

    .line 92
    const-string v2, "ETCO"

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "TFT"

    .line 99
    const-string v2, "TFLT"

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "GEO"

    .line 106
    const-string v2, "GEOB"

    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "TCO"

    .line 113
    const-string v2, "TCON"

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "TSS"

    .line 120
    const-string v2, "TSSE"

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "TKE"

    .line 127
    const-string v2, "TKEY"

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "IPL"

    .line 134
    const-string v2, "IPLS"

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "TRC"

    .line 141
    const-string v2, "TSRC"

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "TLA"

    .line 148
    const-string v2, "TLAN"

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "TLE"

    .line 155
    const-string v2, "TLEN"

    .line 157
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "LNK"

    .line 162
    const-string v2, "LINK"

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "TXT"

    .line 169
    const-string v2, "TEXT"

    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "TMT"

    .line 176
    const-string v2, "TMED"

    .line 178
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "MLL"

    .line 183
    const-string v2, "MLLT"

    .line 185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "MCI"

    .line 190
    const-string v2, "MCDI"

    .line 192
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "TOA"

    .line 197
    const-string v2, "TOPE"

    .line 199
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "TOF"

    .line 204
    const-string v2, "TOFN"

    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "TOL"

    .line 211
    const-string v2, "TOLY"

    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "TOT"

    .line 218
    const-string v2, "TOAL"

    .line 220
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "TDY"

    .line 225
    const-string v2, "TDLY"

    .line 227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "CNT"

    .line 232
    const-string v2, "PCNT"

    .line 234
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "POP"

    .line 242
    const-string v2, "POPM"

    .line 244
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "TPB"

    .line 249
    const-string v2, "TPUB"

    .line 251
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "BUF"

    .line 256
    const-string v2, "RBUF"

    .line 258
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "RVA"

    .line 266
    const-string v2, "RVAD"

    .line 268
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "TP4"

    .line 273
    const-string v2, "TPE4"

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "REV"

    .line 280
    const-string v2, "RVRB"

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "TPA"

    .line 287
    const-string v2, "TPOS"

    .line 289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "SLT"

    .line 294
    const-string v2, "SYLT"

    .line 296
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "STC"

    .line 301
    const-string v2, "SYTC"

    .line 303
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "TDA"

    .line 308
    const-string v2, "TDAT"

    .line 310
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "TIM"

    .line 315
    const-string v2, "TIME"

    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "TT3"

    .line 322
    const-string v2, "TIT3"

    .line 324
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "TOR"

    .line 329
    const-string v2, "TORY"

    .line 331
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "TRK"

    .line 336
    const-string v2, "TRCK"

    .line 338
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "TRD"

    .line 343
    const-string v2, "TRDA"

    .line 345
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "TSI"

    .line 350
    const-string v2, "TSIZ"

    .line 352
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "TYE"

    .line 357
    const-string v2, "TYER"

    .line 359
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "UFI"

    .line 364
    const-string v2, "UFID"

    .line 366
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "ULT"

    .line 374
    const-string v2, "USLT"

    .line 376
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "WAR"

    .line 381
    const-string v2, "WOAR"

    .line 383
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "WCM"

    .line 388
    const-string v2, "WCOM"

    .line 390
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "WCP"

    .line 395
    const-string v2, "WCOP"

    .line 397
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "WAF"

    .line 402
    const-string v2, "WOAF"

    .line 404
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "WRS"

    .line 409
    const-string v2, "WORS"

    .line 411
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v1, "WPAY"

    .line 416
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "WPB"

    .line 421
    const-string v2, "WPUB"

    .line 423
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v1, "WAS"

    .line 428
    const-string v2, "WOAS"

    .line 430
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v1, "TXX"

    .line 435
    const-string v2, "TXXX"

    .line 437
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "WXX"

    .line 442
    const-string v2, "WXXX"

    .line 444
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "TT2"

    .line 449
    const-string v2, "TIT2"

    .line 451
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "TCP"

    .line 456
    const-string v2, "TCMP"

    .line 458
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v1, "TST"

    .line 463
    const-string v2, "TSOT"

    .line 465
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v2, "TSP"

    .line 470
    const-string v3, "TSOP"

    .line 472
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v3, "TSA"

    .line 477
    const-string v4, "TSOA"

    .line 479
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v4, "TS2"

    .line 484
    const-string v5, "TSO2"

    .line 486
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v4, "TSC"

    .line 491
    const-string v5, "TSOC"

    .line 493
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 499
    move-result-object v0

    .line 500
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 503
    move-result-object v0

    .line 504
    :goto_1f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    move-result v4

    .line 508
    if-eqz v4, :cond_211

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Ljava/lang/String;

    .line 516
    sget-object v5, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    .line 518
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-result-object v5

    .line 522
    check-cast v5, Ljava/lang/String;

    .line 524
    sget-object v6, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov22:Ljava/util/Map;

    .line 526
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    goto :goto_1f7

    .line 530
    :cond_211
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov22:Ljava/util/Map;

    .line 532
    const-string v4, "XSOT"

    .line 534
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "XSOP"

    .line 539
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "XSOA"

    .line 544
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev22Tov23:Ljava/util/Map;

    .line 549
    const-string v1, "PIC"

    .line 551
    const-string v2, "APIC"

    .line 553
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov22:Ljava/util/Map;

    .line 558
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method private static loadID3v23ID3v24Mapping()V
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    .line 3
    const-string v1, "XSOT"

    .line 5
    const-string v2, "TSOT"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v1, "XSOP"

    .line 12
    const-string v2, "TSOP"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "XSOA"

    .line 19
    const-string v2, "TSOA"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov24:Ljava/util/Map;

    .line 26
    const-string v1, "RVAD"

    .line 28
    const-string v2, "RVA2"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "EQUA"

    .line 35
    const-string v4, "EQU2"

    .line 37
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "IPLS"

    .line 42
    const-string v4, "TIPL"

    .line 44
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v5, "TDAT"

    .line 49
    const-string v6, "TDRC"

    .line 51
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v5, "TIME"

    .line 56
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "TORY"

    .line 61
    const-string v7, "TDOR"

    .line 63
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v8, "TRDA"

    .line 68
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v8, "TYER"

    .line 73
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev24Tov23:Ljava/util/Map;

    .line 81
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "TMOO"

    .line 89
    const-string v2, "TXXX"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public getSupportedFrames()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->supportedFrames:Ljava/util/TreeSet;

    .line 3
    return-object v0
.end method

.method public isBinary(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->binaryFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isCommon(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->commonFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isDiscardIfFileAltered(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->discardIfFileAlteredFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isExtensionFrames(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->extensionFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isMultipleAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->multipleFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isSupportedFrames(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3Frames;->supportedFrames:Ljava/util/TreeSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
