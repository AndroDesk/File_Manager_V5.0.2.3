.class public final Ln0/c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/c$b;,
        Ln0/c$a;,
        Ln0/c$c;,
        Ln0/c$d;
    }
.end annotation


# static fields
.field public static d:I


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln0/c;->b:I

    .line 7
    iput v0, p0, Ln0/c;->c:I

    .line 9
    iput-object p1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 11
    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8a

    sparse-switch p0, :sswitch_data_90

    packed-switch p0, :pswitch_data_e2

    packed-switch p0, :pswitch_data_f6

    packed-switch p0, :pswitch_data_108

    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :pswitch_15  #0x1020057
    const-string p0, "ACTION_DRAG_CANCEL"

    return-object p0

    :pswitch_18  #0x1020056
    const-string p0, "ACTION_DRAG_DROP"

    return-object p0

    :pswitch_1b  #0x1020055
    const-string p0, "ACTION_DRAG_START"

    return-object p0

    :pswitch_1e  #0x1020054
    const-string p0, "ACTION_IME_ENTER"

    return-object p0

    :pswitch_21  #0x102004a
    const-string p0, "ACTION_PRESS_AND_HOLD"

    return-object p0

    :pswitch_24  #0x1020049
    const-string p0, "ACTION_PAGE_RIGHT"

    return-object p0

    :pswitch_27  #0x1020048
    const-string p0, "ACTION_PAGE_LEFT"

    return-object p0

    :pswitch_2a  #0x1020047
    const-string p0, "ACTION_PAGE_DOWN"

    return-object p0

    :pswitch_2d  #0x1020046
    const-string p0, "ACTION_PAGE_UP"

    return-object p0

    :pswitch_30  #0x1020045
    const-string p0, "ACTION_HIDE_TOOLTIP"

    return-object p0

    :pswitch_33  #0x1020044
    const-string p0, "ACTION_SHOW_TOOLTIP"

    return-object p0

    :pswitch_36  #0x102003d
    const-string p0, "ACTION_SET_PROGRESS"

    return-object p0

    :pswitch_39  #0x102003c
    const-string p0, "ACTION_CONTEXT_CLICK"

    return-object p0

    :pswitch_3c  #0x102003b
    const-string p0, "ACTION_SCROLL_RIGHT"

    return-object p0

    :pswitch_3f  #0x102003a
    const-string p0, "ACTION_SCROLL_DOWN"

    return-object p0

    :pswitch_42  #0x1020039
    const-string p0, "ACTION_SCROLL_LEFT"

    return-object p0

    :pswitch_45  #0x1020038
    const-string p0, "ACTION_SCROLL_UP"

    return-object p0

    :pswitch_48  #0x1020037
    const-string p0, "ACTION_SCROLL_TO_POSITION"

    return-object p0

    :pswitch_4b  #0x1020036
    const-string p0, "ACTION_SHOW_ON_SCREEN"

    return-object p0

    :sswitch_4e
    const-string p0, "ACTION_MOVE_WINDOW"

    return-object p0

    :sswitch_51
    const-string p0, "ACTION_SET_TEXT"

    return-object p0

    :sswitch_54
    const-string p0, "ACTION_COLLAPSE"

    return-object p0

    :sswitch_57
    const-string p0, "ACTION_EXPAND"

    return-object p0

    :sswitch_5a
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_5d
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_60
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_63
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_66
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_69
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_6c
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_6f
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_72
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_75
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_78
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7b
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7e
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_81
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_84
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_87
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_8a
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_8d
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_90
    .sparse-switch
        0x4 -> :sswitch_87
        0x8 -> :sswitch_84
        0x10 -> :sswitch_81
        0x20 -> :sswitch_7e
        0x40 -> :sswitch_7b
        0x80 -> :sswitch_78
        0x100 -> :sswitch_75
        0x200 -> :sswitch_72
        0x400 -> :sswitch_6f
        0x800 -> :sswitch_6c
        0x1000 -> :sswitch_69
        0x2000 -> :sswitch_66
        0x4000 -> :sswitch_63
        0x8000 -> :sswitch_60
        0x10000 -> :sswitch_5d
        0x20000 -> :sswitch_5a
        0x40000 -> :sswitch_57
        0x80000 -> :sswitch_54
        0x200000 -> :sswitch_51
        0x1020042 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x1020036
        :pswitch_4b  #01020036
        :pswitch_48  #01020037
        :pswitch_45  #01020038
        :pswitch_42  #01020039
        :pswitch_3f  #0102003a
        :pswitch_3c  #0102003b
        :pswitch_39  #0102003c
        :pswitch_36  #0102003d
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1020044
        :pswitch_33  #01020044
        :pswitch_30  #01020045
        :pswitch_2d  #01020046
        :pswitch_2a  #01020047
        :pswitch_27  #01020048
        :pswitch_24  #01020049
        :pswitch_21  #0102004a
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x1020054
        :pswitch_1e  #01020054
        :pswitch_1b  #01020055
        :pswitch_18  #01020056
        :pswitch_15  #01020057
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6
    return-void
.end method

.method public final b(Ln0/c$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    iget-object p1, p1, Ln0/c$a;->a:Ljava/lang/Object;

    .line 5
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-static {v0}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1a

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    invoke-static {v1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    :cond_1a
    return-object v0
.end method

.method public final e(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Ln0/c;

    .line 11
    if-nez v2, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Ln0/c;

    .line 16
    iget-object v2, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 18
    if-nez v2, :cond_18

    .line 20
    iget-object v2, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    if-eqz v2, :cond_21

    .line 24
    return v1

    .line 25
    :cond_18
    iget-object v3, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_21

    .line 33
    return v1

    .line 34
    :cond_21
    iget v2, p0, Ln0/c;->c:I

    .line 36
    iget v3, p1, Ln0/c;->c:I

    .line 38
    if-eq v2, v3, :cond_28

    .line 40
    return v1

    .line 41
    :cond_28
    iget v2, p0, Ln0/c;->b:I

    .line 43
    iget p1, p1, Ln0/c;->b:I

    .line 45
    if-eq v2, p1, :cond_2f

    .line 47
    return v1

    .line 48
    :cond_2f
    return v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .registers 11

    .line 1
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 3
    invoke-virtual {p0, v0}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 13
    if-eqz v1, :cond_84

    .line 15
    invoke-virtual {p0, v0}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 21
    invoke-virtual {p0, v1}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 27
    invoke-virtual {p0, v2}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 33
    invoke-virtual {p0, v3}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Landroid/text/SpannableString;

    .line 39
    iget-object v5, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 41
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 44
    move-result-object v5

    .line 45
    iget-object v6, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 47
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-static {v5, v7, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    move-result v5

    .line 67
    if-ge v7, v5, :cond_83

    .line 69
    new-instance v5, Ln0/a;

    .line 71
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v6

    .line 81
    iget-object v8, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 83
    invoke-static {v8}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 86
    move-result-object v8

    .line 87
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 89
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 92
    move-result v8

    .line 93
    invoke-direct {v5, v6, p0, v8}, Ln0/a;-><init>(ILn0/c;I)V

    .line 96
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v6

    .line 106
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/Integer;

    .line 112
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 115
    move-result v8

    .line 116
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Ljava/lang/Integer;

    .line 122
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v9

    .line 126
    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 131
    goto :goto_3e

    .line 132
    :cond_83
    return-object v4

    .line 133
    :cond_84
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 135
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method

.method public final g(IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-static {v0}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result v3

    .line 16
    not-int v4, p1

    .line 17
    and-int/2addr v3, v4

    .line 18
    if-eqz p2, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move p1, v2

    .line 22
    :goto_15
    or-int/2addr p1, v3

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    :cond_19
    return-void
.end method

.method public final h(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final j(Ln0/c$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    iget-object p1, p1, Ln0/c$c;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 11
    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 14
    return-void
.end method

.method public final k(Ln0/c$d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    iget-object p1, p1, Ln0/c$d;->a:Ljava/lang/Object;

    .line 5
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 10
    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    invoke-static {v0, p1}, Lm0/h0;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    .line 12
    goto :goto_17

    .line 13
    :cond_c
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 15
    invoke-static {v0}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    :goto_17
    return-void
.end method

.method public final n(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 18
    invoke-virtual {p0, v1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "; boundsInParent: "

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 43
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "; boundsInScreen: "

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "; packageName: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "; className: "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 87
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "; text: "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ln0/c;->f()Ljava/lang/CharSequence;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "; contentDescription: "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 113
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "; viewId: "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 127
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "; uniqueId: "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Li0/a;->a()Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_97

    .line 145
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 147
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getUniqueId()Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    goto :goto_a3

    .line 152
    :cond_97
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 154
    invoke-static {v1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 157
    move-result-object v1

    .line 158
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY"

    .line 160
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    :goto_a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "; checkable: "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 174
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    .line 177
    move-result v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "; checked: "

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 188
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "; focusable: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 202
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 205
    move-result v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "; focused: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 216
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 219
    move-result v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "; selected: "

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 230
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 233
    move-result v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, "; clickable: "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 244
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 247
    move-result v1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "; longClickable: "

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 258
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 261
    move-result v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "; enabled: "

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 272
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 275
    move-result v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "; password: "

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 286
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 289
    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    const-string v2, "; scrollable: "

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v2, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 305
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 308
    move-result v2

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "; ["

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v1, p0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 326
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    .line 329
    move-result-object v1

    .line 330
    const/4 v2, 0x0

    .line 331
    if-eqz v1, :cond_168

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    .line 335
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 341
    move-result v4

    .line 342
    move v5, v2

    .line 343
    :goto_156
    if-ge v5, v4, :cond_16c

    .line 345
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    move-result-object v6

    .line 349
    new-instance v7, Ln0/c$a;

    .line 351
    const/4 v8, 0x0

    .line 352
    invoke-direct {v7, v6, v2, v8, v8}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 355
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 360
    goto :goto_156

    .line 361
    :cond_168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 364
    move-result-object v3

    .line 365
    :cond_16c
    :goto_16c
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 368
    move-result v1

    .line 369
    if-ge v2, v1, :cond_1a9

    .line 371
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    move-result-object v1

    .line 375
    check-cast v1, Ln0/c$a;

    .line 377
    invoke-virtual {v1}, Ln0/c$a;->a()I

    .line 380
    move-result v4

    .line 381
    invoke-static {v4}, Ln0/c;->d(I)Ljava/lang/String;

    .line 384
    move-result-object v4

    .line 385
    const-string v5, "ACTION_UNKNOWN"

    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    move-result v5

    .line 391
    if-eqz v5, :cond_196

    .line 393
    invoke-virtual {v1}, Ln0/c$a;->b()Ljava/lang/CharSequence;

    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_196

    .line 399
    invoke-virtual {v1}, Ln0/c$a;->b()Ljava/lang/CharSequence;

    .line 402
    move-result-object v1

    .line 403
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 406
    move-result-object v4

    .line 407
    :cond_196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 413
    move-result v1

    .line 414
    add-int/lit8 v1, v1, -0x1

    .line 416
    if-eq v2, v1, :cond_1a6

    .line 418
    const-string v1, ", "

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_1a6
    add-int/lit8 v2, v2, 0x1

    .line 425
    goto :goto_16c

    .line 426
    :cond_1a9
    const-string v1, "]"

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object v0

    .line 435
    return-object v0
.end method
