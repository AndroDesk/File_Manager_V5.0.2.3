.class public Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;
.super Ljava/lang/Object;
.source "MirrorKeyInfo.java"


# instance fields
.field private keyArray:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method


# virtual methods
.method public containsKey(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getArrayKey(I)I
    .registers 3

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1b

    packed-switch p1, :pswitch_data_20

    const/4 p1, -0x1

    return p1

    :pswitch_15  #0x71, 0x72
    const/4 p1, 0x0

    return p1

    :pswitch_17  #0x70
    const/4 p1, 0x4

    return p1

    :pswitch_19  #0x6f
    const/4 p1, 0x2

    return p1

    :cond_1b
    const/4 p1, 0x3

    return p1

    :cond_1d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x6f
        :pswitch_19  #0000006f
        :pswitch_17  #00000070
        :pswitch_15  #00000071
        :pswitch_15  #00000072
    .end packed-switch
.end method

.method public getKey(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    move-result p1

    return p1
.end method

.method public handleKeyState(IZ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public isCtrlPressed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isEnterPressed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isEscPressed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isShiftPressed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
