.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/ViewHolderFactory;
.super Ljava/lang/Object;
.source "ViewHolderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewHolderFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 9

    .line 1
    const v0, 0x7f0d006c

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_13b

    .line 8
    const/4 v3, 0x1

    .line 9
    const v4, 0x7f0d006a

    .line 12
    if-eq p1, v3, :cond_131

    .line 14
    const/16 v3, 0x1f

    .line 16
    if-eq p1, v3, :cond_127

    .line 18
    const v3, 0x7f0d005a

    .line 21
    const v4, 0x7f0d006f

    .line 24
    const v5, 0x7f0d0092

    .line 27
    packed-switch p1, :pswitch_data_146

    .line 30
    packed-switch p1, :pswitch_data_158

    .line 33
    const-string p0, "ViewHolderFactory"

    .line 35
    const-string p1, "createViewHolder error： invalid viewType, holder is null. "

    .line 37
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    goto/16 :goto_144

    .line 42
    :pswitch_29  #0xa
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHDocGridItem;

    .line 44
    invoke-static {p0, v3, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHDocGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 51
    goto/16 :goto_144

    .line 53
    :pswitch_34  #0x9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    .line 55
    const p2, 0x7f0d00b4

    .line 58
    invoke-static {p0, p2, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 65
    :goto_40
    move-object v1, p1

    .line 66
    goto/16 :goto_144

    .line 68
    :pswitch_43  #0x8
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    .line 70
    const p1, 0x7f0d0090

    .line 73
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 80
    goto/16 :goto_144

    .line 82
    :pswitch_51  #0x6, 0x7
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    .line 84
    const p1, 0x7f0d00a1

    .line 87
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 94
    goto/16 :goto_144

    .line 96
    :pswitch_5f  #0x5
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildList;

    .line 98
    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildList;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 105
    goto/16 :goto_144

    .line 107
    :pswitch_6a  #0x4
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;

    .line 109
    invoke-static {p0, v5, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 116
    goto/16 :goto_144

    .line 118
    :pswitch_75  #0x19
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;

    .line 120
    const p1, 0x7f0d00a0

    .line 123
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 126
    move-result-object p0

    .line 127
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 130
    goto/16 :goto_144

    .line 132
    :pswitch_83  #0x18
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPictureItem;

    .line 134
    invoke-static {p0, v5, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 137
    move-result-object p0

    .line 138
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPictureItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 141
    goto/16 :goto_144

    .line 143
    :pswitch_8e  #0x17
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;

    .line 145
    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 148
    move-result-object p0

    .line 149
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 152
    goto/16 :goto_144

    .line 154
    :pswitch_99  #0x16
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateItem;

    .line 156
    invoke-static {p0, v0, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 159
    move-result-object p0

    .line 160
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 163
    goto/16 :goto_144

    .line 165
    :pswitch_a4  #0x15
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VhSearchBodyItem;

    .line 167
    const p1, 0x7f0d006e

    .line 170
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    move-result-object p0

    .line 174
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VhSearchBodyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 177
    goto/16 :goto_144

    .line 179
    :pswitch_b2  #0x14
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchViewMore;

    .line 181
    const p1, 0x7f0d01c3

    .line 184
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 187
    move-result-object p0

    .line 188
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchViewMore;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 191
    goto/16 :goto_144

    .line 193
    :pswitch_c0  #0x13
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;

    .line 195
    const p1, 0x7f0d00e1

    .line 198
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
    move-result-object p0

    .line 202
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 205
    goto/16 :goto_144

    .line 207
    :pswitch_ce  #0x12
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    .line 209
    const p1, 0x7f0d01a9

    .line 212
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 219
    goto :goto_144

    .line 220
    :pswitch_db  #0x11
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    .line 222
    const p2, 0x7f0d008f

    .line 225
    invoke-static {p0, p2, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 228
    move-result-object p0

    .line 229
    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 232
    goto/16 :goto_40

    .line 234
    :pswitch_e9  #0x10
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentDocGrid;

    .line 236
    invoke-static {p0, v3, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 239
    move-result-object p0

    .line 240
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentDocGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 243
    goto :goto_144

    .line 244
    :pswitch_f3  #0xf
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;

    .line 246
    const p1, 0x7f0d01e0

    .line 249
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 252
    move-result-object p0

    .line 253
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 256
    goto :goto_144

    .line 257
    :pswitch_100  #0xe
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;

    .line 259
    const p1, 0x7f0d0091

    .line 262
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 265
    move-result-object p0

    .line 266
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 269
    goto :goto_144

    .line 270
    :pswitch_10d  #0xd
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;

    .line 272
    const p1, 0x7f0d008b

    .line 275
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 278
    move-result-object p0

    .line 279
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 282
    goto :goto_144

    .line 283
    :pswitch_11a  #0xc
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHVideoListItem;

    .line 285
    const p1, 0x7f0d01e1

    .line 288
    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    move-result-object p0

    .line 292
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 295
    goto :goto_144

    .line 296
    :cond_127
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    .line 298
    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 301
    move-result-object p0

    .line 302
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 305
    goto :goto_144

    .line 306
    :cond_131
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;

    .line 308
    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 311
    move-result-object p0

    .line 312
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 315
    goto :goto_144

    .line 316
    :cond_13b
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;

    .line 318
    invoke-static {p0, v0, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 321
    move-result-object p0

    .line 322
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 325
    :goto_144
    return-object v1

    .line 326
    nop

    .line 327
    :pswitch_data_146
    .packed-switch 0x4
        :pswitch_6a  #00000004
        :pswitch_5f  #00000005
        :pswitch_51  #00000006
        :pswitch_51  #00000007
        :pswitch_43  #00000008
        :pswitch_34  #00000009
        :pswitch_29  #0000000a
    .end packed-switch

    .line 345
    :pswitch_data_158
    .packed-switch 0xc
        :pswitch_11a  #0000000c
        :pswitch_10d  #0000000d
        :pswitch_100  #0000000e
        :pswitch_f3  #0000000f
        :pswitch_e9  #00000010
        :pswitch_db  #00000011
        :pswitch_ce  #00000012
        :pswitch_c0  #00000013
        :pswitch_b2  #00000014
        :pswitch_a4  #00000015
        :pswitch_99  #00000016
        :pswitch_8e  #00000017
        :pswitch_83  #00000018
        :pswitch_75  #00000019
    .end packed-switch
.end method
