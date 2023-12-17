.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
.super Ljava/lang/Object;
.source "MicloudDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 2

    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->$SwitchMap$cn$kuaipan$kss$KssDef$KssAPIResult:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_e  #0x8
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->ServerDenyReadOnly:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_11  #0x7
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->SpaceOver:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_14  #0x6
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->DataCorrupted:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_17  #0x5
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->NeedRequest:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_1a  #0x4
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->NetTimeout:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_1d  #0x3
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Cancel:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_20  #0x2
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_23  #0x1
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
        :pswitch_11  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method
