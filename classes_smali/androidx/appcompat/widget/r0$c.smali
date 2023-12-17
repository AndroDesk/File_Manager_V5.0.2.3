.class public final Landroidx/appcompat/widget/r0$c;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/app/a$d;

.field public b:Landroidx/appcompat/widget/AppCompatTextView;

.field public c:Landroidx/appcompat/widget/AppCompatImageView;

.field public d:Landroid/view/View;

.field public final synthetic e:Landroidx/appcompat/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r0;Landroid/content/Context;Landroidx/appcompat/app/a$d;Z)V
    .registers 9

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/r0$c;->e:Landroidx/appcompat/widget/r0;

    .line 3
    sget p1, Lh/a;->actionBarTabStyle:I

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 12
    const/4 v2, 0x0

    .line 13
    const v3, 0x10100d4

    .line 16
    aput v3, v1, v2

    .line 18
    iput-object p3, p0, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 20
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_35

    .line 30
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_2e

    .line 36
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_2e

    .line 42
    invoke-static {p2, p3}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object p2

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p2

    .line 51
    :goto_32
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    if-eqz p4, :cond_40

    .line 59
    const p1, 0x800013

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    :cond_40
    invoke-virtual {p0}, Landroidx/appcompat/widget/r0$c;->a()V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getCustomView()Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x8

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_32

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    if-eq v0, p0, :cond_1b

    .line 18
    if-eqz v0, :cond_18

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    :cond_1b
    iput-object v1, p0, Landroidx/appcompat/widget/r0$c;->d:Landroid/view/View;

    .line 30
    iget-object v0, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    if-eqz v0, :cond_d3

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    goto/16 :goto_d3

    .line 51
    :cond_32
    iget-object v1, p0, Landroidx/appcompat/widget/r0$c;->d:Landroid/view/View;

    .line 53
    if-eqz v1, :cond_3b

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    iput-object v3, p0, Landroidx/appcompat/widget/r0$c;->d:Landroid/view/View;

    .line 60
    :cond_3b
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getText()Ljava/lang/CharSequence;

    .line 67
    move-result-object v4

    .line 68
    const/16 v5, 0x10

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, -0x2

    .line 72
    if-eqz v1, :cond_70

    .line 74
    iget-object v8, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 76
    if-nez v8, :cond_65

    .line 78
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v9

    .line 84
    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    invoke-direct {v9, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 100
    iput-object v8, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 102
    :cond_65
    iget-object v8, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 104
    invoke-virtual {v8, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 109
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    goto :goto_7c

    .line 113
    :cond_70
    iget-object v1, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 115
    if-eqz v1, :cond_7c

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 122
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_7c
    :goto_7c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v1

    .line 129
    xor-int/lit8 v1, v1, 0x1

    .line 131
    if-eqz v1, :cond_b2

    .line 133
    iget-object v2, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    if-nez v2, :cond_a7

    .line 137
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    move-result-object v8

    .line 143
    sget v9, Lh/a;->actionBarTabTextStyle:I

    .line 145
    invoke-direct {v2, v8, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 150
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    iput-object v2, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    :cond_a7
    iget-object v2, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    goto :goto_be

    .line 179
    :cond_b2
    iget-object v4, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    if-eqz v4, :cond_be

    .line 183
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Landroidx/appcompat/widget/r0$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_be
    :goto_be
    iget-object v2, p0, Landroidx/appcompat/widget/r0$c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 193
    if-eqz v2, :cond_c9

    .line 195
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getContentDescription()Ljava/lang/CharSequence;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    :cond_c9
    if-eqz v1, :cond_cc

    .line 204
    goto :goto_d0

    .line 205
    :cond_cc
    invoke-virtual {v0}, Landroidx/appcompat/app/a$d;->getContentDescription()Ljava/lang/CharSequence;

    .line 208
    move-result-object v3

    .line 209
    :goto_d0
    invoke-static {p0, v3}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 212
    :cond_d3
    :goto_d3
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/r0$c;->e:Landroidx/appcompat/widget/r0;

    .line 6
    iget p1, p1, Landroidx/appcompat/widget/r0;->f:I

    .line 8
    if-lez p1, :cond_1c

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/r0$c;->e:Landroidx/appcompat/widget/r0;

    .line 16
    iget v0, v0, Landroidx/appcompat/widget/r0;->f:I

    .line 18
    if-le p1, v0, :cond_1c

    .line 20
    const/high16 p1, 0x40000000  # 2.0f

    .line 22
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    move-result p1

    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 29
    :cond_1c
    return-void
.end method

.method public final setSelected(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    if-eqz v0, :cond_14

    .line 15
    if-eqz p1, :cond_14

    .line 17
    const/4 p1, 0x4

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 21
    :cond_14
    return-void
.end method
