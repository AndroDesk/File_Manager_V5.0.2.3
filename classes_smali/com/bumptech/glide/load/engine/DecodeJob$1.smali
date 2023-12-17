.class synthetic Lcom/bumptech/glide/load/engine/DecodeJob$1;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

.field public static final synthetic $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

.field public static final synthetic $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/bumptech/glide/load/EncodeStrategy;->values()[Lcom/bumptech/glide/load/EncodeStrategy;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

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
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    .line 22
    sget-object v3, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

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
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    move-result-object v2

    .line 34
    array-length v2, v2

    .line 35
    new-array v2, v2, [I

    .line 37
    sput-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 39
    :try_start_26
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v3

    .line 45
    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    .line 47
    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 49
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result v3

    .line 55
    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    .line 57
    :catch_38
    const/4 v2, 0x3

    .line 58
    :try_start_39
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 60
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 65
    move-result v4

    .line 66
    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    .line 68
    :catch_43
    :try_start_43
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 70
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 72
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x4

    .line 77
    aput v5, v3, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    .line 79
    :catch_4e
    :try_start_4e
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 81
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 86
    move-result v4

    .line 87
    const/4 v5, 0x5

    .line 88
    aput v5, v3, v4
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_59} :catch_59

    .line 90
    :catch_59
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 93
    move-result-object v3

    .line 94
    array-length v3, v3

    .line 95
    new-array v3, v3, [I

    .line 97
    sput-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    .line 99
    :try_start_62
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v4

    .line 105
    aput v1, v3, v4
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6a} :catch_6a

    .line 107
    :catch_6a
    :try_start_6a
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    .line 109
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 114
    move-result v3

    .line 115
    aput v0, v1, v3
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_74

    .line 117
    :catch_74
    :try_start_74
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    .line 119
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 124
    move-result v1

    .line 125
    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7e} :catch_7e

    .line 127
    :catch_7e
    return-void
.end method
