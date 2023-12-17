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

    new-instance v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v1, "INIT"

    const/4 v2, 0x0

    const-string v3, "init"

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v3, "SYNCING"

    const/4 v4, 0x1

    const-string v5, "syncing"

    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v5, "DOWNLOAD"

    const/4 v6, 0x2

    const-string v7, "download"

    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v7, "UPLOAD"

    const/4 v8, 0x3

    const-string v9, "upload"

    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v9, "DOWNLOAD_FINISH"

    const/4 v10, 0x4

    const-string v11, "download_finish"

    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v11, "UPLOAD_FINISH"

    const/4 v12, 0x5

    const-string v13, "upload_finish"

    invoke-direct {v9, v11, v12, v13}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    new-instance v11, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    const-string v15, "delete"

    invoke-direct {v11, v13, v14, v15}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->$VALUES:[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_55

    :sswitch_14
    const-string v1, "download"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_55

    :cond_1d
    const/4 v0, 0x5

    goto :goto_55

    :sswitch_1f
    const-string v1, "upload_finish"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_55

    :cond_28
    const/4 v0, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "download_finish"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_55

    :cond_33
    const/4 v0, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "upload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_55

    :cond_3e
    const/4 v0, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "delete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto :goto_55

    :cond_49
    const/4 v0, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "syncing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    packed-switch v0, :pswitch_data_88

    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_5b  #0x5
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_5e  #0x4
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_61  #0x3
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_64  #0x2
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_67  #0x1
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    :pswitch_6a  #0x0
    sget-object p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x67dc4c99 -> :sswitch_4b
        -0x4f997a55 -> :sswitch_40
        -0x31fbf1ff -> :sswitch_35
        0x9cd982a -> :sswitch_2a
        0x334ae891 -> :sswitch_1f
        0x551ac888 -> :sswitch_14
    .end sparse-switch

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

    const-class v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->$VALUES:[Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->msg:Ljava/lang/String;

    return-object v0
.end method
