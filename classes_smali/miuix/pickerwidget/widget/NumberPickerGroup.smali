.class public Lmiuix/pickerwidget/widget/NumberPickerGroup;
.super Landroid/widget/LinearLayout;
.source "NumberPickerGroup.java"


# static fields
.field private static final EXTRA_TEXT:Ljava/lang/String; = "    "


# instance fields
.field private final mValuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private isDayNumberPicker(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    sget v0, Lmiuix/pickerwidget/R$id;->day:I

    .line 7
    if-ne p1, v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 14

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_cf

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, p2

    .line 17
    move v6, v1

    .line 18
    move v2, v0

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    :goto_15
    if-ge v1, p1, :cond_47

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v7

    .line 28
    instance-of v8, v7, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 30
    if-eqz v8, :cond_3f

    .line 32
    check-cast v7, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 37
    move-result v8

    .line 38
    add-float/2addr v5, v8

    .line 39
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 42
    move-result v8

    .line 43
    cmpl-float v9, v8, v0

    .line 45
    if-lez v9, :cond_35

    .line 47
    add-float/2addr v3, v8

    .line 48
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    .line 51
    move-result v8

    .line 52
    int-to-float v8, v8

    .line 53
    add-float/2addr v4, v8

    .line 54
    :cond_35
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHighlight()I

    .line 57
    move-result v7

    .line 58
    int-to-float v7, v7

    .line 59
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    .line 62
    move-result v2

    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    move-result v7

    .line 68
    add-int/2addr v6, v7

    .line 69
    :goto_44
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_15

    .line 72
    :cond_47
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    .line 79
    const-string v7, "    "

    .line 81
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 84
    move-result v1

    .line 85
    const/high16 v7, 0x40000000  # 2.0f

    .line 87
    mul-float/2addr v3, v7

    .line 88
    mul-float/2addr v4, v7

    .line 89
    add-float/2addr v5, v3

    .line 90
    add-float/2addr v5, v1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    move-result v3

    .line 95
    sub-int/2addr v3, v6

    .line 96
    int-to-float v3, v3

    .line 97
    sub-float/2addr v3, v4

    .line 98
    div-float v4, v3, v5

    .line 100
    const/high16 v6, 0x3f800000  # 1.0f

    .line 102
    cmpg-float v6, v4, v6

    .line 104
    if-gez v6, :cond_6b

    .line 106
    mul-float/2addr v4, v2

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v4, v2

    .line 109
    :goto_6c
    cmpg-float v6, v4, v2

    .line 111
    if-gtz v6, :cond_cf

    .line 113
    :goto_70
    if-ge p2, p1, :cond_cf

    .line 115
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 118
    move-result-object v6

    .line 119
    instance-of v8, v6, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    if-eqz v8, :cond_cc

    .line 123
    move-object v8, v6

    .line 124
    check-cast v8, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 126
    float-to-int v9, v4

    .line 127
    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHighlight(I)V

    .line 130
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHint()I

    .line 133
    move-result v9

    .line 134
    int-to-float v9, v9

    .line 135
    mul-float/2addr v9, v4

    .line 136
    div-float/2addr v9, v2

    .line 137
    float-to-int v9, v9

    .line 138
    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHint(I)V

    .line 141
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 144
    move-result v9

    .line 145
    cmpl-float v9, v9, v0

    .line 147
    if-lez v9, :cond_9c

    .line 149
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    .line 152
    move-result v9

    .line 153
    mul-int/lit8 v9, v9, 0x2

    .line 155
    int-to-float v9, v9

    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    move v9, v0

    .line 158
    :goto_9d
    invoke-direct {p0, v8}, Lmiuix/pickerwidget/widget/NumberPickerGroup;->isDayNumberPicker(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_ad

    .line 164
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 167
    move-result v10

    .line 168
    add-float/2addr v10, v1

    .line 169
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 172
    move-result v8

    .line 173
    goto :goto_b5

    .line 174
    :cond_ad
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 177
    move-result v10

    .line 178
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 181
    move-result v8

    .line 182
    :goto_b5
    mul-float/2addr v8, v7

    .line 183
    add-float/2addr v8, v10

    .line 184
    mul-float/2addr v8, v3

    .line 185
    div-float/2addr v8, v5

    .line 186
    add-float/2addr v8, v9

    .line 187
    float-to-int v8, v8

    .line 188
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 191
    move-result v9

    .line 192
    const/high16 v10, 0x40000000  # 2.0f

    .line 194
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 197
    move-result v8

    .line 198
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 201
    move-result v9

    .line 202
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    .line 205
    :cond_cc
    add-int/lit8 p2, p2, 0x1

    .line 207
    goto :goto_70

    .line 208
    :cond_cf
    return-void
.end method
