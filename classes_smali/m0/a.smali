.class public Lm0/a;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/a$a;,
        Lm0/a$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final mBridge:Landroid/view/View$AccessibilityDelegate;

.field private final mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 6
    sput-object v0, Lm0/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lm0/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Lm0/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 4
    new-instance p1, Lm0/a$a;

    invoke-direct {p1, p0}, Lm0/a$a;-><init>(Lm0/a;)V

    iput-object p1, p0, Lm0/a;->mBridge:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ln0/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lc0/b;->tag_accessibility_actions:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 9
    if-nez p0, :cond_e

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    :cond_e
    return-object p0
.end method

.method private isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_33

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 11
    move-result-object p2

    .line 12
    instance-of v1, p2, Landroid/text/Spanned;

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    move-object v1, p2

    .line 17
    check-cast v1, Landroid/text/Spanned;

    .line 19
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 22
    move-result p2

    .line 23
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 25
    invoke-interface {v1, v0, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p2, 0x0

    .line 33
    :goto_20
    move v1, v0

    .line 34
    :goto_21
    if-eqz p2, :cond_33

    .line 36
    array-length v2, p2

    .line 37
    if-ge v1, v2, :cond_33

    .line 39
    aget-object v2, p2, v1

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_30

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_21

    .line 52
    :cond_33
    return v0
.end method

.method private performClickableSpanAction(ILandroid/view/View;)Z
    .registers 4

    .line 1
    sget v0, Lc0/b;->tag_accessibility_clickable_spans:I

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 9
    if-eqz v0, :cond_23

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 17
    if-eqz p1, :cond_23

    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/text/style/ClickableSpan;

    .line 25
    invoke-direct {p0, p1, p2}, Lm0/a;->isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_23

    .line 31
    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return p1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-static {v0, p1}, Lm0/a$b;->a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_e

    .line 9
    new-instance v0, Ln0/d;

    .line 11
    invoke-direct {v0, p1}, Ln0/d;-><init>(Landroid/view/accessibility/AccessibilityNodeProvider;)V

    .line 14
    return-object v0

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public getBridge()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/a;->mBridge:Landroid/view/View$AccessibilityDelegate;

    .line 3
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    .line 1
    invoke-static {p1}, Lm0/a;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_66

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ln0/c$a;

    .line 19
    invoke-virtual {v3}, Ln0/c$a;->a()I

    .line 22
    move-result v4

    .line 23
    if-ne v4, p2, :cond_63

    .line 25
    iget-object v0, v3, Ln0/c$a;->d:Ln0/g;

    .line 27
    if-eqz v0, :cond_66

    .line 29
    const/4 v0, 0x0

    .line 30
    iget-object v2, v3, Ln0/c$a;->c:Ljava/lang/Class;

    .line 32
    if-eqz v2, :cond_5b

    .line 34
    :try_start_21
    new-array v4, v1, [Ljava/lang/Class;

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 39
    move-result-object v2

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ln0/g$a;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_35

    .line 48
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 51
    goto :goto_5a

    .line 52
    :catch_33
    move-exception v0

    .line 53
    goto :goto_39

    .line 54
    :catch_35
    move-exception v1

    .line 55
    move-object v6, v1

    .line 56
    move-object v1, v0

    .line 57
    move-object v0, v6

    .line 58
    :goto_39
    iget-object v2, v3, Ln0/c$a;->c:Ljava/lang/Class;

    .line 60
    if-nez v2, :cond_40

    .line 62
    const-string v2, "null"

    .line 64
    goto :goto_44

    .line 65
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    :goto_44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v5, "Failed to execute command with argument class ViewCommandArgument: "

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    const-string v4, "A11yActionCompat"

    .line 88
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_5a
    move-object v0, v1

    .line 92
    :cond_5b
    iget-object v1, v3, Ln0/c$a;->d:Ln0/g;

    .line 94
    invoke-interface {v1, p1, v0}, Ln0/g;->perform(Landroid/view/View;Ln0/g$a;)Z

    .line 97
    move-result v0

    .line 98
    move v1, v0

    .line 99
    goto :goto_66

    .line 100
    :cond_63
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_6

    .line 103
    :cond_66
    :goto_66
    if-nez v1, :cond_6e

    .line 105
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 107
    invoke-static {v0, p1, p2, p3}, Lm0/a$b;->b(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 110
    move-result v1

    .line 111
    :cond_6e
    if-nez v1, :cond_81

    .line 113
    sget v0, Lc0/b;->accessibility_action_clickable_span:I

    .line 115
    if-ne p2, v0, :cond_81

    .line 117
    if-eqz p3, :cond_81

    .line 119
    const/4 p2, -0x1

    .line 120
    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 122
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 125
    move-result p2

    .line 126
    invoke-direct {p0, p2, p1}, Lm0/a;->performClickableSpanAction(ILandroid/view/View;)Z

    .line 129
    move-result v1

    .line 130
    :cond_81
    return v1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method
