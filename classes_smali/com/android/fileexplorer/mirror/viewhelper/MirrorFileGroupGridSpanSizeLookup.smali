.class public abstract Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "MirrorFileGroupGridSpanSizeLookup.java"


# instance fields
.field private mHeaderCount:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mHeaderCount:I

    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mHeaderCount:I

    .line 3
    if-ge p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_6
    sub-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->getViewType(I)I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x4

    .line 13
    const/16 v1, 0x8

    .line 15
    if-eq p1, v0, :cond_2a

    .line 17
    const/4 v0, 0x6

    .line 18
    if-eq p1, v0, :cond_27

    .line 20
    if-eq p1, v1, :cond_27

    .line 22
    packed-switch p1, :pswitch_data_2e

    .line 25
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 27
    div-int/2addr p1, v1

    .line 28
    return p1

    .line 29
    :pswitch_1c  #0x11
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 31
    return p1

    .line 32
    :pswitch_1f  #0x10
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 34
    div-int/2addr p1, v1

    .line 35
    return p1

    .line 36
    :pswitch_23  #0xe
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 38
    div-int/2addr p1, v1

    .line 39
    return p1

    .line 40
    :cond_27
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 42
    return p1

    .line 43
    :cond_2a
    :pswitch_2a  #0xf
    iget p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 45
    div-int/2addr p1, v1

    .line 46
    return p1

    .line 47
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
