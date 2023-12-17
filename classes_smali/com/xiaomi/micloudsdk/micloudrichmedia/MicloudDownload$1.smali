.class synthetic Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;
.super Ljava/lang/Object;
.source "MicloudDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->values()[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 10
    :try_start_9
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 21
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 32
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Cancel:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 41
    :catch_28
    :try_start_28
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 43
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :try_start_33
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 54
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NeedRequest:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 65
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->DataCorrupted:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 76
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->SpaceOver:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    .line 87
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ServerDenyReadOnly:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 95
    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    return-void
.end method
