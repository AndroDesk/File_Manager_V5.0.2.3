.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Lr0/c$c;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-direct {p0}, Lr0/c$c;-><init>()V

    .line 6
    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 7
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 12
    move-result v0

    .line 13
    add-int/2addr v0, v1

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 16
    if-le p1, v0, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 6
    move-result p1

    .line 7
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    iget-boolean v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 11
    if-eqz v0, :cond_f

    .line 13
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 18
    :goto_11
    invoke-static {p2, p1, p3}, La/b;->q(III)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 9
    return p1

    .line 10
    :cond_9
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 12
    return p1
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_10

    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 6
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 6
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p3, v0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x3

    .line 7
    if-gez v1, :cond_27

    .line 9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_17

    .line 17
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 21
    :goto_14
    move v2, v4

    .line 22
    goto/16 :goto_129

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 27
    move-result p2

    .line 28
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 30
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 32
    if-le p2, v0, :cond_24

    .line 34
    move p2, v0

    .line 35
    goto/16 :goto_c1

    .line 37
    :cond_24
    iget p2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 39
    goto :goto_14

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 42
    iget-boolean v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 44
    if-eqz v5, :cond_85

    .line 46
    invoke-virtual {v1, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_85

    .line 52
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p2

    .line 56
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v0

    .line 60
    cmpg-float p2, p2, v0

    .line 62
    if-gez p2, :cond_45

    .line 64
    const/high16 p2, 0x43fa0000  # 500.0f

    .line 66
    cmpl-float p2, p3, p2

    .line 68
    if-gtz p2, :cond_4b

    .line 70
    :cond_45
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->releasedLow(Landroid/view/View;)Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_52

    .line 76
    :cond_4b
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 78
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 80
    const/4 v2, 0x5

    .line 81
    goto/16 :goto_129

    .line 83
    :cond_52
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 85
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5f

    .line 91
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 93
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 95
    goto :goto_14

    .line 96
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 99
    move-result p2

    .line 100
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 102
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 104
    sub-int/2addr p2, p3

    .line 105
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 112
    move-result p3

    .line 113
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 115
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 117
    sub-int/2addr p3, v0

    .line 118
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 121
    move-result p3

    .line 122
    if-ge p2, p3, :cond_80

    .line 124
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 126
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 128
    goto :goto_14

    .line 129
    :cond_80
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 131
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 133
    goto :goto_c1

    .line 134
    :cond_85
    cmpl-float v0, p3, v0

    .line 136
    if-eqz v0, :cond_c8

    .line 138
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 141
    move-result p2

    .line 142
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 145
    move-result p3

    .line 146
    cmpl-float p2, p2, p3

    .line 148
    if-lez p2, :cond_96

    .line 150
    goto :goto_c8

    .line 151
    :cond_96
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 153
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_a4

    .line 159
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 161
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 163
    goto/16 :goto_129

    .line 165
    :cond_a4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 168
    move-result p2

    .line 169
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 171
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 173
    sub-int p3, p2, p3

    .line 175
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 178
    move-result p3

    .line 179
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 181
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 183
    sub-int/2addr p2, v0

    .line 184
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 187
    move-result p2

    .line 188
    if-ge p3, p2, :cond_c3

    .line 190
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 194
    :goto_c1
    move v2, v3

    .line 195
    goto :goto_129

    .line 196
    :cond_c3
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 198
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 200
    goto :goto_129

    .line 201
    :cond_c8
    :goto_c8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 204
    move-result p2

    .line 205
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 207
    invoke-static {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 210
    move-result p3

    .line 211
    if-eqz p3, :cond_f4

    .line 213
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 215
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 217
    sub-int p3, p2, p3

    .line 219
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 222
    move-result p3

    .line 223
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 225
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 227
    sub-int/2addr p2, v0

    .line 228
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 231
    move-result p2

    .line 232
    if-ge p3, p2, :cond_ef

    .line 234
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 236
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 238
    goto/16 :goto_14

    .line 240
    :cond_ef
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 242
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 244
    goto :goto_129

    .line 245
    :cond_f4
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 247
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 249
    if-ge p2, v0, :cond_10f

    .line 251
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 253
    sub-int p3, p2, p3

    .line 255
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 258
    move-result p3

    .line 259
    if-ge p2, p3, :cond_10a

    .line 261
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 263
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 265
    goto/16 :goto_14

    .line 267
    :cond_10a
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 269
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 271
    goto :goto_c1

    .line 272
    :cond_10f
    sub-int p3, p2, v0

    .line 274
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 277
    move-result p3

    .line 278
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 280
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 282
    sub-int/2addr p2, v0

    .line 283
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 286
    move-result p2

    .line 287
    if-ge p3, p2, :cond_125

    .line 289
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 291
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 293
    goto :goto_c1

    .line 294
    :cond_125
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 296
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 298
    :goto_129
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 300
    const/4 v0, 0x1

    .line 301
    invoke-virtual {p3, p1, v2, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 304
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_9

    .line 9
    return v3

    .line 10
    :cond_9
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 12
    if-eqz v4, :cond_e

    .line 14
    return v3

    .line 15
    :cond_e
    const/4 v4, 0x3

    .line 16
    if-ne v1, v4, :cond_2b

    .line 18
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 20
    if-ne v1, p2, :cond_2b

    .line 22
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 24
    if-eqz p2, :cond_20

    .line 26
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/view/View;

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p2, 0x0

    .line 34
    :goto_21
    if-eqz p2, :cond_2b

    .line 36
    const/4 v0, -0x1

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2b

    .line 43
    return v3

    .line 44
    :cond_2b
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 46
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 48
    if-eqz p2, :cond_38

    .line 50
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    if-ne p2, p1, :cond_38

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v2, v3

    .line 58
    :goto_39
    return v2
.end method
