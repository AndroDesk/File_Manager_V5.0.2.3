.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;
.super Ljava/lang/Object;
.source "MirrorFragmentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MirrorFragmentFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 10
    const-string v2, "file_category"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "category: "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "MirrorFragmentFactory"

    .line 34
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result v2

    .line 43
    aget v1, v1, v2

    .line 45
    const-string v2, "_"

    .line 47
    packed-switch v1, :pswitch_data_21e

    .line 50
    const/4 p0, 0x0

    .line 51
    goto/16 :goto_218

    .line 53
    :pswitch_34  #0x10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    move-result-object p0

    .line 57
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    .line 59
    const-string v1, "MirrorExportFileFragment"

    .line 61
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 82
    if-nez p0, :cond_218

    .line 84
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    .line 86
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;-><init>()V

    .line 89
    goto/16 :goto_218

    .line 91
    :pswitch_5a  #0xf
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 94
    move-result-object p0

    .line 95
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 97
    const-string v1, "MirrorSearchDetailFragment"

    .line 99
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 120
    if-nez p0, :cond_218

    .line 122
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 124
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;-><init>()V

    .line 127
    goto/16 :goto_218

    .line 129
    :pswitch_80  #0xe
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 132
    move-result-object p0

    .line 133
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 135
    const-string v1, "MirrorSearchResultFragment"

    .line 137
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 158
    if-nez p0, :cond_218

    .line 160
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 162
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;-><init>()V

    .line 165
    goto/16 :goto_218

    .line 167
    :pswitch_a6  #0xd
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 170
    move-result-object p0

    .line 171
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 173
    const-string v1, "MirrorFileGroupFragment"

    .line 175
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 196
    if-nez p0, :cond_218

    .line 198
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 200
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;-><init>()V

    .line 203
    goto/16 :goto_218

    .line 205
    :pswitch_cc  #0xc
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 208
    move-result-object p0

    .line 209
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 211
    const-string v1, "MirrorMoreAppFragment"

    .line 213
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 231
    move-result-object p0

    .line 232
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 234
    if-nez p0, :cond_218

    .line 236
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 238
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;-><init>()V

    .line 241
    goto/16 :goto_218

    .line 243
    :pswitch_f2  #0x8, 0x9, 0xa, 0xb
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 246
    move-result-object p0

    .line 247
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 249
    const-string v1, "MirrorCategoryFragmentPhone"

    .line 251
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 272
    if-nez p0, :cond_218

    .line 274
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 277
    move-result-object p0

    .line 278
    goto/16 :goto_218

    .line 280
    :pswitch_117  #0x7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 283
    move-result-object p0

    .line 284
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 286
    const-string v1, "MirrorFavoriteFragment"

    .line 288
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 306
    move-result-object p0

    .line 307
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 309
    if-nez p0, :cond_218

    .line 311
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 314
    move-result-object p0

    .line 315
    goto/16 :goto_218

    .line 317
    :pswitch_13c  #0x6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 320
    move-result-object p0

    .line 321
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 323
    const-string v1, "MirrorCategoryMusicFragment"

    .line 325
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 343
    move-result-object p0

    .line 344
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 346
    if-nez p0, :cond_218

    .line 348
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 351
    move-result-object p0

    .line 352
    goto/16 :goto_218

    .line 354
    :pswitch_161  #0x5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 357
    move-result-object p0

    .line 358
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 360
    const-string v1, "MirrorHomePictureFragment"

    .line 362
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 380
    move-result-object p0

    .line 381
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 383
    if-nez p0, :cond_218

    .line 385
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 388
    move-result-object p0

    .line 389
    goto/16 :goto_218

    .line 391
    :pswitch_186  #0x4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 394
    move-result-object p0

    .line 395
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 397
    const-string v1, "MirrorHomeVideoFragment"

    .line 399
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 420
    if-nez p0, :cond_218

    .line 422
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 425
    move-result-object p0

    .line 426
    goto :goto_218

    .line 427
    :pswitch_1aa  #0x3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 430
    move-result-object p0

    .line 431
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;

    .line 433
    const-string v1, "MirrorDocsCategoryTabFragment"

    .line 435
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 442
    move-result-object p1

    .line 443
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 453
    move-result-object p0

    .line 454
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 456
    if-nez p0, :cond_218

    .line 458
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;

    .line 460
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;-><init>()V

    .line 463
    goto :goto_218

    .line 464
    :pswitch_1cf  #0x2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 467
    move-result-object p0

    .line 468
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 470
    const-string v1, "MirrorRecentFragment"

    .line 472
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 479
    move-result-object p1

    .line 480
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object p1

    .line 487
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 490
    move-result-object p0

    .line 491
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 493
    if-nez p0, :cond_218

    .line 495
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 497
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;-><init>()V

    .line 500
    goto :goto_218

    .line 501
    :pswitch_1f4  #0x1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 504
    move-result-object p0

    .line 505
    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 507
    const-string v1, "MirrorFileFragment"

    .line 509
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object p1

    .line 524
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 527
    move-result-object p0

    .line 528
    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 530
    if-nez p0, :cond_218

    .line 532
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 534
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;-><init>()V

    .line 537
    :cond_218
    :goto_218
    if-eqz p0, :cond_21d

    .line 539
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 542
    :cond_21d
    return-object p0

    .line 543
    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_1f4  #00000001
        :pswitch_1cf  #00000002
        :pswitch_1aa  #00000003
        :pswitch_186  #00000004
        :pswitch_161  #00000005
        :pswitch_13c  #00000006
        :pswitch_117  #00000007
        :pswitch_f2  #00000008
        :pswitch_f2  #00000009
        :pswitch_f2  #0000000a
        :pswitch_f2  #0000000b
        :pswitch_cc  #0000000c
        :pswitch_a6  #0000000d
        :pswitch_80  #0000000e
        :pswitch_5a  #0000000f
        :pswitch_34  #00000010
    .end packed-switch
.end method
