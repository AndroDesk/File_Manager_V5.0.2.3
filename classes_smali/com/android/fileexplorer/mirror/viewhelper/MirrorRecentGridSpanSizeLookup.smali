.class public abstract Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "MirrorRecentGridSpanSizeLookup.java"


# instance fields
.field private mHeaderCount:I

.field private mSpanCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    iput p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mHeaderCount:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mHeaderCount:I

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->getViewType(I)I

    move-result p1

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_27

    if-eq p1, v1, :cond_27

    packed-switch p1, :pswitch_data_2e

    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v1

    return p1

    :pswitch_1c  #0x11
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    return p1

    :pswitch_1f  #0x10
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v1

    return p1

    :pswitch_23  #0xe
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v1

    return p1

    :cond_27
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    return p1

    :cond_2a
    :pswitch_2a  #0xf
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v1

    return p1

    :pswitch_data_2e
    .packed-switch 0xe
        :pswitch_23  #0000000e
        :pswitch_2a  #0000000f
        :pswitch_1f  #00000010
        :pswitch_1c  #00000011
    .end packed-switch
.end method

.method public abstract getViewType(I)I
.end method
