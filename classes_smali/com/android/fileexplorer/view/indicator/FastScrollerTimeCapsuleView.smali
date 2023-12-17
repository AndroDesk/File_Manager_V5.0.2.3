.class public Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;
.super Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;
.source "FastScrollerTimeCapsuleView.java"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDateColor:I

.field private mDateMarginStart:I

.field private mDateMarginTop:I

.field private mDateRect:Landroid/graphics/Rect;

.field private mDateTextSize:I

.field private mMonth:Ljava/lang/String;

.field private mMonthColor:I

.field private mMonthRect:Landroid/graphics/Rect;

.field private mMonthTextSize:I

.field private mTime:J

.field private mYear:Ljava/lang/String;

.field private mYearColor:I

.field private mYearRect:Landroid/graphics/Rect;

.field private mYearTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_11c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_11c

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_11c

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_38

    .line 21
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 23
    int-to-float v3, v2

    .line 24
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mScaleX:F

    .line 26
    mul-float/2addr v3, v4

    .line 27
    float-to-int v3, v3

    .line 28
    sub-int v4, v2, v3

    .line 30
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mIsInRight:Z

    .line 32
    if-eqz v5, :cond_2b

    .line 34
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 36
    add-int/2addr v4, v3

    .line 37
    add-int/2addr v2, v3

    .line 38
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 40
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    goto :goto_33

    .line 44
    :cond_2b
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 46
    add-int/2addr v3, v2

    .line 47
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 49
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    :goto_33
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthColor:I

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 73
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthTextSize:I

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 86
    move-result v3

    .line 87
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 97
    move-result-object v0

    .line 98
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    .line 100
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 102
    int-to-float v3, v3

    .line 103
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 105
    sub-float/2addr v3, v4

    .line 106
    float-to-int v3, v3

    .line 107
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 109
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 111
    add-int/2addr v2, v5

    .line 112
    int-to-float v2, v2

    .line 113
    int-to-float v3, v3

    .line 114
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateColor:I

    .line 123
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 128
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 130
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 135
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateTextSize:I

    .line 137
    int-to-float v3, v3

    .line 138
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 148
    move-result v4

    .line 149
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateRect:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 154
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 159
    move-result-object v2

    .line 160
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    .line 162
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 167
    move-result v4

    .line 168
    add-int/2addr v4, v3

    .line 169
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginStart:I

    .line 171
    add-int/2addr v4, v3

    .line 172
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 174
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginTop:I

    .line 176
    add-int/2addr v3, v5

    .line 177
    int-to-float v3, v3

    .line 178
    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 180
    sub-float/2addr v3, v5

    .line 181
    float-to-int v3, v3

    .line 182
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 184
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 186
    add-int/2addr v6, v4

    .line 187
    int-to-float v6, v6

    .line 188
    int-to-float v3, v3

    .line 189
    iget-object v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 191
    invoke-virtual {p1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 196
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearTextSize:I

    .line 198
    int-to-float v6, v6

    .line 199
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 204
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearColor:I

    .line 206
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 211
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mAlpha:I

    .line 213
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 220
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 223
    move-result v7

    .line 224
    iget-object v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    .line 226
    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 229
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 231
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 234
    move-result-object v1

    .line 235
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 237
    add-float/2addr v3, v2

    .line 238
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 240
    sub-float/2addr v3, v1

    .line 241
    float-to-int v1, v3

    .line 242
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 244
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTranslationX:I

    .line 246
    add-int/2addr v3, v4

    .line 247
    int-to-float v3, v3

    .line 248
    int-to-float v1, v1

    .line 249
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 251
    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 259
    move-result v1

    .line 260
    add-int/2addr v1, v4

    .line 261
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    .line 263
    add-int/2addr v1, v2

    .line 264
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 266
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 268
    int-to-float v1, v1

    .line 269
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 271
    sub-float/2addr v1, v2

    .line 272
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 274
    add-float/2addr v1, v0

    .line 275
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    .line 277
    int-to-float v0, v0

    .line 278
    add-float/2addr v1, v0

    .line 279
    float-to-int v0, v1

    .line 280
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    :cond_11c
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V
    .registers 8

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->getContent()Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    .line 13
    sub-long/2addr v2, v0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 17
    move-result-wide v2

    .line 18
    long-to-double v2, v2

    .line 19
    const-wide v4, 0x3fb999999999999aL  # 0.1

    .line 24
    cmpl-double p1, v2, v4

    .line 26
    if-gtz p1, :cond_27

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 30
    if-eqz p1, :cond_27

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_27

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 38
    if-nez p1, :cond_51

    .line 40
    :cond_27
    iput-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getYear(Landroid/content/Context;J)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 56
    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    .line 58
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getMonth(Landroid/content/Context;J)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 70
    iget-wide v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mTime:J

    .line 72
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->getDay(Landroid/content/Context;J)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 82
    :cond_51
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setInvisible()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setInvisible()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDate:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonth:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setStyle(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastCapsule:[I

    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f0401c9

    .line 9
    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_8f

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    packed-switch v3, :pswitch_data_d2

    .line 29
    :pswitch_1c  #0x4, 0x5
    goto/16 :goto_8c

    .line 31
    :pswitch_1e  #0xf
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 34
    move-result v3

    .line 35
    float-to-int v3, v3

    .line 36
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearTextSize:I

    .line 38
    goto/16 :goto_8c

    .line 40
    :pswitch_27  #0xe
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 43
    move-result v3

    .line 44
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearColor:I

    .line 46
    goto :goto_8c

    .line 47
    :pswitch_2e  #0xd
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthTextSize:I

    .line 54
    goto :goto_8c

    .line 55
    :pswitch_36  #0xc
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 58
    move-result v3

    .line 59
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthColor:I

    .line 61
    goto :goto_8c

    .line 62
    :pswitch_3d  #0xb
    const/high16 v4, 0x42380000  # 46.0f

    .line 64
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 67
    move-result v3

    .line 68
    float-to-int v3, v3

    .line 69
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    .line 71
    goto :goto_8c

    .line 72
    :pswitch_47  #0xa
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 75
    move-result v3

    .line 76
    float-to-int v3, v3

    .line 77
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateTextSize:I

    .line 79
    goto :goto_8c

    .line 80
    :pswitch_4f  #0x9
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 83
    move-result v3

    .line 84
    float-to-int v3, v3

    .line 85
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginTop:I

    .line 87
    goto :goto_8c

    .line 88
    :pswitch_57  #0x8
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 91
    move-result v3

    .line 92
    float-to-int v3, v3

    .line 93
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateMarginStart:I

    .line 95
    goto :goto_8c

    .line 96
    :pswitch_5f  #0x7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 99
    move-result v3

    .line 100
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateColor:I

    .line 102
    goto :goto_8c

    .line 103
    :pswitch_66  #0x6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 106
    move-result v3

    .line 107
    float-to-int v3, v3

    .line 108
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mTopMargin:I

    .line 110
    goto :goto_8c

    .line 111
    :pswitch_6e  #0x3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 114
    move-result v3

    .line 115
    float-to-int v3, v3

    .line 116
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mStartMargin:I

    .line 118
    goto :goto_8c

    .line 119
    :pswitch_76  #0x2
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 122
    move-result v3

    .line 123
    float-to-int v3, v3

    .line 124
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mEndMargin:I

    .line 126
    goto :goto_8c

    .line 127
    :pswitch_7e  #0x1
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 130
    move-result v3

    .line 131
    float-to-int v3, v3

    .line 132
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBottomMargin:I

    .line 134
    goto :goto_8c

    .line 135
    :pswitch_86  #0x0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 138
    move-result-object v3

    .line 139
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_12

    .line 144
    :cond_8f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleWidth:I

    .line 149
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 151
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    .line 153
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 155
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    if-eqz v0, :cond_b6

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 162
    move-result v0

    .line 163
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 166
    move-result p1

    .line 167
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewWidth:I

    .line 169
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mDefaultTimeCapsuleHeight:I

    .line 171
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 176
    move-result v0

    .line 177
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 180
    move-result p1

    .line 181
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mViewHeight:I

    .line 183
    :cond_b6
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->mPaint:Landroid/graphics/Paint;

    .line 185
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    new-instance p1, Landroid/graphics/Rect;

    .line 191
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mMonthRect:Landroid/graphics/Rect;

    .line 196
    new-instance p1, Landroid/graphics/Rect;

    .line 198
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYearRect:Landroid/graphics/Rect;

    .line 203
    new-instance p1, Landroid/graphics/Rect;

    .line 205
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mDateRect:Landroid/graphics/Rect;

    .line 210
    return-void

    .line 211
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_86  #00000000
        :pswitch_7e  #00000001
        :pswitch_76  #00000002
        :pswitch_6e  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_66  #00000006
        :pswitch_5f  #00000007
        :pswitch_57  #00000008
        :pswitch_4f  #00000009
        :pswitch_47  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_36  #0000000c
        :pswitch_2e  #0000000d
        :pswitch_27  #0000000e
        :pswitch_1e  #0000000f
    .end packed-switch
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->mYear:Ljava/lang/String;

    .line 3
    return-void
.end method
