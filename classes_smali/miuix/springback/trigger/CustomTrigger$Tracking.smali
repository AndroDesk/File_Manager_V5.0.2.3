.class Lmiuix/springback/trigger/CustomTrigger$Tracking;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tracking"
.end annotation


# instance fields
.field private mLockActivated:Z

.field private mTriggerable:Z

.field private mUpTriggerable:Z

.field public final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 3
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 4
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$Tracking;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method public handleScrollStateChange(II)V
    .registers 3

    .line 1
    if-nez p2, :cond_15

    .line 3
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 5
    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 7
    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 10
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 12
    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2, p2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 18
    iput-boolean p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 20
    iput-boolean p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 22
    :cond_15
    return-void
.end method

.method public handleScrolled(II)V
    .registers 11

    .line 1
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 3
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x2

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_13

    .line 11
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 13
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 16
    move-result p1

    .line 17
    if-eq p1, p2, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 22
    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 28
    iget v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 30
    const/4 v3, 0x0

    .line 31
    if-gez v2, :cond_d0

    .line 33
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1800(Lmiuix/springback/trigger/CustomTrigger;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_28

    .line 39
    iput-boolean v3, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 41
    :cond_28
    iget-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 43
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 45
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_c2

    .line 51
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 53
    invoke-static {v4, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 56
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 58
    invoke-virtual {v4}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_48

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_48

    .line 70
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_48
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 75
    invoke-static {v4, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 78
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 80
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 83
    move-result-object v5

    .line 84
    iget-object v6, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 86
    iget v6, v6, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 88
    invoke-static {v4, v5, p1, v6}, Lmiuix/springback/trigger/CustomTrigger;->access$1500(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 91
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 93
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 95
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 98
    move-result v4

    .line 99
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 101
    invoke-virtual {v5}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 104
    move-result-object v5

    .line 105
    iget v5, v5, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 107
    if-le v4, v5, :cond_94

    .line 109
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 111
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1800(Lmiuix/springback/trigger/CustomTrigger;)Z

    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_94

    .line 117
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 119
    invoke-static {v4, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1802(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 122
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 124
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v0, v4, v5}, Lmiuix/springback/trigger/CustomTrigger;->access$1902(Lmiuix/springback/trigger/CustomTrigger;J)J

    .line 133
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyEntered()V

    .line 136
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 138
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 141
    move-result-object v4

    .line 142
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 144
    iget v5, v5, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 146
    invoke-static {v0, v4, v5}, Lmiuix/springback/trigger/CustomTrigger;->access$2000(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 149
    :cond_94
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 151
    if-eq v1, v0, :cond_c2

    .line 153
    if-eqz v0, :cond_c2

    .line 155
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyActivated()V

    .line 158
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 160
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 163
    move-result-object v1

    .line 164
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 166
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 168
    invoke-static {v0, v1, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$2100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 171
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 173
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 176
    move-result v0

    .line 177
    if-ne v0, p2, :cond_c2

    .line 179
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 181
    iget-object p2, p2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 183
    iget v0, v2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 185
    invoke-virtual {p2, v3, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 188
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 190
    iget-object v0, p2, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 192
    invoke-virtual {p2, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 195
    :cond_c2
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 197
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 200
    move-result-object v0

    .line 201
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 203
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 205
    invoke-static {p2, v0, p1, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2200(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 208
    return-void

    .line 209
    :cond_d0
    iput-boolean v3, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mUpTriggerable:Z

    .line 211
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2300(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 214
    move-result p2

    .line 215
    iget-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 217
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 219
    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 222
    move-result-object v2

    .line 223
    move v4, v3

    .line 224
    :goto_df
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 226
    invoke-virtual {v5}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    .line 229
    move-result-object v5

    .line 230
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 233
    move-result v5

    .line 234
    if-ge v4, v5, :cond_105

    .line 236
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 238
    iget v6, v5, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 240
    invoke-virtual {v5}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    .line 243
    move-result-object v5

    .line 244
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 250
    iget v5, v5, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 252
    if-le v6, v5, :cond_105

    .line 254
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 256
    invoke-static {v5, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$2302(Lmiuix/springback/trigger/CustomTrigger;I)I

    .line 259
    add-int/lit8 v4, v4, 0x1

    .line 261
    goto :goto_df

    .line 262
    :cond_105
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 264
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$2300(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 267
    move-result v4

    .line 268
    if-ltz v4, :cond_16a

    .line 270
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 272
    invoke-virtual {v4}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    .line 275
    move-result-object v4

    .line 276
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 278
    invoke-static {v5}, Lmiuix/springback/trigger/CustomTrigger;->access$2300(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 281
    move-result v5

    .line 282
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 288
    if-eqz v4, :cond_127

    .line 290
    instance-of v5, v4, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 292
    if-eqz v5, :cond_127

    .line 294
    move v5, v0

    .line 295
    goto :goto_128

    .line 296
    :cond_127
    move v5, v3

    .line 297
    :goto_128
    if-eqz v5, :cond_13e

    .line 299
    iget-object v6, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 301
    invoke-static {v6}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)F

    .line 304
    move-result v6

    .line 305
    const/high16 v7, 0x447a0000  # 1000.0f

    .line 307
    cmpg-float v6, v6, v7

    .line 309
    if-gez v6, :cond_13e

    .line 311
    iget-object v6, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 313
    invoke-static {v6}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 316
    move-result v6

    .line 317
    if-eq v6, v0, :cond_140

    .line 319
    :cond_13e
    if-nez v5, :cond_164

    .line 321
    :cond_140
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 323
    invoke-static {v5, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 326
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 328
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 331
    move-result-object v5

    .line 332
    iget-object v6, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 334
    iget v6, v6, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    .line 336
    invoke-static {v4, v5, p1, v6}, Lmiuix/springback/trigger/CustomTrigger;->access$1500(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 339
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 341
    iget v5, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 343
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 346
    move-result-object v4

    .line 347
    iget v4, v4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 349
    if-lt v5, v4, :cond_160

    .line 351
    move v4, v0

    .line 352
    goto :goto_161

    .line 353
    :cond_160
    move v4, v3

    .line 354
    :goto_161
    iput-boolean v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 356
    goto :goto_172

    .line 357
    :cond_164
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 359
    invoke-static {v4, p2}, Lmiuix/springback/trigger/CustomTrigger;->access$2302(Lmiuix/springback/trigger/CustomTrigger;I)I

    .line 362
    goto :goto_172

    .line 363
    :cond_16a
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 365
    const/4 v5, 0x0

    .line 366
    invoke-static {v4, v5}, Lmiuix/springback/trigger/CustomTrigger;->access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 369
    iput-boolean v3, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 371
    :goto_172
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 373
    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$2300(Lmiuix/springback/trigger/CustomTrigger;)I

    .line 376
    move-result v4

    .line 377
    if-eq p2, v4, :cond_236

    .line 379
    const/16 p2, 0x8

    .line 381
    if-eqz v2, :cond_192

    .line 383
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger$Action;->onExit()V

    .line 386
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 388
    invoke-virtual {v1}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 391
    move-result-object v1

    .line 392
    if-eqz v1, :cond_192

    .line 394
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 396
    invoke-virtual {v1}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :cond_192
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 405
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 408
    move-result-object v1

    .line 409
    if-eqz v1, :cond_224

    .line 411
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 413
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 416
    move-result-object v1

    .line 417
    instance-of v1, v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 419
    if-eqz v1, :cond_1b6

    .line 421
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 423
    invoke-virtual {v1}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 426
    move-result-object v1

    .line 427
    if-eqz v1, :cond_1d1

    .line 429
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 431
    invoke-virtual {v1}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    goto :goto_1d1

    .line 439
    :cond_1b6
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 441
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 444
    move-result-object p2

    .line 445
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 447
    if-eqz p2, :cond_1d1

    .line 449
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 451
    invoke-virtual {p2}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 454
    move-result-object p2

    .line 455
    if-eqz p2, :cond_1d1

    .line 457
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 459
    invoke-virtual {p2}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 462
    move-result-object p2

    .line 463
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_1d1
    :goto_1d1
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 471
    move-result-wide v1

    .line 472
    invoke-static {p2, v1, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1902(Lmiuix/springback/trigger/CustomTrigger;J)J

    .line 475
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 477
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 480
    move-result-object p2

    .line 481
    invoke-virtual {p2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyEntered()V

    .line 484
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 486
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 489
    move-result-object v1

    .line 490
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 492
    iget v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 494
    invoke-static {p2, v1, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$2000(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 497
    iput-boolean v3, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 499
    iget-boolean p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 501
    if-eqz p2, :cond_281

    .line 503
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 505
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 508
    move-result-object p2

    .line 509
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 511
    if-eqz p2, :cond_20d

    .line 513
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 515
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 517
    iget-object p2, p2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 519
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 521
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 523
    invoke-static {p2, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 526
    :cond_20d
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 528
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 531
    move-result-object p2

    .line 532
    invoke-virtual {p2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyActivated()V

    .line 535
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 537
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 540
    move-result-object v0

    .line 541
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 543
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 545
    invoke-static {p2, v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 548
    goto :goto_281

    .line 549
    :cond_224
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 551
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_281

    .line 557
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 559
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 566
    goto :goto_281

    .line 567
    :cond_236
    if-eqz v2, :cond_281

    .line 569
    iget-boolean p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 571
    if-eq v1, p2, :cond_281

    .line 573
    if-eqz v1, :cond_25a

    .line 575
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 580
    move-result-wide v0

    .line 581
    invoke-static {p2, v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1902(Lmiuix/springback/trigger/CustomTrigger;J)J

    .line 584
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyEntered()V

    .line 587
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 589
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 592
    move-result-object v0

    .line 593
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 595
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 597
    invoke-static {p2, v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2000(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 600
    iput-boolean v3, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 602
    goto :goto_281

    .line 603
    :cond_25a
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 605
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 608
    move-result-object p2

    .line 609
    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 611
    if-eqz p2, :cond_266

    .line 613
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 615
    :cond_266
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 617
    iget-object p2, p2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 619
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 621
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 623
    invoke-static {p2, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 626
    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyActivated()V

    .line 629
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 631
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 634
    move-result-object v0

    .line 635
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 637
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 639
    invoke-static {p2, v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 642
    :cond_281
    :goto_281
    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 644
    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 647
    move-result-object v0

    .line 648
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 650
    iget v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 652
    invoke-static {p2, v0, p1, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$2200(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 655
    return-void
.end method

.method public handleSpringBack()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 9
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_31

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 17
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_31

    .line 23
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 25
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 31
    if-eqz v0, :cond_31

    .line 33
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 35
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_31

    .line 41
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 43
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_31
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 52
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v0, :cond_3b

    .line 59
    return v2

    .line 60
    :cond_3b
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 62
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 65
    move-result-object v0

    .line 66
    instance-of v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 68
    const/4 v3, 0x1

    .line 69
    if-eqz v0, :cond_a7

    .line 71
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 73
    iget v4, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 75
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 78
    move-result-object v0

    .line 79
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 81
    if-le v4, v0, :cond_a7

    .line 83
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mTriggerable:Z

    .line 85
    if-eqz v0, :cond_6c

    .line 87
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 89
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 91
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 94
    move-result-object v0

    .line 95
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 97
    neg-int v0, v0

    .line 98
    invoke-virtual {v1, v2, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 101
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 103
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 105
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 108
    goto :goto_a6

    .line 109
    :cond_6c
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 111
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 116
    move-result v0

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 120
    move-result v0

    .line 121
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 123
    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 126
    move-result-object v1

    .line 127
    iget v1, v1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 132
    move-result v1

    .line 133
    int-to-float v1, v1

    .line 134
    cmpg-float v0, v0, v1

    .line 136
    if-gez v0, :cond_9f

    .line 138
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 140
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyExit()V

    .line 147
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 149
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 152
    move-result-object v1

    .line 153
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 155
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 157
    invoke-static {v0, v1, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1600(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 160
    :cond_9f
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 162
    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 164
    invoke-virtual {v0, v2, v2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 167
    :goto_a6
    return v3

    .line 168
    :cond_a7
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 170
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 173
    move-result-object v0

    .line 174
    instance-of v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 176
    if-eqz v0, :cond_c6

    .line 178
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 180
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 182
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 185
    move-result-object v0

    .line 186
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 188
    invoke-virtual {v1, v2, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 191
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 193
    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 195
    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 198
    return v3

    .line 199
    :cond_c6
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 201
    iget-object v3, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    .line 203
    invoke-virtual {v0, v3}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 206
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->mLockActivated:Z

    .line 208
    if-eqz v0, :cond_e8

    .line 210
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 212
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyTriggered()V

    .line 219
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 221
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 224
    move-result-object v3

    .line 225
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 227
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 229
    invoke-static {v0, v3, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 232
    goto :goto_fe

    .line 233
    :cond_e8
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 235
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyExit()V

    .line 242
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 244
    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 247
    move-result-object v3

    .line 248
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 250
    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 252
    invoke-static {v0, v3, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1600(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 255
    :goto_fe
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 257
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 260
    move-result-object v0

    .line 261
    if-eqz v0, :cond_10f

    .line 263
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$Tracking;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    .line 265
    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleActionView()Landroid/view/View;

    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_10f
    return v2
.end method
