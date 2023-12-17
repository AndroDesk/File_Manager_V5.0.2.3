.class Lmiuix/androidbasewidget/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    if-nez v0, :cond_11

    .line 5
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 7
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 20
    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 3
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_b4

    .line 11
    if-eqz p3, :cond_b4

    .line 13
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 15
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 18
    move-result v0

    .line 19
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 21
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v0, v3

    .line 26
    int-to-float v3, v0

    .line 27
    const/high16 v4, 0x3f000000  # 0.5f

    .line 29
    mul-float/2addr v4, v3

    .line 30
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 33
    move-result v4

    .line 34
    if-lez v0, :cond_2e

    .line 36
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 38
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 41
    move-result v0

    .line 42
    sub-int v0, p2, v0

    .line 44
    int-to-float v0, v0

    .line 45
    div-float/2addr v0, v3

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    :goto_2f
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 50
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F

    .line 53
    move-result v3

    .line 54
    cmpl-float v3, v0, v3

    .line 56
    const-string v5, "progress"

    .line 58
    const/4 v6, 0x2

    .line 59
    if-lez v3, :cond_4c

    .line 61
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 63
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F

    .line 66
    move-result v3

    .line 67
    cmpg-float v0, v0, v3

    .line 69
    if-gez v0, :cond_4c

    .line 71
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 73
    invoke-static {v0, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 76
    goto :goto_6f

    .line 77
    :cond_4c
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 79
    int-to-float v3, p2

    .line 80
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 83
    move-result v3

    .line 84
    invoke-static {v0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 87
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 89
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    .line 92
    move-result-object v0

    .line 93
    new-array v3, v6, [Ljava/lang/Object;

    .line 95
    aput-object v5, v3, v2

    .line 97
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 99
    invoke-static {v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 102
    move-result v4

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v4

    .line 107
    aput-object v4, v3, v1

    .line 109
    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 112
    :goto_6f
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 114
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 117
    move-result v0

    .line 118
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 120
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 123
    move-result v3

    .line 124
    if-eq v0, v3, :cond_b4

    .line 126
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 128
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    .line 131
    move-result-object v0

    .line 132
    const/4 v3, 0x3

    .line 133
    new-array v4, v3, [Ljava/lang/Object;

    .line 135
    aput-object v5, v4, v2

    .line 137
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 139
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 142
    move-result v5

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v5

    .line 147
    aput-object v5, v4, v1

    .line 149
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 151
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 154
    new-array v3, v3, [F

    .line 156
    fill-array-data v3, :array_156

    .line 159
    invoke-virtual {v5, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 162
    move-result-object v3

    .line 163
    new-array v5, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 165
    new-instance v7, Lmiuix/androidbasewidget/widget/SeekBar$1$1;

    .line 167
    invoke-direct {v7, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V

    .line 170
    aput-object v7, v5, v2

    .line 172
    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 175
    move-result-object v3

    .line 176
    aput-object v3, v4, v6

    .line 178
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 181
    :cond_b4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 183
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F

    .line 186
    move-result v3

    .line 187
    invoke-static {v0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    .line 190
    move-result v0

    .line 191
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 193
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F

    .line 196
    move-result v4

    .line 197
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    .line 200
    move-result v3

    .line 201
    if-ge p2, v0, :cond_d1

    .line 203
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 205
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    move p2, v0

    .line 209
    goto :goto_d9

    .line 210
    :cond_d1
    if-le p2, v3, :cond_d9

    .line 212
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 214
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    move p2, v3

    .line 218
    :cond_d9
    :goto_d9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 220
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 223
    move-result v0

    .line 224
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 226
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    .line 229
    move-result v3

    .line 230
    if-eq v0, v3, :cond_f7

    .line 232
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 234
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 237
    move-result v0

    .line 238
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 240
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 243
    move-result v3

    .line 244
    if-ne v0, v3, :cond_f6

    .line 246
    goto :goto_f7

    .line 247
    :cond_f6
    move v1, v2

    .line 248
    :cond_f7
    :goto_f7
    if-eqz p3, :cond_13e

    .line 250
    const-string v0, "2.0"

    .line 252
    if-eqz v1, :cond_133

    .line 254
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 256
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    .line 259
    move-result v2

    .line 260
    if-nez v2, :cond_133

    .line 262
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_12d

    .line 268
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 270
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 273
    move-result v0

    .line 274
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 276
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 279
    move-result v2

    .line 280
    if-ne v0, v2, :cond_123

    .line 282
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 285
    move-result-object v0

    .line 286
    const/16 v2, 0xcb

    .line 288
    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 291
    goto :goto_13e

    .line 292
    :cond_123
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 295
    move-result-object v0

    .line 296
    const/16 v2, 0xca

    .line 298
    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 301
    goto :goto_13e

    .line 302
    :cond_12d
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 304
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 307
    goto :goto_13e

    .line 308
    :cond_133
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_13e

    .line 314
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 316
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 319
    :cond_13e
    :goto_13e
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 321
    invoke-static {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z

    .line 324
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 326
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_154

    .line 332
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 334
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 337
    move-result-object v0

    .line 338
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 341
    :cond_154
    return-void

    .line 342
    nop

    .line 343
    :array_156
    .array-data 4
        0x43af0000  # 350.0f
        0x3f666666  # 0.9f
        0x3e19999a  # 0.15f
    .end array-data
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 3
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 11
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 18
    :cond_11
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 3
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 11
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 18
    :cond_11
    return-void
.end method
