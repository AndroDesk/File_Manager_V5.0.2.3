.class Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;
.super Ljava/lang/Object;
.source "PadMoreCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 1
    const v0, 0x7f0a00c7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    instance-of v1, v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 10
    if-nez v1, :cond_13

    .line 12
    const-string p1, "PadMoreCategoryFragment"

    .line 14
    const-string v0, "tag error!"

    .line 16
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    const/4 v4, -0x1

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 50
    move-result v5

    .line 51
    sparse-switch v5, :sswitch_data_15a

    .line 54
    goto/16 :goto_b8

    .line 56
    :sswitch_37
    const-string v5, "transfer"

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_41

    .line 64
    goto/16 :goto_b8

    .line 66
    :cond_41
    const/16 v4, 0xa

    .line 68
    goto/16 :goto_b8

    .line 70
    :sswitch_45
    const-string v5, "favorite"

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4f

    .line 78
    goto/16 :goto_b8

    .line 80
    :cond_4f
    const/16 v4, 0x9

    .line 82
    goto/16 :goto_b8

    .line 84
    :sswitch_53
    const-string v5, "video"

    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_5d

    .line 92
    goto/16 :goto_b8

    .line 94
    :cond_5d
    const/16 v4, 0x8

    .line 96
    goto/16 :goto_b8

    .line 98
    :sswitch_61
    const-string v5, "music"

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_6a

    .line 106
    goto :goto_b8

    .line 107
    :cond_6a
    const/4 v4, 0x7

    .line 108
    goto :goto_b8

    .line 109
    :sswitch_6c
    const-string v5, "more"

    .line 111
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_75

    .line 117
    goto :goto_b8

    .line 118
    :cond_75
    const/4 v4, 0x6

    .line 119
    goto :goto_b8

    .line 120
    :sswitch_77
    const-string v5, "zip"

    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_80

    .line 128
    goto :goto_b8

    .line 129
    :cond_80
    const/4 v4, 0x5

    .line 130
    goto :goto_b8

    .line 131
    :sswitch_82
    const-string v5, "doc"

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_8b

    .line 139
    goto :goto_b8

    .line 140
    :cond_8b
    const/4 v4, 0x4

    .line 141
    goto :goto_b8

    .line 142
    :sswitch_8d
    const-string v5, "apk"

    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_96

    .line 150
    goto :goto_b8

    .line 151
    :cond_96
    const/4 v4, 0x3

    .line 152
    goto :goto_b8

    .line 153
    :sswitch_98
    const-string v5, "picture"

    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_a1

    .line 161
    goto :goto_b8

    .line 162
    :cond_a1
    const/4 v4, 0x2

    .line 163
    goto :goto_b8

    .line 164
    :sswitch_a3
    const-string v5, "xspace"

    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_ac

    .line 172
    goto :goto_b8

    .line 173
    :cond_ac
    const/4 v4, 0x1

    .line 174
    goto :goto_b8

    .line 175
    :sswitch_ae
    const-string v5, "recorder"

    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_b7

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    const/4 v4, 0x0

    .line 185
    :goto_b8
    const-string v3, ""

    .line 187
    packed-switch v4, :pswitch_data_188

    .line 190
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 193
    move-result-object v0

    .line 194
    if-nez v0, :cond_c4

    .line 196
    return-void

    .line 197
    :cond_c4
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    new-instance v1, Landroid/os/Bundle;

    .line 209
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v4, "app_tag"

    .line 214
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_121

    .line 223
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    goto :goto_121

    .line 228
    :pswitch_e3  #0xa
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    goto :goto_121

    .line 235
    :pswitch_ea  #0x9
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    move-result-object v3

    .line 241
    goto :goto_121

    .line 242
    :pswitch_f1  #0x8
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    move-result-object v3

    .line 248
    goto :goto_121

    .line 249
    :pswitch_f8  #0x7
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 254
    move-result-object v3

    .line 255
    goto :goto_121

    .line 256
    :pswitch_ff  #0x6
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 261
    move-result-object v3

    .line 262
    goto :goto_121

    .line 263
    :pswitch_106  #0x5
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    .line 265
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 268
    move-result-object v3

    .line 269
    goto :goto_121

    .line 270
    :pswitch_10d  #0x4
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 272
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 276
    goto :goto_121

    .line 277
    :pswitch_114  #0x3
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    .line 279
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 282
    move-result-object v3

    .line 283
    goto :goto_121

    .line 284
    :pswitch_11b  #0x2
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 289
    move-result-object v3

    .line 290
    :cond_121
    :goto_121
    move-object v6, p1

    .line 291
    move-object v9, v2

    .line 292
    move-object v5, v3

    .line 293
    goto :goto_141

    .line 294
    :pswitch_125  #0x1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 297
    move-result-object v0

    .line 298
    if-eqz v0, :cond_121

    .line 300
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0, v3}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    goto :goto_121

    .line 312
    :pswitch_137  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    .line 314
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    .line 321
    goto :goto_121

    .line 322
    :goto_141
    if-nez v1, :cond_14a

    .line 324
    new-instance p1, Landroid/os/Bundle;

    .line 326
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 329
    move-object v8, p1

    .line 330
    goto :goto_14b

    .line 331
    :cond_14a
    move-object v8, v1

    .line 332
    :goto_14b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 335
    move-result-object p1

    .line 336
    new-instance v0, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 338
    const/4 v7, 0x1

    .line 339
    move-object v4, v0

    .line 340
    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 346
    return-void

    .line 347
    :sswitch_data_15a
    .sparse-switch
        -0x2fa35742 -> :sswitch_ae
        -0x2cb18472 -> :sswitch_a3
        -0x226fa302 -> :sswitch_98
        0x17a1c -> :sswitch_8d
        0x18538 -> :sswitch_82
        0x1d721 -> :sswitch_77
        0x333b55 -> :sswitch_6c
        0x636ee25 -> :sswitch_61
        0x6b0147b -> :sswitch_53
        0x3ea1c99c -> :sswitch_45
        0x4c58b7eb -> :sswitch_37
    .end sparse-switch

    .line 393
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_137  #00000000
        :pswitch_125  #00000001
        :pswitch_11b  #00000002
        :pswitch_114  #00000003
        :pswitch_10d  #00000004
        :pswitch_106  #00000005
        :pswitch_ff  #00000006
        :pswitch_f8  #00000007
        :pswitch_f1  #00000008
        :pswitch_ea  #00000009
        :pswitch_e3  #0000000a
    .end packed-switch
.end method
