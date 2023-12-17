.class synthetic Lcom/junrar/Archive$1;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

.field public static final synthetic $SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/junrar/rarfile/UnrarHeadertype;->values()[Lcom/junrar/rarfile/UnrarHeadertype;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 22
    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    const/4 v2, 0x3

    .line 31
    :try_start_1e
    sget-object v3, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 33
    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    const/4 v3, 0x4

    .line 42
    :try_start_29
    sget-object v4, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 44
    sget-object v5, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    const/4 v4, 0x5

    .line 53
    :try_start_34
    sget-object v5, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 55
    sget-object v6, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    const/4 v5, 0x6

    .line 64
    :try_start_3f
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 66
    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 76
    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 78
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v7

    .line 82
    const/4 v8, 0x7

    .line 83
    aput v8, v6, v7
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 87
    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 89
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v7

    .line 93
    const/16 v8, 0x8

    .line 95
    aput v8, v6, v7
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    :try_start_60
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 99
    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 101
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v7

    .line 105
    const/16 v8, 0x9

    .line 107
    aput v8, v6, v7
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    .line 109
    :catch_6c
    :try_start_6c
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    .line 111
    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    .line 113
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v7

    .line 117
    const/16 v8, 0xa

    .line 119
    aput v8, v6, v7
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 121
    :catch_78
    invoke-static {}, Lcom/junrar/rarfile/SubBlockHeaderType;->values()[Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 124
    move-result-object v6

    .line 125
    array-length v6, v6

    .line 126
    new-array v6, v6, [I

    .line 128
    sput-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 130
    :try_start_81
    sget-object v7, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 132
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 135
    move-result v7

    .line 136
    aput v1, v6, v7
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_89} :catch_89

    .line 138
    :catch_89
    :try_start_89
    sget-object v1, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 140
    sget-object v6, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 142
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 145
    move-result v6

    .line 146
    aput v0, v1, v6
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    .line 148
    :catch_93
    :try_start_93
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 150
    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 155
    move-result v1

    .line 156
    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    .line 158
    :catch_9d
    :try_start_9d
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 160
    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 165
    move-result v1

    .line 166
    aput v3, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a7

    .line 168
    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 170
    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 175
    move-result v1

    .line 176
    aput v4, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b1

    .line 178
    :catch_b1
    :try_start_b1
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    .line 180
    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 185
    move-result v1

    .line 186
    aput v5, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_bb

    .line 188
    :catch_bb
    return-void
.end method
