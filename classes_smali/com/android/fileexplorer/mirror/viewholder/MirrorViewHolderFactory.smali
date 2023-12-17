.class public Lcom/android/fileexplorer/mirror/viewholder/MirrorViewHolderFactory;
.super Ljava/lang/Object;
.source "MirrorViewHolderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorViewHolderFactory"


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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorViewHolderFactory"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d00e7

    const v2, 0x7f0d009b

    const/4 v3, 0x0

    const v4, 0x7f0d00e9

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_180

    :pswitch_24  #0x2, 0x3, 0xb
    const-string p0, "createViewHolder error： invalid viewType, holder is null. "

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17f

    :pswitch_2b  #0x1e
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;

    const p1, 0x7f0d00ea

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_39  #0x1d
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;

    const p1, 0x7f0d00ee

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_47  #0x1c
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    const p1, 0x7f0d0096

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_55  #0x1b
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;

    const p1, 0x7f0d01de

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_63  #0x1a
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;

    const p1, 0x7f0d009c

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSideBarItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_71  #0x19
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;

    const p1, 0x7f0d00a0

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_7f  #0x18
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;

    invoke-static {p0, v2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_8a  #0x17
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;

    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFavItemView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_95  #0x16
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;

    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_a0  #0x15
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;

    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_ab  #0x14
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

    const p1, 0x7f0d00ed

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_b9  #0x13
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;

    const p1, 0x7f0d00ca

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHSearchCategory;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_c7  #0x12
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    const p1, 0x7f0d00ec

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_d5  #0x11
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    const p2, 0x7f0d0098

    invoke-static {p0, p2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_139

    :pswitch_e2  #0x10
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentDocGrid;

    invoke-static {p0, v0, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentDocGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_ed  #0xf
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentVideo;

    const p1, 0x7f0d00ef

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentVideo;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_fb  #0xe
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;

    const p1, 0x7f0d009a

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto/16 :goto_17f

    :pswitch_109  #0xd
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    const p1, 0x7f0d0097

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_17f

    :pswitch_116  #0xc
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;

    const p1, 0x7f0d00f0

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto :goto_17f

    :pswitch_123  #0xa
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;

    invoke-static {p0, v0, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto :goto_17f

    :pswitch_12d  #0x9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;

    const p2, 0x7f0d00c4

    invoke-static {p0, p2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupDivider;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    :goto_139
    move-object v3, p1

    goto :goto_17f

    :pswitch_13b  #0x8
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    const p1, 0x7f0d0099

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_17f

    :pswitch_148  #0x6, 0x7
    new-instance v3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;

    const p1, 0x7f0d009d

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    goto :goto_17f

    :pswitch_155  #0x5
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildList;

    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildList;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto :goto_17f

    :pswitch_15f  #0x4
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildGrid;

    invoke-static {p0, v2, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileChildGrid;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto :goto_17f

    :pswitch_169  #0x1
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileGridItem;

    const p1, 0x7f0d00e8

    invoke-static {p0, p1, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileGridItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    goto :goto_17f

    :pswitch_176  #0x0
    new-instance v3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileListItem;

    invoke-static {p0, v4, p0, v5}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    :goto_17f
    return-object v3

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
