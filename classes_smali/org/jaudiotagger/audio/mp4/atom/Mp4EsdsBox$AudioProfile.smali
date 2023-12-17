.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
.super Ljava/lang/Enum;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum CELP:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HILN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HVXC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN_SYNTHESIS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum SCALEABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TTSI:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TWIN_VQ:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_LC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum WAVETABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 3
    const-string v1, "MAIN"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "Main"

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 12
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 14
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 16
    const-string v4, "LOW_COMPLEXITY"

    .line 18
    const/4 v5, 0x2

    .line 19
    const-string v6, "Low Complexity"

    .line 21
    invoke-direct {v1, v4, v3, v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 24
    sput-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 26
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 28
    const-string v6, "SCALEABLE"

    .line 30
    const/4 v7, 0x3

    .line 31
    const-string v8, "Scaleable Sample rate"

    .line 33
    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 36
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 38
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 40
    const-string v8, "T_F"

    .line 42
    const/4 v9, 0x4

    .line 43
    const-string v10, "T/F"

    .line 45
    invoke-direct {v6, v8, v7, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 48
    sput-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 50
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 52
    const-string v10, "T_F_MAIN"

    .line 54
    const/4 v11, 0x5

    .line 55
    const-string v12, "T/F Main"

    .line 57
    invoke-direct {v8, v10, v9, v11, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 60
    sput-object v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 62
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 64
    const-string v12, "T_F_LC"

    .line 66
    const/4 v13, 0x6

    .line 67
    const-string v14, "T/F LC"

    .line 69
    invoke-direct {v10, v12, v11, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 72
    sput-object v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 74
    new-instance v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 76
    const-string v14, "TWIN_VQ"

    .line 78
    const/4 v15, 0x7

    .line 79
    const-string v11, "TWIN"

    .line 81
    invoke-direct {v12, v14, v13, v15, v11}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 84
    sput-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 86
    new-instance v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 88
    const-string v14, "CELP"

    .line 90
    const/16 v13, 0x8

    .line 92
    invoke-direct {v11, v14, v15, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 95
    sput-object v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 97
    new-instance v14, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 99
    const-string v15, "HVXC"

    .line 101
    const/16 v9, 0x9

    .line 103
    invoke-direct {v14, v15, v13, v9, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 106
    sput-object v14, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 108
    new-instance v15, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 110
    const-string v13, "HILN"

    .line 112
    const/16 v7, 0xa

    .line 114
    invoke-direct {v15, v13, v9, v7, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 117
    sput-object v15, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 119
    new-instance v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 121
    const-string v9, "TTSI"

    .line 123
    const/16 v5, 0xb

    .line 125
    invoke-direct {v13, v9, v7, v5, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 128
    sput-object v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 130
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 132
    const-string v7, "MAIN_SYNTHESIS"

    .line 134
    const/16 v3, 0xc

    .line 136
    invoke-direct {v9, v7, v5, v3, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 139
    sput-object v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 141
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 143
    const-string v5, "WAVETABLE"

    .line 145
    const/16 v2, 0xd

    .line 147
    invoke-direct {v7, v5, v3, v2, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 150
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 152
    new-array v2, v2, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 154
    const/4 v5, 0x0

    .line 155
    aput-object v0, v2, v5

    .line 157
    const/4 v0, 0x1

    .line 158
    aput-object v1, v2, v0

    .line 160
    const/4 v0, 0x2

    .line 161
    aput-object v4, v2, v0

    .line 163
    const/4 v0, 0x3

    .line 164
    aput-object v6, v2, v0

    .line 166
    const/4 v0, 0x4

    .line 167
    aput-object v8, v2, v0

    .line 169
    const/4 v0, 0x5

    .line 170
    aput-object v10, v2, v0

    .line 172
    const/4 v0, 0x6

    .line 173
    aput-object v12, v2, v0

    .line 175
    const/4 v0, 0x7

    .line 176
    aput-object v11, v2, v0

    .line 178
    const/16 v0, 0x8

    .line 180
    aput-object v14, v2, v0

    .line 182
    const/16 v0, 0x9

    .line 184
    aput-object v15, v2, v0

    .line 186
    const/16 v0, 0xa

    .line 188
    aput-object v13, v2, v0

    .line 190
    const/16 v0, 0xb

    .line 192
    aput-object v9, v2, v0

    .line 194
    aput-object v7, v2, v3

    .line 196
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 198
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    .line 6
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    .line 3
    return v0
.end method
