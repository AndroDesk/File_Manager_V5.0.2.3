.class public Lcom/android/fileexplorer/mirror/viewholder/MirrorViewHolderFactory;
.super Ljava/lang/Object;
.source "MirrorViewHolderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorViewHolderFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "viewType: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorViewHolderFactory"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const v0, 0x7f0d00e7

    .line 26
    const v2, 0x7f0d009b

    .line 29
    const/4 v3, 0x0

    .line 30
    const v4, 0x7f0d00e9

    .line 33
    const/4 v5, 0x0

    .line 34
    packed-switch p1, :pswitch_data_180

    .line 37
    :pswitch_24  #0x2, 0x3, 0xb
    const-string p0, "createViewHolder error： invalid viewType, holder is null. "

    .line 39
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto/16 :goto_17f

    .line 44
    :pswitch_2b  #0x1e
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;

    .line 46
    const p1, 0x7f0d00ea

    .line 49
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 56
    goto/16 :goto_17f

    .line 58
    :pswitch_39  #0x1d
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;

    .line 60
    const p1, 0x7f0d00ee

    .line 63
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 70
    goto/16 :goto_17f

    .line 72
    :pswitch_47  #0x1c
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 74
    const p1, 0x7f0d0096

    .line 77
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 84
    goto/16 :goto_17f

    .line 86
    :pswitch_55  #0x1b
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;

    .line 88
    const p1, 0x7f0d01de

    .line 91
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 98
    goto/16 :goto_17f

    .line 100
    :pswitch_63  #0x1a
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;

    .line 102
    const p1, 0x7f0d009c

    .line 105
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    move-result-object p0

    .line 109
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 112
    goto/16 :goto_17f

    .line 114
    :pswitch_71  #0x19
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;

    .line 116
    const p1, 0x7f0d00a0

    .line 119
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    move-result-object p0

    .line 123
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 126
    goto/16 :goto_17f

    .line 128
    :pswitch_7f  #0x18
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;

    .line 130
    invoke-static {p0, v2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 137
    goto/16 :goto_17f

    .line 139
    :pswitch_8a  #0x17
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;

    .line 141
    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 148
    goto/16 :goto_17f

    .line 150
    :pswitch_95  #0x16
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;

    .line 152
    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    move-result-object p0

    .line 156
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 159
    goto/16 :goto_17f

    .line 161
    :pswitch_a0  #0x15
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;

    .line 163
    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    move-result-object p0

    .line 167
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 170
    goto/16 :goto_17f

    .line 172
    :pswitch_ab  #0x14
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

    .line 174
    const p1, 0x7f0d00ed

    .line 177
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 180
    move-result-object p0

    .line 181
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 184
    goto/16 :goto_17f

    .line 186
    :pswitch_b9  #0x13
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;

    .line 188
    const p1, 0x7f0d00ca

    .line 191
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 194
    move-result-object p0

    .line 195
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 198
    goto/16 :goto_17f

    .line 200
    :pswitch_c7  #0x12
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    .line 202
    const p1, 0x7f0d00ec

    .line 205
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    move-result-object p0

    .line 209
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 212
    goto/16 :goto_17f

    .line 214
    :pswitch_d5  #0x11
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    .line 216
    const p2, 0x7f0d0098

    .line 219
    invoke-static {p0, p2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 222
    move-result-object p0

    .line 223
    invoke-direct {p1, p0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 226
    goto :goto_139

    .line 227
    :pswitch_e2  #0x10
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentDocGrid;

    .line 229
    invoke-static {p0, v0, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 232
    move-result-object p0

    .line 233
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentDocGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 236
    goto/16 :goto_17f

    .line 238
    :pswitch_ed  #0xf
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentVideo;

    .line 240
    const p1, 0x7f0d00ef

    .line 243
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 246
    move-result-object p0

    .line 247
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentVideo;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 250
    goto/16 :goto_17f

    .line 252
    :pswitch_fb  #0xe
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;

    .line 254
    const p1, 0x7f0d009a

    .line 257
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    move-result-object p0

    .line 261
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 264
    goto/16 :goto_17f

    .line 266
    :pswitch_109  #0xd
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 268
    const p1, 0x7f0d0097

    .line 271
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    move-result-object p0

    .line 275
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 278
    goto :goto_17f

    .line 279
    :pswitch_116  #0xc
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;

    .line 281
    const p1, 0x7f0d00f0

    .line 284
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 287
    move-result-object p0

    .line 288
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 291
    goto :goto_17f

    .line 292
    :pswitch_123  #0xa
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;

    .line 294
    invoke-static {p0, v0, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 297
    move-result-object p0

    .line 298
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 301
    goto :goto_17f

    .line 302
    :pswitch_12d  #0x9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    .line 304
    const p2, 0x7f0d00c4

    .line 307
    invoke-static {p0, p2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 310
    move-result-object p0

    .line 311
    invoke-direct {p1, p0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 314
    :goto_139
    move-object v3, p1

    .line 315
    goto :goto_17f

    .line 316
    :pswitch_13b  #0x8
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    .line 318
    const p1, 0x7f0d0099

    .line 321
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 324
    move-result-object p0

    .line 325
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 328
    goto :goto_17f

    .line 329
    :pswitch_148  #0x6, 0x7
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    .line 331
    const p1, 0x7f0d009d

    .line 334
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 337
    move-result-object p0

    .line 338
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 341
    goto :goto_17f

    .line 342
    :pswitch_155  #0x5
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildList;

    .line 344
    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 347
    move-result-object p0

    .line 348
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildList;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 351
    goto :goto_17f

    .line 352
    :pswitch_15f  #0x4
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildGrid;

    .line 354
    invoke-static {p0, v2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 357
    move-result-object p0

    .line 358
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 361
    goto :goto_17f

    .line 362
    :pswitch_169  #0x1
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileGridItem;

    .line 364
    const p1, 0x7f0d00e8

    .line 367
    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 370
    move-result-object p0

    .line 371
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 374
    goto :goto_17f

    .line 375
    :pswitch_176  #0x0
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileListItem;

    .line 377
    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 380
    move-result-object p0

    .line 381
    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 384
    :goto_17f
    return-object v3

    .line 385
    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_176  #00000000
        :pswitch_169  #00000001
        :pswitch_24  #00000002
        :pswitch_24  #00000003
        :pswitch_15f  #00000004
        :pswitch_155  #00000005
        :pswitch_148  #00000006
        :pswitch_148  #00000007
        :pswitch_13b  #00000008
        :pswitch_12d  #00000009
        :pswitch_123  #0000000a
        :pswitch_24  #0000000b
        :pswitch_116  #0000000c
        :pswitch_109  #0000000d
        :pswitch_fb  #0000000e
        :pswitch_ed  #0000000f
        :pswitch_e2  #00000010
        :pswitch_d5  #00000011
        :pswitch_c7  #00000012
        :pswitch_b9  #00000013
        :pswitch_ab  #00000014
        :pswitch_a0  #00000015
        :pswitch_95  #00000016
        :pswitch_8a  #00000017
        :pswitch_7f  #00000018
        :pswitch_71  #00000019
        :pswitch_63  #0000001a
        :pswitch_55  #0000001b
        :pswitch_47  #0000001c
        :pswitch_39  #0000001d
        :pswitch_2b  #0000001e
    .end packed-switch
.end method
