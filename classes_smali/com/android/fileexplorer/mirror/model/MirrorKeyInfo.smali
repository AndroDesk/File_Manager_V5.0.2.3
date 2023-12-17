.class public Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;
.super Ljava/lang/Object;
.source "MirrorKeyInfo.java"


# instance fields
.field private keyArray:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 35
    const/4 v2, 0x4

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 39
    return-void
.end method


# virtual methods
.method public containsKey(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public handleKeyState(IZ)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    move-result v0

    .line 11
    if-eq v0, p2, :cond_17

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getArrayKey(I)I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public isCtrlPressed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public isEnterPressed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public isEscPressed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public isShiftPressed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->keyArray:Landroid/util/SparseBooleanArray;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method
