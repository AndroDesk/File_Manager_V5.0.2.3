.class public Lcom/miui/maml/elements/DateTimeScreenElement;
.super Lcom/miui/maml/elements/TextScreenElement;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field private mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

.field private mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 13

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p2

    .line 8
    const-string v0, "value"

    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "timeZoneId"

    .line 24
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 34
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 36
    invoke-direct {v1, p0, v2, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 39
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 41
    const-string v1, "contentDescriptionFormat"

    .line 43
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-nez v1, :cond_4e

    .line 54
    iput-boolean v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 59
    move-result-object v3

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const-string v6, "contentDescriptionFormat"

    .line 66
    move-object v4, p1

    .line 67
    invoke-static/range {v3 .. v9}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 70
    move-result-object p1

    .line 71
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 73
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 76
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 78
    goto :goto_72

    .line 79
    :cond_4e
    const-string v1, "contentDescriptionFormatExp"

    .line 81
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_72

    .line 91
    iput-boolean v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 93
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 96
    move-result-object v3

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const-string v9, "contentDescriptionFormatExp"

    .line 103
    move-object v4, p1

    .line 104
    invoke-static/range {v3 .. v9}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 107
    move-result-object p1

    .line 108
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 110
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 113
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 115
    :cond_72
    :goto_72
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 117
    if-eqz p1, :cond_7b

    .line 119
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 121
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 124
    :cond_7b
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 16
    :cond_f
    return-void
.end method
