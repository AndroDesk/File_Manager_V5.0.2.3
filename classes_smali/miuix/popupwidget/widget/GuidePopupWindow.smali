.class public Lmiuix/popupwidget/widget/GuidePopupWindow;
.super Lmiuix/popupwidget/widget/ArrowPopupWindow;
.source "GuidePopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x12

.field public static final ARROW_BOTTOM_MODE:I = 0x10

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x11

.field public static final ARROW_LEFT_MODE:I = 0x20

.field public static final ARROW_RIGHT_MODE:I = 0x40

.field public static final ARROW_TOP_LEFT_MODE:I = 0x9

.field public static final ARROW_TOP_MODE:I = 0x8

.field public static final ARROW_TOP_RIGHT_MODE:I = 0xa

.field private static final DEFAULT_SHOW_DURATION:I = 0x1388


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mGuideView:Landroid/widget/LinearLayout;

.field private mShowDuration:I

.field private mTextViewHeight:I

.field private mTextViewWidth:I

.field private mUseWrapContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 3
    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 6
    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 9
    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 12
    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addGuideTextView(Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const-string v0, "\n"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_68

    .line 16
    array-length v0, p1

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_68

    .line 20
    :cond_13
    new-instance v0, Landroid/graphics/Point;

    .line 22
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 25
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 32
    array-length v1, p1

    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    :goto_22
    if-ge v3, v1, :cond_68

    .line 37
    aget-object v4, p1, v3

    .line 39
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x0

    .line 46
    sget v8, Lmiuix/popupwidget/R$attr;->guidePopupTextStyle:I

    .line 48
    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v6

    .line 59
    sget v7, Lmiuix/popupwidget/R$dimen;->miuix_popup_guide_text_view_max_width:I

    .line 61
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v6

    .line 65
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 68
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v4, 0x5

    .line 72
    invoke-virtual {v5, v4}, Landroid/view/View;->setTextDirection(I)V

    .line 75
    invoke-direct {p0, v5, v0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->getTextViewHeightAndWidth(Landroid/view/View;Landroid/graphics/Point;)[I

    .line 78
    move-result-object v4

    .line 79
    iget v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    .line 81
    aget v7, v4, v2

    .line 83
    add-int/2addr v6, v7

    .line 84
    iput v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    .line 86
    iget v6, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 88
    const/4 v7, 0x1

    .line 89
    aget v4, v4, v7

    .line 91
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v4

    .line 95
    iput v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 97
    iget-object v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 104
    goto :goto_22

    .line 105
    :cond_68
    :goto_68
    return-void
.end method

.method private getTextViewHeightAndWidth(Landroid/view/View;Landroid/graphics/Point;)[I
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    iget v1, p2, Landroid/graphics/Point;->x:I

    .line 6
    const/high16 v2, -0x80000000

    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    move-result v1

    .line 12
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 14
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result p2

    .line 25
    const/4 v1, 0x0

    .line 26
    aput p2, v0, v1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    aput p1, v0, p2

    .line 35
    return-object v0
.end method

.method private showWithWrapContent(Landroid/view/View;)V
    .registers 15

    .line 1
    const/4 v0, -0x2

    .line 2
    invoke-super {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSuperHeight(I)V

    .line 5
    invoke-super {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSuperWidth(I)V

    .line 8
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v1, v0, [I

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 19
    const/4 v2, 0x0

    .line 20
    aget v3, v1, v2

    .line 22
    const/4 v4, 0x1

    .line 23
    aget v1, v1, v4

    .line 25
    iget-object v5, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 27
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getArrowMode()I

    .line 30
    move-result v6

    .line 31
    invoke-virtual {v5, v6}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowImageHeightAndWidth(I)[I

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v6

    .line 43
    sget v7, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_horizontal_padding:I

    .line 45
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    move-result v6

    .line 49
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v7

    .line 57
    sget v8, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_vertical_padding:I

    .line 59
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    move-result v7

    .line 63
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v8

    .line 71
    sget v9, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingStart:I

    .line 73
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 76
    move-result v8

    .line 77
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v9

    .line 85
    sget v10, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingTop:I

    .line 87
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 90
    move-result v9

    .line 91
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v10

    .line 99
    sget v11, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_guide_popup_margin_horizontal:I

    .line 101
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 104
    move-result v10

    .line 105
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getArrowMode()I

    .line 108
    move-result v11

    .line 109
    const/16 v12, 0x20

    .line 111
    if-eq v11, v12, :cond_d8

    .line 113
    const/16 v12, 0x40

    .line 115
    if-eq v11, v12, :cond_b1

    .line 117
    packed-switch v11, :pswitch_data_158

    .line 120
    packed-switch v11, :pswitch_data_162

    .line 123
    goto/16 :goto_ff

    .line 125
    :pswitch_7c  #0x11, 0x12
    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    .line 127
    aget v6, v5, v2

    .line 129
    goto :goto_92

    .line 130
    :pswitch_81  #0x10
    mul-int/2addr v8, v0

    .line 131
    mul-int/2addr v6, v0

    .line 132
    add-int/2addr v6, v8

    .line 133
    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 135
    add-int/2addr v6, v4

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 139
    move-result v4

    .line 140
    sub-int/2addr v6, v4

    .line 141
    div-int/2addr v6, v0

    .line 142
    sub-int/2addr v3, v6

    .line 143
    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    .line 145
    aget v6, v5, v2

    .line 147
    :goto_92
    add-int/2addr v4, v6

    .line 148
    add-int/2addr v4, v9

    .line 149
    add-int/2addr v4, v7

    .line 150
    :goto_95
    sub-int/2addr v1, v4

    .line 151
    goto/16 :goto_ff

    .line 153
    :pswitch_98  #0x9, 0xa
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    move-result v4

    .line 157
    goto :goto_ae

    .line 158
    :pswitch_9d  #0x8
    mul-int/2addr v8, v0

    .line 159
    mul-int/2addr v6, v0

    .line 160
    add-int/2addr v6, v8

    .line 161
    iget v4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 163
    add-int/2addr v6, v4

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 167
    move-result v4

    .line 168
    sub-int/2addr v6, v4

    .line 169
    div-int/2addr v6, v0

    .line 170
    sub-int/2addr v3, v6

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 174
    move-result v4

    .line 175
    :goto_ae
    sub-int/2addr v4, v9

    .line 176
    add-int/2addr v1, v4

    .line 177
    goto :goto_ff

    .line 178
    :cond_b1
    iget v11, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 180
    if-eq v11, v4, :cond_c8

    .line 182
    if-ne v11, v0, :cond_be

    .line 184
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_be

    .line 190
    goto :goto_c8

    .line 191
    :cond_be
    mul-int/2addr v6, v0

    .line 192
    add-int/2addr v6, v8

    .line 193
    iget v8, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 195
    add-int/2addr v6, v8

    .line 196
    aget v4, v5, v4

    .line 198
    add-int/2addr v6, v4

    .line 199
    sub-int/2addr v3, v6

    .line 200
    goto :goto_cf

    .line 201
    :cond_c8
    :goto_c8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 204
    move-result v4

    .line 205
    sub-int/2addr v4, v8

    .line 206
    add-int/2addr v4, v3

    .line 207
    move v3, v4

    .line 208
    :goto_cf
    aget v4, v5, v2

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 213
    move-result v6

    .line 214
    sub-int/2addr v4, v6

    .line 215
    div-int/2addr v4, v0

    .line 216
    goto :goto_95

    .line 217
    :cond_d8
    iget v11, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mRtlMode:I

    .line 219
    if-eq v11, v4, :cond_ed

    .line 221
    if-ne v11, v0, :cond_e5

    .line 223
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_e5

    .line 229
    goto :goto_ed

    .line 230
    :cond_e5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 233
    move-result v4

    .line 234
    sub-int/2addr v4, v8

    .line 235
    add-int/2addr v4, v3

    .line 236
    move v3, v4

    .line 237
    goto :goto_f6

    .line 238
    :cond_ed
    :goto_ed
    mul-int/2addr v6, v0

    .line 239
    add-int/2addr v6, v8

    .line 240
    iget v8, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewWidth:I

    .line 242
    add-int/2addr v6, v8

    .line 243
    aget v4, v5, v4

    .line 245
    add-int/2addr v6, v4

    .line 246
    sub-int/2addr v3, v6

    .line 247
    :goto_f6
    aget v4, v5, v2

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 252
    move-result v6

    .line 253
    sub-int/2addr v4, v6

    .line 254
    div-int/2addr v4, v0

    .line 255
    goto :goto_95

    .line 256
    :goto_ff
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 267
    move-result-object v4

    .line 268
    iget-object v6, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 270
    sget v8, Lmiuix/popupwidget/R$id;->content_wrapper:I

    .line 272
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Landroid/widget/LinearLayout;

    .line 278
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    move-result-object v8

    .line 282
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 286
    iget v11, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mTextViewHeight:I

    .line 288
    mul-int/lit8 v12, v11, 0x5

    .line 290
    aget v2, v5, v2

    .line 292
    add-int/2addr v12, v2

    .line 293
    mul-int/2addr v9, v0

    .line 294
    add-int/2addr v12, v9

    .line 295
    mul-int/2addr v7, v0

    .line 296
    add-int/2addr v12, v7

    .line 297
    if-lt v4, v12, :cond_131

    .line 299
    mul-int/lit8 v2, v11, 0x2

    .line 301
    mul-int/2addr v11, v0

    .line 302
    invoke-virtual {v8, v10, v2, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 305
    goto :goto_139

    .line 306
    :cond_131
    sub-int/2addr v4, v11

    .line 307
    sub-int/2addr v4, v2

    .line 308
    sub-int/2addr v4, v9

    .line 309
    sub-int/2addr v4, v7

    .line 310
    div-int/2addr v4, v0

    .line 311
    invoke-virtual {v8, v10, v4, v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 314
    :goto_139
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const v0, 0x800033

    .line 320
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 322
    sub-int/2addr v3, v2

    .line 323
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 325
    sub-int/2addr v1, v2

    .line 326
    invoke-virtual {p0, p1, v0, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 329
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 331
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getAutoDismiss()Z

    .line 334
    move-result v0

    .line 335
    invoke-virtual {p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    .line 338
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 340
    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V

    .line 343
    return-void

    .line 344
    nop

    .line 345
    :pswitch_data_158
    .packed-switch 0x8
        :pswitch_9d  #00000008
        :pswitch_98  #00000009
        :pswitch_98  #0000000a
    .end packed-switch

    .line 355
    :pswitch_data_162
    .packed-switch 0x10
        :pswitch_81  #00000010
        :pswitch_7c  #00000011
        :pswitch_7c  #00000012
    .end packed-switch
.end method


# virtual methods
.method public onPrepareWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 4
    const/16 v0, 0x1388

    .line 6
    iput v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_content_view:I

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 33
    invoke-virtual {v0, v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->enableShowingAnimation(Z)V

    .line 36
    return-void
.end method

.method public setGuideText(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->addGuideTextView(Ljava/lang/String;)V

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 6
    return-void
.end method

.method public setShowDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    .line 3
    return-void
.end method

.method public setWrapContent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mUseWrapContent:Z

    .line 3
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mUseWrapContent:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->showWithWrapContent(Landroid/view/View;)V

    goto :goto_b

    .line 3
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    :goto_b
    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .registers 7

    .line 5
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setAutoDismiss(Z)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    if-eqz p4, :cond_12

    .line 7
    iget-object p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget-object p3, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    iget p4, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    int-to-long v0, p4

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    const-string p2, "2.0"

    .line 8
    invoke-static {p2}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_20

    .line 9
    :cond_1b
    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_20
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0, p2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method
