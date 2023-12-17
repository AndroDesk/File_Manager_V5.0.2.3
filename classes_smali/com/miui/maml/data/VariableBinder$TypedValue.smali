.class public Lcom/miui/maml/data/VariableBinder$TypedValue;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedValue"
.end annotation


# static fields
.field public static final BITMAP:I = 0x7

.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final NUM_ARR:I = 0x8

.field public static final STRING:I = 0x2

.field public static final STR_ARR:I = 0x9

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    const-string v0, "name"

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "node is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initInner(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 11
    return-void
.end method


# virtual methods
.method public isArray()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    const/16 v1, 0x9

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public isNumber()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-lt v0, v1, :cond_a

    .line 6
    const/4 v1, 0x6

    .line 7
    if-gt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public parseType(Ljava/lang/String;)I
    .registers 4

    .line 1
    const-string v0, "string"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x2

    .line 10
    return p1

    .line 11
    :cond_a
    const-string v0, "double"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x6

    .line 18
    if-nez v0, :cond_64

    .line 20
    const-string v0, "number"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    goto :goto_64

    .line 29
    :cond_1c
    const-string v0, "float"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    const/4 p1, 0x5

    .line 38
    return p1

    .line 39
    :cond_26
    const-string v0, "int"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_62

    .line 47
    const-string v0, "integer"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_37

    .line 55
    goto :goto_62

    .line 56
    :cond_37
    const-string v0, "long"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_41

    .line 64
    const/4 p1, 0x4

    .line 65
    return p1

    .line 66
    :cond_41
    const-string v0, "bitmap"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4b

    .line 74
    const/4 p1, 0x7

    .line 75
    return p1

    .line 76
    :cond_4b
    const-string v0, "number[]"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_56

    .line 84
    const/16 p1, 0x8

    .line 86
    return p1

    .line 87
    :cond_56
    const-string v0, "string[]"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_61

    .line 95
    const/16 p1, 0x9

    .line 97
    return p1

    .line 98
    :cond_61
    return v1

    .line 99
    :cond_62
    :goto_62
    const/4 p1, 0x3

    .line 100
    return p1

    .line 101
    :cond_64
    :goto_64
    return v1
.end method
