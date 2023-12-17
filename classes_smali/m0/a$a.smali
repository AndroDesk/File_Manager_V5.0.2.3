.class public final Lm0/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/a;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lm0/a$a;->a:Lm0/a;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 3

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1}, Lm0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p1, Ln0/d;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-class v2, Ljava/lang/Boolean;

    new-instance v3, Ln0/c;

    invoke-direct {v3, v1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    sget v4, Lc0/b;->tag_screen_reader_focusable:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v5, v6, :cond_19

    move v5, v7

    goto :goto_1a

    :cond_19
    move v5, v8

    :goto_1a
    const/4 v9, 0x0

    if-eqz v5, :cond_26

    invoke-static/range {p1 .. p1}, Lm0/g0$m;->d(Landroid/view/View;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_32

    :cond_26
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_32

    :cond_31
    move-object v4, v9

    :goto_32
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3e

    move v4, v7

    goto :goto_3f

    :cond_3e
    move v4, v8

    :goto_3f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_47

    invoke-static {v1, v4}, Lmiuix/appcompat/app/f;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v3, v7, v4}, Ln0/c;->g(IZ)V

    :goto_4a
    sget v4, Lc0/b;->tag_accessibility_heading:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v6, :cond_52

    move v10, v7

    goto :goto_53

    :cond_52
    move v10, v8

    :goto_53
    if-eqz v10, :cond_5e

    invoke-static/range {p1 .. p1}, Lm0/g0$m;->c(Landroid/view/View;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6b

    :cond_5e
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move-object v2, v4

    goto :goto_6b

    :cond_6a
    move-object v2, v9

    :goto_6b
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_77

    move v2, v7

    goto :goto_78

    :cond_77
    move v2, v8

    :goto_78
    if-lt v5, v6, :cond_7e

    invoke-static {v1, v2}, Lmiuix/appcompat/app/f;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_82

    :cond_7e
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ln0/c;->g(IZ)V

    :goto_82
    sget v2, Lc0/b;->tag_accessibility_pane_title:I

    const-class v4, Ljava/lang/CharSequence;

    if-lt v5, v6, :cond_8a

    move v10, v7

    goto :goto_8b

    :cond_8a
    move v10, v8

    :goto_8b
    if-eqz v10, :cond_92

    invoke-static/range {p1 .. p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_9e

    :cond_92
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_9e

    :cond_9d
    move-object v2, v9

    :goto_9e
    check-cast v2, Ljava/lang/CharSequence;

    if-lt v5, v6, :cond_a6

    invoke-static {v1, v2}, Lmiuix/appcompat/app/f;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_af

    :cond_a6
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_af
    sget v2, Lc0/b;->tag_state_description:I

    const-class v4, Ljava/lang/CharSequence;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v6, v10, :cond_bb

    move v6, v7

    goto :goto_bc

    :cond_bb
    move v6, v8

    :goto_bc
    if-eqz v6, :cond_c3

    invoke-static/range {p1 .. p1}, Lm0/g0$o;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_cf

    :cond_c3
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    goto :goto_cf

    :cond_ce
    move-object v2, v9

    :goto_cf
    check-cast v2, Ljava/lang/CharSequence;

    sget v4, Li0/a;->a:I

    if-lt v5, v10, :cond_d6

    goto :goto_d7

    :cond_d6
    move v7, v8

    :goto_d7
    if-eqz v7, :cond_dd

    invoke-static {v1, v2}, Landroidx/core/content/a;->t(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_e6

    :cond_dd
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_e6
    move-object/from16 v2, p0

    iget-object v4, v2, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v4, v0, v3}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_20c

    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget v1, Lc0/b;->tag_accessibility_clickable_spans:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_15c

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v8

    :goto_129
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_145

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_142

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_142
    add-int/lit8 v12, v12, 0x1

    goto :goto_129

    :cond_145
    move v12, v8

    :goto_146
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_15c

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_146

    :cond_15c
    instance-of v1, v4, Landroid/text/Spanned;

    if-eqz v1, :cond_170

    move-object v1, v4

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v11, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v8, v9, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroid/text/style/ClickableSpan;

    :cond_170
    if-eqz v9, :cond_20c

    array-length v1, v9

    if-lez v1, :cond_20c

    iget-object v1, v3, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object v1

    sget v11, Lc0/b;->accessibility_action_clickable_span:I

    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v1, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget v1, Lc0/b;->tag_accessibility_clickable_spans:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_194

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_194
    move v1, v8

    :goto_195
    array-length v12, v9

    if-ge v1, v12, :cond_20c

    aget-object v12, v9, v1

    move v13, v8

    :goto_19b
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_1bb

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/style/ClickableSpan;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b8

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    goto :goto_1c1

    :cond_1b8
    add-int/lit8 v13, v13, 0x1

    goto :goto_19b

    :cond_1bb
    sget v12, Ln0/c;->d:I

    add-int/lit8 v13, v12, 0x1

    sput v13, Ln0/c;->d:I

    :goto_1c1
    new-instance v13, Ljava/lang/ref/WeakReference;

    aget-object v14, v9, v1

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v13, v9, v1

    move-object v14, v4

    check-cast v14, Landroid/text/Spanned;

    invoke-virtual {v3, v6}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v10}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    goto :goto_195

    :cond_20c
    invoke-static/range {p1 .. p1}, Lm0/a;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x0

    :goto_211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_223

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/c$a;

    invoke-virtual {v3, v1}, Ln0/c;->b(Ln0/c$a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_211

    :cond_223
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
