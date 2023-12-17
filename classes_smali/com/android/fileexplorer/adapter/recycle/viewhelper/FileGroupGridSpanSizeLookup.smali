.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "FileGroupGridSpanSizeLookup.java"


# instance fields
.field private mHeaderCount:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mHeaderCount:I

    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "getSpanSize: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "fuck"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mHeaderCount:I

    .line 25
    if-ge p1, v0, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    sub-int/2addr p1, v0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->getViewType(I)I

    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x4

    .line 35
    if-eq p1, v0, :cond_40

    .line 37
    const/4 v1, 0x6

    .line 38
    if-eq p1, v1, :cond_3d

    .line 40
    const/16 v1, 0x8

    .line 42
    if-eq p1, v1, :cond_3d

    .line 44
    packed-switch p1, :pswitch_data_44

    .line 47
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 49
    div-int/2addr p1, v0

    .line 50
    return p1

    .line 51
    :pswitch_32  #0x11
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 53
    return p1

    .line 54
    :pswitch_35  #0x10
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 56
    div-int/lit8 p1, p1, 0x3

    .line 58
    return p1

    .line 59
    :pswitch_3a  #0xe
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 61
    return p1

    .line 62
    :cond_3d
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 64
    return p1

    .line 65
    :cond_40
    :pswitch_40  #0xf
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    .line 67
    div-int/2addr p1, v0

    .line 68
    return p1

    .line 69
    :pswitch_data_44
    .packed-switch 0xe
        :pswitch_3a  #0000000e
        :pswitch_40  #0000000f
        :pswitch_35  #00000010
        :pswitch_32  #00000011
    .end packed-switch
.end method

.method public abstract getViewType(I)I
.end method
