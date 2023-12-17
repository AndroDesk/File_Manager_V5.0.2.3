.class public final enum Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
.super Ljava/lang/Enum;
.source "SyncTotalFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/SyncTotalFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

.field public static final enum UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;


# instance fields
.field private final msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    const-string v1, "INIT"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "init"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 13
    new-instance v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 15
    const-string v3, "SYNCING"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "syncing"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 25
    new-instance v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 27
    const-string v5, "DOWNLOAD"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "download"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 37
    new-instance v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 39
    const-string v7, "UPLOAD"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "upload"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 49
    new-instance v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 51
    const-string v9, "DOWNLOAD_FINISH"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "download_finish"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 61
    new-instance v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 63
    const-string v11, "UPLOAD_FINISH"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "upload_finish"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 73
    new-instance v11, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 75
    const-string v13, "DELETE"

    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "delete"

    .line 80
    invoke-direct {v11, v13, v14, v15}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    sput-object v11, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 85
    const/4 v13, 0x7

    .line 86
    new-array v13, v13, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 88
    aput-object v0, v13, v2

    .line 90
    aput-object v1, v13, v4

    .line 92
    aput-object v3, v13, v6

    .line 94
    aput-object v5, v13, v8

    .line 96
    aput-object v7, v13, v10

    .line 98
    aput-object v9, v13, v12

    .line 100
    aput-object v11, v13, v14

    .line 102
    sput-object v13, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->$VALUES:[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->msg:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v1

    .line 17
    sparse-switch v1, :sswitch_data_6e

    .line 20
    goto :goto_55

    .line 21
    :sswitch_14
    const-string v1, "download"

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1d

    .line 29
    goto :goto_55

    .line 30
    :cond_1d
    const/4 v0, 0x5

    .line 31
    goto :goto_55

    .line 32
    :sswitch_1f
    const-string v1, "upload_finish"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_28

    .line 40
    goto :goto_55

    .line 41
    :cond_28
    const/4 v0, 0x4

    .line 42
    goto :goto_55

    .line 43
    :sswitch_2a
    const-string v1, "download_finish"

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_33

    .line 51
    goto :goto_55

    .line 52
    :cond_33
    const/4 v0, 0x3

    .line 53
    goto :goto_55

    .line 54
    :sswitch_35
    const-string v1, "upload"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3e

    .line 62
    goto :goto_55

    .line 63
    :cond_3e
    const/4 v0, 0x2

    .line 64
    goto :goto_55

    .line 65
    :sswitch_40
    const-string v1, "delete"

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_49

    .line 73
    goto :goto_55

    .line 74
    :cond_49
    const/4 v0, 0x1

    .line 75
    goto :goto_55

    .line 76
    :sswitch_4b
    const-string v1, "syncing"

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_54

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 v0, 0x0

    .line 86
    :goto_55
    packed-switch v0, :pswitch_data_88

    .line 89
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 91
    return-object p0

    .line 92
    :pswitch_5b  #0x5
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 94
    return-object p0

    .line 95
    :pswitch_5e  #0x4
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 97
    return-object p0

    .line 98
    :pswitch_61  #0x3
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 100
    return-object p0

    .line 101
    :pswitch_64  #0x2
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 103
    return-object p0

    .line 104
    :pswitch_67  #0x1
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 106
    return-object p0

    .line 107
    :pswitch_6a  #0x0
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 109
    return-object p0

    .line 110
    nop

    .line 111
    :sswitch_data_6e
    .sparse-switch
        -0x67dc4c99 -> :sswitch_4b
        -0x4f997a55 -> :sswitch_40
        -0x31fbf1ff -> :sswitch_35
        0x9cd982a -> :sswitch_2a
        0x334ae891 -> :sswitch_1f
        0x551ac888 -> :sswitch_14
    .end sparse-switch

    .line 137
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6a  #00000000
        :pswitch_67  #00000001
        :pswitch_64  #00000002
        :pswitch_61  #00000003
        :pswitch_5e  #00000004
        :pswitch_5b  #00000005
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->$VALUES:[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->msg:Ljava/lang/String;

    .line 3
    return-object v0
.end method
