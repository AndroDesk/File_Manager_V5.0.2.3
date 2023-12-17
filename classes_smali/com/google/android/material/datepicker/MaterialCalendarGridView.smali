.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 6
    sget p1, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 7
    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 8
    :cond_1d
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .registers 4

    .line 1
    const/16 v0, 0x21

    .line 3
    if-ne p1, v0, :cond_10

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 16
    goto :goto_24

    .line 17
    :cond_10
    const/16 v0, 0x82

    .line 19
    if-ne p1, v0, :cond_20

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 37
    :goto_24
    return-void
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_24

    .line 4
    if-eqz p1, :cond_24

    .line 6
    if-eqz p2, :cond_24

    .line 8
    if-nez p3, :cond_a

    .line 10
    goto :goto_24

    .line 11
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide p1

    .line 19
    cmp-long p1, v1, p1

    .line 21
    if-gtz p1, :cond_24

    .line 23
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v1

    .line 31
    cmp-long p0, p1, v1

    .line 33
    if-gez p0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .registers 2

    .line 3
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 12
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 17
    move-result v4

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 25
    move-result v5

    .line 26
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_12d

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Ll0/c;

    .line 50
    iget-object v7, v6, Ll0/c;->a:Ljava/lang/Object;

    .line 52
    if-eqz v7, :cond_129

    .line 54
    iget-object v8, v6, Ll0/c;->b:Ljava/lang/Object;

    .line 56
    if-nez v8, :cond_3a

    .line 58
    goto :goto_25

    .line 59
    :cond_3a
    check-cast v7, Ljava/lang/Long;

    .line 61
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 64
    move-result-wide v7

    .line 65
    iget-object v6, v6, Ll0/c;->b:Ljava/lang/Object;

    .line 67
    check-cast v6, Ljava/lang/Long;

    .line 69
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object v6

    .line 77
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v11

    .line 81
    invoke-static {v4, v5, v6, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_57

    .line 87
    return-void

    .line 88
    :cond_57
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 91
    move-result-wide v11

    .line 92
    cmp-long v6, v7, v11

    .line 94
    const/4 v12, 0x5

    .line 95
    if-gez v6, :cond_77

    .line 97
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 100
    move-result v6

    .line 101
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_6c

    .line 107
    const/4 v7, 0x0

    .line 108
    goto :goto_8e

    .line 109
    :cond_6c
    add-int/lit8 v7, v6, -0x1

    .line 111
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 118
    move-result v7

    .line 119
    goto :goto_8e

    .line 120
    :cond_77
    iget-object v6, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 122
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    iget-object v6, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 127
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    .line 130
    move-result v6

    .line 131
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    .line 134
    move-result v6

    .line 135
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 138
    move-result-object v7

    .line 139
    invoke-static {v7}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    .line 142
    move-result v7

    .line 143
    :goto_8e
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 146
    move-result-wide v13

    .line 147
    cmp-long v8, v9, v13

    .line 149
    if-lez v8, :cond_b8

    .line 151
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 154
    move-result v8

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 158
    move-result v9

    .line 159
    add-int/lit8 v9, v9, -0x1

    .line 161
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 164
    move-result v8

    .line 165
    invoke-virtual {v1, v8}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_af

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 174
    move-result v9

    .line 175
    goto :goto_cf

    .line 176
    :cond_af
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 183
    move-result v9

    .line 184
    goto :goto_cf

    .line 185
    :cond_b8
    iget-object v8, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 187
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    iget-object v8, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 192
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    .line 195
    move-result v8

    .line 196
    invoke-virtual {v1, v8}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    .line 199
    move-result v8

    .line 200
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 203
    move-result-object v9

    .line 204
    invoke-static {v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    .line 207
    move-result v9

    .line 208
    :goto_cf
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 211
    move-result-wide v12

    .line 212
    long-to-int v10, v12

    .line 213
    invoke-virtual {v1, v8}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 216
    move-result-wide v12

    .line 217
    long-to-int v12, v12

    .line 218
    :goto_d9
    if-gt v10, v12, :cond_129

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 223
    move-result v13

    .line 224
    mul-int/2addr v13, v10

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 228
    move-result v14

    .line 229
    add-int/2addr v14, v13

    .line 230
    add-int/lit8 v14, v14, -0x1

    .line 232
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 235
    move-result-object v15

    .line 236
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 239
    move-result v16

    .line 240
    iget-object v11, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 242
    invoke-virtual {v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    .line 245
    move-result v11

    .line 246
    add-int v11, v16, v11

    .line 248
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 251
    move-result v15

    .line 252
    iget-object v0, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 254
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    .line 257
    move-result v0

    .line 258
    sub-int/2addr v15, v0

    .line 259
    if-le v13, v6, :cond_106

    .line 261
    const/4 v0, 0x0

    .line 262
    goto :goto_107

    .line 263
    :cond_106
    move v0, v7

    .line 264
    :goto_107
    if-le v8, v14, :cond_10e

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 269
    move-result v13

    .line 270
    goto :goto_10f

    .line 271
    :cond_10e
    move v13, v9

    .line 272
    :goto_10f
    int-to-float v0, v0

    .line 273
    int-to-float v11, v11

    .line 274
    int-to-float v13, v13

    .line 275
    int-to-float v14, v15

    .line 276
    iget-object v15, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    .line 278
    move-object/from16 v17, p1

    .line 280
    move/from16 v18, v0

    .line 282
    move/from16 v19, v11

    .line 284
    move/from16 v20, v13

    .line 286
    move/from16 v21, v14

    .line 288
    move-object/from16 v22, v15

    .line 290
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    add-int/lit8 v10, v10, 0x1

    .line 295
    move-object/from16 v0, p0

    .line 297
    goto :goto_d9

    .line 298
    :cond_129
    move-object/from16 v0, p0

    .line 300
    goto/16 :goto_25

    .line 302
    :cond_12d
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 11
    :goto_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 12
    move-result p2

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p2, v1, :cond_30

    .line 17
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 28
    move-result v1

    .line 29
    if-lt p2, v1, :cond_1f

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    const/16 p2, 0x13

    .line 34
    if-ne p2, p1, :cond_2f

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 47
    return v2

    .line 48
    :cond_2f
    return v0

    .line 49
    :cond_30
    :goto_30
    return v2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    .line 2
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_8

    .line 3
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 4
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelection(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_16

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 18
    move-result p1

    .line 19
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 26
    :goto_19
    return-void
.end method
