.class public Lcom/android/cloud/util/TransferUtil;
.super Ljava/lang/Object;
.source "TransferUtil.java"


# static fields
.field private static final statusDescMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cloud/bean/TransferState$Status;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusGridIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cloud/bean/TransferState$Status;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusListIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cloud/bean/TransferState$Status;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-static {}, Lcom/android/cloud/bean/TransferState$Status;->values()[Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_168

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/cloud/util/TransferUtil$1;->$SwitchMap$com$android$cloud$bean$TransferState$Status:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const v5, 0x7f080280

    const v6, 0x7f08027f

    packed-switch v4, :pswitch_data_16a

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    const v5, 0x7f110065

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_164

    :pswitch_3e  #0x8
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    const v5, 0x7f1100e2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f012feb

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f012fe8

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_164

    :pswitch_74  #0x7
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    const v5, 0x7f1100df

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f012fe1

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f012fee

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_164

    :pswitch_aa  #0x6
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    const v7, 0x7f1100e5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_164

    :pswitch_d2  #0x5
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    const v7, 0x7f1100e3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_164

    :pswitch_f9  #0x3, 0x4
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v3, v7, :cond_103

    const v7, 0x7f1100e0

    goto :goto_106

    :cond_103
    const v7, 0x7f1100e4

    :goto_106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_164

    :pswitch_128  #0x1, 0x2
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    sget-object v5, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v3, v5, :cond_132

    const v5, 0x7f1100e1

    goto :goto_135

    :cond_132
    const v5, 0x7f1100dd

    :goto_135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f012fef

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f012fec

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_164
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    :cond_168
    return-void

    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_128  #00000001
        :pswitch_128  #00000002
        :pswitch_f9  #00000003
        :pswitch_f9  #00000004
        :pswitch_d2  #00000005
        :pswitch_aa  #00000006
        :pswitch_74  #00000007
        :pswitch_3e  #00000008
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I
    .registers 2

    sget-object v0, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    :goto_7
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
