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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/android/cloud/bean/TransferState$Status;->values()[Lcom/android/cloud/bean/TransferState$Status;

    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_1b
    if-ge v2, v1, :cond_150

    .line 30
    aget-object v3, v0, v2

    .line 32
    sget-object v4, Lcom/android/cloud/util/TransferUtil$1;->$SwitchMap$com$android$cloud$bean$TransferState$Status:[I

    .line 34
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v5

    .line 38
    aget v4, v4, v5

    .line 40
    const v5, 0x7f080280

    .line 43
    const v6, 0x7f08027f

    .line 46
    packed-switch v4, :pswitch_data_152

    .line 49
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 51
    const v5, 0x7f110065

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    goto/16 :goto_14c

    .line 63
    :pswitch_3e  #0x8
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 65
    const v5, 0x7f1100e2

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 78
    move-result-object v4

    .line 79
    const v5, 0x7f08027d

    .line 82
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 85
    move-result-object v4

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 89
    move-result-object v5

    .line 90
    const v6, 0x7f08027e

    .line 93
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v5

    .line 97
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 99
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 104
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto/16 :goto_14c

    .line 109
    :pswitch_6c  #0x7
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 111
    const v5, 0x7f1100df

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 124
    move-result-object v4

    .line 125
    const v5, 0x7f080277

    .line 128
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 131
    move-result-object v4

    .line 132
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 135
    move-result-object v5

    .line 136
    const v6, 0x7f080278

    .line 139
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 142
    move-result-object v5

    .line 143
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 145
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 150
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    goto/16 :goto_14c

    .line 155
    :pswitch_9a  #0x6
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 157
    const v7, 0x7f1100e5

    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v7

    .line 164
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 174
    move-result-object v4

    .line 175
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 182
    move-result-object v5

    .line 183
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 185
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 190
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto/16 :goto_14c

    .line 195
    :pswitch_c2  #0x5
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 197
    const v7, 0x7f1100e3

    .line 200
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v7

    .line 204
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 214
    move-result-object v4

    .line 215
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 222
    move-result-object v5

    .line 223
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 225
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 230
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    goto :goto_14c

    .line 234
    :pswitch_e9  #0x3, 0x4
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 236
    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 238
    if-ne v3, v7, :cond_f3

    .line 240
    const v7, 0x7f1100e0

    .line 243
    goto :goto_f6

    .line 244
    :cond_f3
    const v7, 0x7f1100e4

    .line 247
    :goto_f6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 261
    move-result-object v4

    .line 262
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 269
    move-result-object v5

    .line 270
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 272
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 277
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    goto :goto_14c

    .line 281
    :pswitch_118  #0x1, 0x2
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 283
    sget-object v5, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 285
    if-ne v3, v5, :cond_122

    .line 287
    const v5, 0x7f1100e1

    .line 290
    goto :goto_125

    .line 291
    :cond_122
    const v5, 0x7f1100dd

    .line 294
    :goto_125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    move-result-object v5

    .line 298
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 304
    move-result-object v4

    .line 305
    const v5, 0x7f080279

    .line 308
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 311
    move-result-object v4

    .line 312
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 315
    move-result-object v5

    .line 316
    const v6, 0x7f08027a

    .line 319
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 322
    move-result-object v5

    .line 323
    sget-object v6, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 325
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v4, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 330
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :goto_14c
    add-int/lit8 v2, v2, 0x1

    .line 335
    goto/16 :goto_1b

    .line 337
    :cond_150
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_118  #00000001
        :pswitch_118  #00000002
        :pswitch_e9  #00000003
        :pswitch_e9  #00000004
        :pswitch_c2  #00000005
        :pswitch_9a  #00000006
        :pswitch_6c  #00000007
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

    .line 1
    sget-object v0, Lcom/android/cloud/util/TransferUtil;->statusDescMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    if-nez p1, :cond_5

    .line 3
    sget-object p1, Lcom/android/cloud/util/TransferUtil;->statusGridIconMap:Ljava/util/Map;

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    sget-object p1, Lcom/android/cloud/util/TransferUtil;->statusListIconMap:Ljava/util/Map;

    .line 8
    :goto_7
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 14
    return-object p0
.end method
