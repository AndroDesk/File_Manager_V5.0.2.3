.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_163

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    goto/16 :goto_163

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p1

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    if-le v0, p1, :cond_2c

    .line 31
    sub-int/2addr v0, p1

    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 34
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 36
    add-int/2addr p1, v0

    .line 37
    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 39
    iget p1, v1, Landroid/graphics/Rect;->right:I

    .line 41
    sub-int/2addr p1, v0

    .line 42
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 44
    goto :goto_39

    .line 45
    :cond_2c
    sub-int/2addr p1, v0

    .line 46
    div-int/lit8 p1, p1, 0x2

    .line 48
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 50
    add-int/2addr v0, p1

    .line 51
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 53
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 55
    sub-int/2addr v0, p1

    .line 56
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 58
    :goto_39
    new-instance p1, Landroid/graphics/Path;

    .line 60
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 63
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 65
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 68
    move-result v0

    .line 69
    const/high16 v3, 0x40000000  # 2.0f

    .line 71
    const/16 v4, 0x40

    .line 73
    const/16 v5, 0x20

    .line 75
    const/4 v6, 0x1

    .line 76
    if-eq v0, v5, :cond_f3

    .line 78
    if-eq v0, v4, :cond_f3

    .line 80
    packed-switch v0, :pswitch_data_164

    .line 83
    goto/16 :goto_14f

    .line 85
    :pswitch_54  #0x9, 0xa
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 87
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 90
    move-result v0

    .line 91
    if-eq v0, v6, :cond_66

    .line 93
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 95
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 98
    move-result v0

    .line 99
    const/16 v3, 0x9

    .line 101
    if-eq v0, v3, :cond_78

    .line 103
    :cond_66
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 105
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 108
    move-result v0

    .line 109
    if-ne v0, v6, :cond_79

    .line 111
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 113
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 116
    move-result v0

    .line 117
    const/16 v3, 0xa

    .line 119
    if-ne v0, v3, :cond_79

    .line 121
    :cond_78
    move v2, v6

    .line 122
    :cond_79
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 124
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 131
    move-result v0

    .line 132
    int-to-float v0, v0

    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    const v0, 0x3f333333  # 0.7f

    .line 140
    if-eqz v2, :cond_ac

    .line 142
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 144
    invoke-static {v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 151
    move-result v2

    .line 152
    neg-int v2, v2

    .line 153
    int-to-float v2, v2

    .line 154
    mul-float/2addr v2, v0

    .line 155
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 157
    int-to-float v0, v0

    .line 158
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 160
    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 167
    move-result v4

    .line 168
    int-to-float v4, v4

    .line 169
    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 172
    goto :goto_cd

    .line 173
    :cond_ac
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 175
    int-to-float v2, v2

    .line 176
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 178
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 185
    move-result v3

    .line 186
    neg-int v3, v3

    .line 187
    int-to-float v3, v3

    .line 188
    mul-float/2addr v3, v0

    .line 189
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 191
    int-to-float v0, v0

    .line 192
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 194
    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 201
    move-result v4

    .line 202
    int-to-float v4, v4

    .line 203
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 206
    :goto_cd
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 209
    goto/16 :goto_14f

    .line 211
    :pswitch_d2  #0x8
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 213
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 215
    add-int/2addr v0, v2

    .line 216
    int-to-float v0, v0

    .line 217
    div-float/2addr v0, v3

    .line 218
    int-to-float v2, v2

    .line 219
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 221
    int-to-float v3, v3

    .line 222
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 228
    move-result v2

    .line 229
    neg-int v2, v2

    .line 230
    int-to-float v2, v2

    .line 231
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 233
    int-to-float v3, v3

    .line 234
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 236
    int-to-float v4, v4

    .line 237
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 243
    goto :goto_14f

    .line 244
    :cond_f3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 246
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 249
    move-result v0

    .line 250
    if-eq v0, v6, :cond_103

    .line 252
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 254
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 257
    move-result v0

    .line 258
    if-eq v0, v5, :cond_113

    .line 260
    :cond_103
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 262
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 265
    move-result v0

    .line 266
    if-ne v0, v6, :cond_114

    .line 268
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 270
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 273
    move-result v0

    .line 274
    if-ne v0, v4, :cond_114

    .line 276
    :cond_113
    move v2, v6

    .line 277
    :cond_114
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 279
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 281
    add-int/2addr v0, v4

    .line 282
    int-to-float v0, v0

    .line 283
    div-float/2addr v0, v3

    .line 284
    if-eqz v2, :cond_134

    .line 286
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 288
    int-to-float v2, v2

    .line 289
    int-to-float v3, v4

    .line 290
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 296
    move-result v2

    .line 297
    neg-int v2, v2

    .line 298
    int-to-float v2, v2

    .line 299
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 301
    int-to-float v3, v3

    .line 302
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 304
    int-to-float v4, v4

    .line 305
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 308
    goto :goto_14c

    .line 309
    :cond_134
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 311
    int-to-float v2, v2

    .line 312
    int-to-float v3, v4

    .line 313
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 316
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 318
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 321
    move-result v3

    .line 322
    add-int/2addr v3, v2

    .line 323
    int-to-float v2, v3

    .line 324
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 326
    int-to-float v3, v3

    .line 327
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 329
    int-to-float v4, v4

    .line 330
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 333
    :goto_14c
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 336
    :goto_14f
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_159

    .line 342
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 345
    goto :goto_163

    .line 346
    :cond_159
    const-string p1, "ArrowPopupView"

    .line 348
    const-string v0, "outline path is not convex"

    .line 350
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 356
    :cond_163
    :goto_163
    return-void

    .line 357
    :pswitch_data_164
    .packed-switch 0x8
        :pswitch_d2  #00000008
        :pswitch_54  #00000009
        :pswitch_54  #0000000a
    .end packed-switch
.end method
