.class Lcom/miui/maml/data/ContentProviderBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field private mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

.field private mNoImageElement:Z

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string p2, "column"

    .line 3
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    const-string p2, "row"

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    return-void
.end method


# virtual methods
.method public getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 3
    if-nez v0, :cond_19

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 7
    if-nez v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    .line 17
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 19
    if-nez p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    iput-boolean p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lcom/miui/maml/elements/ImageScreenElement;

    .line 28
    return-object p1
.end method

.method public parseType(Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 7
    const-string v1, "blob.bitmap"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    const/16 p1, 0x3e9

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 21
    :goto_14
    return p1
.end method

.method public setNull(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 19
    :goto_12
    return-void
.end method
