.class public Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrDataBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    }
.end annotation


# instance fields
.field public mAttr:Ljava/lang/String;

.field private mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

.field public mData:Ljava/lang/String;

.field public mTarget:Ljava/lang/String;

.field public mVars:Lcom/miui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "target"

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    .line 12
    const-string v0, "attr"

    .line 14
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    .line 20
    const-string v0, "data"

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    .line 30
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 38
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_42

    .line 46
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_42

    .line 54
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_42

    .line 62
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 64
    if-eqz p1, :cond_42

    .line 66
    return-void

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    const-string p2, "invalid AttrDataBinder"

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method private createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    const-string v0, "text"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_16

    .line 17
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;

    .line 19
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 22
    return-object p1

    .line 23
    :cond_16
    const-string v0, "paras"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_60

    .line 31
    const-string v0, "params"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_27

    .line 39
    goto :goto_60

    .line 40
    :cond_27
    const-string v0, "name"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_35

    .line 48
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;

    .line 50
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 53
    return-object p1

    .line 54
    :cond_35
    const-string v0, "bitmap"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_43

    .line 62
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;

    .line 64
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 67
    return-object p1

    .line 68
    :cond_43
    const-string v0, "src"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_51

    .line 76
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;

    .line 78
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 81
    return-object p1

    .line 82
    :cond_51
    const-string v0, "srcid"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5f

    .line 90
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;

    .line 92
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 95
    return-object p1

    .line 96
    :cond_5f
    return-object v1

    .line 97
    :cond_60
    :goto_60
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;

    .line 99
    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    .line 102
    return-object p1
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ElementGroup;)Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->bind(Lcom/miui/maml/elements/ScreenElement;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :catch_f
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method
