.class public Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 3
    invoke-static {p2, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-nez p2, :cond_58

    .line 10
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_56

    .line 20
    const/16 p2, 0x5b

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    move-result p4

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p2, v0, :cond_3e

    .line 33
    add-int/lit8 p4, p4, -0x1

    .line 35
    if-ge p2, p4, :cond_3e

    .line 37
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v0

    .line 41
    const/16 v1, 0x5d

    .line 43
    if-ne v0, v1, :cond_3e

    .line 45
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 47
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 50
    move-result-object v0

    .line 51
    add-int/lit8 v1, p2, 0x1

    .line 53
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    move-result-object p4

    .line 57
    invoke-static {v0, p4}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 60
    move-result-object p4

    .line 61
    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 63
    :cond_3e
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 65
    const/4 v0, 0x0

    .line 66
    if-nez p4, :cond_45

    .line 68
    move-object p2, p1

    .line 69
    goto :goto_49

    .line 70
    :cond_45
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    :goto_49
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 76
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 78
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 81
    move-result-object v1

    .line 82
    invoke-direct {p4, p2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 85
    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 87
    :cond_56
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 89
    :cond_58
    :try_start_58
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 91
    if-eqz p2, :cond_8a

    .line 93
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 95
    if-eqz p4, :cond_6c

    .line 97
    invoke-virtual {p4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 100
    move-result-wide v0

    .line 101
    double-to-int p4, v0

    .line 102
    invoke-virtual {p2, p4}, Lcom/miui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Landroid/graphics/Bitmap;

    .line 108
    goto :goto_72

    .line 109
    :cond_6c
    invoke-virtual {p2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Landroid/graphics/Bitmap;
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_72} :catch_74

    .line 115
    :goto_72
    move-object p3, p2

    .line 116
    goto :goto_8a

    .line 117
    :catch_74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string p4, "fail to cast as Bitmap from object: "

    .line 124
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    const-string p2, "BitmapProvider"

    .line 136
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_8a
    :goto_8a
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 141
    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 144
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 146
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 15
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, p1, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 27
    return-void
.end method
