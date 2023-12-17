.class Lmiuix/springback/trigger/CustomTrigger$3;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/core/view/ViewCompatOnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method public constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 11

    .line 1
    sub-int/2addr p3, p5

    .line 2
    sub-int/2addr p2, p4

    .line 3
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 5
    iget p5, p4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 7
    iput p5, p4, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 12
    move-result p5

    .line 13
    neg-int p5, p5

    .line 14
    iput p5, p4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 16
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 18
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$500(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    .line 21
    move-result-object p4

    .line 22
    const/4 p5, 0x1

    .line 23
    new-array v0, p5, [F

    .line 25
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 27
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 29
    int-to-float v1, v1

    .line 30
    const/4 v2, 0x0

    .line 31
    aput v1, v0, v2

    .line 33
    invoke-virtual {p4, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    .line 36
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 38
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$500(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 45
    move-result v0

    .line 46
    invoke-static {p4, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$602(Lmiuix/springback/trigger/CustomTrigger;F)F

    .line 49
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 51
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 58
    move-result v0

    .line 59
    invoke-virtual {p4, v0}, Landroid/view/View;->setTop(I)V

    .line 62
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 64
    iget-object p4, p4, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 66
    invoke-virtual {p4}, Lmiuix/springback/view/SpringBackLayout;->getTarget()Landroid/view/View;

    .line 69
    move-result-object p4

    .line 70
    if-eqz p4, :cond_54

    .line 72
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 74
    iget-object p4, p4, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 76
    invoke-virtual {p4}, Lmiuix/springback/view/SpringBackLayout;->getTarget()Landroid/view/View;

    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    .line 83
    move-result p4

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move p4, v2

    .line 86
    :goto_55
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 88
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$700(Lmiuix/springback/trigger/CustomTrigger;)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_87

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 97
    move-result v0

    .line 98
    if-ltz v0, :cond_87

    .line 100
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 102
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$700(Lmiuix/springback/trigger/CustomTrigger;)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 108
    iget-object v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 113
    move-result v1

    .line 114
    sub-int/2addr v1, p4

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 118
    move-result v3

    .line 119
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 121
    iget-object v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 126
    move-result v4

    .line 127
    sub-int/2addr v4, p4

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 131
    move-result p4

    .line 132
    add-int/2addr p4, v4

    .line 133
    invoke-virtual {v0, v2, v1, v3, p4}, Landroid/view/View;->layout(IIII)V

    .line 136
    :cond_87
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 138
    iget v0, p4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 140
    if-gez v0, :cond_de

    .line 142
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 145
    move-result-object p4

    .line 146
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 148
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 151
    move-result-object v0

    .line 152
    if-ne p4, v0, :cond_de

    .line 154
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 156
    invoke-virtual {p4}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 159
    move-result-object p4

    .line 160
    if-eqz p4, :cond_de

    .line 162
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 164
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 167
    move-result-object v0

    .line 168
    invoke-static {p4, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F

    .line 171
    move-result p4

    .line 172
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 174
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 177
    move-result v0

    .line 178
    if-ne v0, p5, :cond_de

    .line 180
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 182
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 184
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 187
    move-result v0

    .line 188
    int-to-float v0, v0

    .line 189
    cmpg-float v0, v0, p4

    .line 191
    if-ltz v0, :cond_cd

    .line 193
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 195
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 200
    move-result v0

    .line 201
    int-to-float v0, v0

    .line 202
    cmpg-float p4, v0, p4

    .line 204
    if-gez p4, :cond_de

    .line 206
    :cond_cd
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 208
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 211
    move-result-object p4

    .line 212
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 214
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 216
    if-ne p4, v1, :cond_de

    .line 218
    iget-object p4, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 220
    invoke-virtual {v0, p4}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 223
    :cond_de
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 225
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 228
    move-result-object p4

    .line 229
    if-eqz p4, :cond_158

    .line 231
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 233
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 236
    move-result-object p4

    .line 237
    instance-of p4, p4, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 239
    if-eqz p4, :cond_158

    .line 241
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 243
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 246
    move-result-object v0

    .line 247
    invoke-static {p4, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F

    .line 250
    move-result p4

    .line 251
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 253
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 256
    move-result v0

    .line 257
    if-ne v0, p5, :cond_12d

    .line 259
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 261
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 263
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 266
    move-result v0

    .line 267
    int-to-float v0, v0

    .line 268
    cmpg-float v0, v0, p4

    .line 270
    if-ltz v0, :cond_11c

    .line 272
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 274
    iget v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 276
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 279
    move-result v0

    .line 280
    int-to-float v0, v0

    .line 281
    cmpg-float p4, v0, p4

    .line 283
    if-gez p4, :cond_12d

    .line 285
    :cond_11c
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 287
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 290
    move-result-object p4

    .line 291
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 293
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 295
    if-ne p4, v1, :cond_12d

    .line 297
    iget-object p4, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 299
    invoke-virtual {v0, p4}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 302
    :cond_12d
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 304
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 307
    move-result p4

    .line 308
    if-ne p4, p5, :cond_158

    .line 310
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 312
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 315
    move-result-object p4

    .line 316
    iget-object p5, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 318
    iget-object v0, p5, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 320
    if-ne p4, v0, :cond_158

    .line 322
    iget p4, p5, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 324
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 327
    move-result p4

    .line 328
    iget-object p5, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 330
    invoke-static {p5}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 333
    move-result-object p5

    .line 334
    iget p5, p5, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 336
    if-le p4, p5, :cond_158

    .line 338
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 340
    iget-object p5, p4, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 342
    invoke-virtual {p4, p5}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 345
    :cond_158
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 347
    invoke-static {p4}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 350
    move-result-object p4

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 354
    move-result p5

    .line 355
    invoke-virtual {p4, p3, p5}, Lmiuix/springback/trigger/TriggerState;->handleScrolled(II)V

    .line 358
    iget-object p4, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 360
    check-cast p1, Lmiuix/springback/view/SpringBackLayout;

    .line 362
    iget p5, p4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 364
    invoke-virtual {p4, p1, p2, p3, p5}, Lmiuix/springback/trigger/CustomTrigger;->onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V

    .line 367
    return-void
.end method

.method public onStateChanged(IIZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {v0, p2}, Lmiuix/springback/trigger/CustomTrigger;->access$202(Lmiuix/springback/trigger/CustomTrigger;I)I

    .line 6
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 8
    invoke-static {v0, p3}, Lmiuix/springback/trigger/CustomTrigger;->access$302(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 11
    iget-object p3, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 13
    invoke-static {p3}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrollStateChange(II)V

    .line 20
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 22
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 28
    iget-object p3, p2, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 30
    if-eq p1, p3, :cond_41

    .line 32
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 42
    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    iget-object p3, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 48
    invoke-static {p3}, Lmiuix/springback/trigger/CustomTrigger;->access$400(Lmiuix/springback/trigger/CustomTrigger;)Z

    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_5a

    .line 54
    if-eqz p1, :cond_5a

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_5a

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    goto :goto_5a

    .line 66
    :cond_41
    invoke-virtual {p2}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 72
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$400(Lmiuix/springback/trigger/CustomTrigger;)Z

    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_5a

    .line 78
    if-eqz p1, :cond_5a

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5a

    .line 86
    const/16 p2, 0x8

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method
