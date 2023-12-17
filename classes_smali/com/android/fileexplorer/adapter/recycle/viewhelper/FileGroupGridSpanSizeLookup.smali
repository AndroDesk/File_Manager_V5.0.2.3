.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "FileGroupGridSpanSizeLookup.java"


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

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mHeaderCount:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpanSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fuck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mHeaderCount:I

    if-ge p1, v0, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->getViewType(I)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3d

    packed-switch p1, :pswitch_data_44

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v0

    return p1

    :pswitch_32  #0x11
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    return p1

    :pswitch_35  #0x10
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    div-int/lit8 p1, p1, 0x3

    return p1

    :pswitch_3a  #0xe
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    return p1

    :cond_3d
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    return p1

    :cond_40
    :pswitch_40  #0xf
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;->mSpanCount:I

    div-int/2addr p1, v0

    return p1

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
