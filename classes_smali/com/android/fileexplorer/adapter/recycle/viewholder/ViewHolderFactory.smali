.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/ViewHolderFactory;
.super Ljava/lang/Object;
.source "ViewHolderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewHolderFactory"


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

.method public static getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 9

    const v0, 0x7f0d006c

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_13b

    const/4 v3, 0x1

    const v4, 0x7f0d006a

    if-eq p1, v3, :cond_131

    const/16 v3, 0x1f

    if-eq p1, v3, :cond_127

    const v3, 0x7f0d005a

    const v4, 0x7f0d006f

    const v5, 0x7f0d0092

    packed-switch p1, :pswitch_data_146

    packed-switch p1, :pswitch_data_158

    const-string p0, "ViewHolderFactory"

    const-string p1, "createViewHolder error： invalid viewType, holder is null. "

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_144

    :pswitch_29  #0xa
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHDocGridItem;

    invoke-static {p0, v3, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHDocGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_34  #0x9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    const p2, 0x7f0d00b4

    invoke-static {p0, p2, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    :goto_40
    move-object v1, p1

    goto/16 :goto_144

    :pswitch_43  #0x8
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    const p1, 0x7f0d0090

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_51  #0x6, 0x7
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    const p1, 0x7f0d00a1

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_5f  #0x5
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildList;

    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildList;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_6a  #0x4
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;

    invoke-static {p0, v5, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_75  #0x19
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;

    const p1, 0x7f0d00a0

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_83  #0x18
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPictureItem;

    invoke-static {p0, v5, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPictureItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_8e  #0x17
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;

    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_99  #0x16
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateItem;

    invoke-static {p0, v0, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_a4  #0x15
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VhSearchBodyItem;

    const p1, 0x7f0d006e

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VhSearchBodyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_b2  #0x14
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchViewMore;

    const p1, 0x7f0d01c3

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchViewMore;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_c0  #0x13
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;

    const p1, 0x7f0d00e1

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_144

    :pswitch_ce  #0x12
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    const p1, 0x7f0d01a9

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :pswitch_db  #0x11
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    const p2, 0x7f0d008f

    invoke-static {p0, p2, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_40

    :pswitch_e9  #0x10
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentDocGrid;

    invoke-static {p0, v3, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentDocGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :pswitch_f3  #0xf
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;

    const p1, 0x7f0d01e0

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :pswitch_100  #0xe
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;

    const p1, 0x7f0d0091

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :pswitch_10d  #0xd
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;

    const p1, 0x7f0d008b

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :pswitch_11a  #0xc
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHVideoListItem;

    const p1, 0x7f0d01e1

    invoke-static {p0, p1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :cond_127
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;

    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :cond_131
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;

    invoke-static {p0, v4, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_144

    :cond_13b
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;

    invoke-static {p0, v0, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    :goto_144
    return-object v1

    nop

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
